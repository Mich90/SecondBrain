---
tags:
  - grouper
  - architecture
  - performance
---

# Performance Design

Performance is critical — the Grouper processes millions of cases in certification batches. Every design decision prioritizes zero-allocation hot paths and cache-friendly data structures.

## Core Patterns

### 1. Parse-Once, Freeze, Share
All definition data is parsed once at startup, converted to `Frozen*` collections (.NET 8), and shared immutably. No per-case parsing or dictionary creation occurs at runtime.

### 2. Ordinal-Based Access
Both variables and tables use integer ordinals as runtime identifiers. Name-to-ordinal resolution happens during DSL compilation. At grouping time, all access is direct array indexing — O(1) with no hashing.

### 3. Span-Based Parsing (No Regex)
Every parser operates on `ReadOnlySpan<char>` with a `ref int position` cursor pattern:
- `SpecIniParser` — INI file parsing
- `VariableDefinitionParser` — variable definition blocks
- `TableDefinitionParser` — table definition sections
- `CodeNormalizer` — diagnosis/procedure code normalization
- `CaseInputParser` — certification input lines

Benefits: No intermediate string allocations, no regex overhead, `stackalloc` for temporary buffers.

### 4. Struct Value Types for Hot-Path Data
`Variable`, `CaseCode`, `CodeFlag`, `CodeEntry`, `DepartmentEntry`, `ValidityBitmask` are all `struct` types with `[StructLayout(LayoutKind.Auto)]`:
- Contiguous memory layout in arrays (cache-friendly iteration)
- No per-instance GC overhead
- `ref` return semantics for in-place mutation

### 5. FrozenDictionary / FrozenSet (.NET 8)
Used for all read-only lookup structures. These pre-compute hash layouts at creation time, yielding faster lookups than standard `Dictionary`/`HashSet` for read-heavy scenarios.

### 6. ArrayPool for Per-Case Memory
`CodeStore` and `ValidityBitmask` use `ArrayPool<T>.Shared` to rent/return arrays, avoiding GC allocations in the per-case hot path. Reset uses `Array.Clear` + counter reset rather than re-renting.

### 7. String Interning
Applied to section names, variable names, table names, and code values. Reduces memory footprint (identical strings share one instance) and enables fast reference equality.

### 8. Batch Reset via Array.Copy
`VariableRegistry` pre-computes a `_defaults` array at load time. `VariableStore.ResetForNewCase()` copies it wholesale — a single `memcpy` instead of per-variable initialization.

## Domain-Specific Optimizations

### Hardware-Accelerated Bitmask Operations
Procedure validity uses `ulong[]` bitmasks with `BitOperations.PopCount` (CPU POPCNT instruction):
- **DURATION(ANY)**: `PopCount(OR(bitmasks) & ~absenceMask)`
- **DURATION(ALL)**: `PopCount(AND(bitmasks) & ~absenceMask)`
- Converts O(days × procedures) iteration to O(words) bitwise operations

### Pre-Computed Exponential Table for PCCL
PCCL formula requires `e^(-α*i)` per diagnosis. Pre-computed `ExpTable[128]` at static init covers >99.9% of cases. Avoids `Math.Exp` per diagnosis per case.

### Insertion Sort for Small Arrays
Departments (typically 1-5), candidates (typically ≤16), and small blocks use insertion sort — lower overhead than `Array.Sort` for small N.

### State-Based Exception Flow
`ExecutionState` enum (Normal/Exception/Return) replaces C# exceptions in the hot path. Branch-predictable (False 99%+, near-zero cost). ~100x faster than real exceptions for error cases.

### CodeFlag as Packed ushort
3-digit code flags packed into a single `ushort` using bit shifts. All accessors use `[MethodImpl(AggressiveInlining)]`. Boolean properties (`IsValid`, `IsIgnored`, etc.) provide zero-overhead semantic access.

### Variable as Discriminated Union
`Variable` struct uses dual fields (`int IntValue` + `string? StringValue`) instead of boxing through `object`. Bitfield `byte _flags` packs validity/usage/empty into a single byte.

### Thread-Local Reuse in I/O
`CaseInputParser` uses `[ThreadStatic] CaseData`, `CaseOutputWriter` uses `[ThreadStatic] StringBuilder`. One allocation per thread, reused across all cases. Enables lock-free parallel batch processing.

## Measured Performance

| Metric | Value |
|--------|-------|
| Target throughput | ~200 µs/case average |
| DRG 2025/2024 measured | ~1030 µs/case |
| Certification batch (50K+ cases) | < 10 seconds |
| Per-case heap allocation | Near-zero (ArrayPool + struct types) |
| Startup initialization | Lazy per grouper key, paid once |

## Related Pages

- [[System Architecture]] — Where these patterns are applied
- [[Key Architecture Decisions]] — Trade-off rationale
