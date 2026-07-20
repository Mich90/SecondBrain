---
tags:
  - grouper
  - decisions
  - architecture
---

# Key Architecture Decisions

## ADR-01: Pure .NET 8 Library with Zero External Dependencies

**Context**: The Grouperkern must be embeddable in arbitrary services.
**Decision**: No external NuGet packages. All functionality built on BCL types.
**Rationale**: Eliminates version conflicts, reduces deployment complexity, ensures the library can be referenced from any .NET 8 host.

## ADR-02: Ordinal-Based Runtime Access

**Context**: Variables and tables are referenced millions of times per certification batch.
**Decision**: All names resolved to integer ordinals during DSL compilation. Runtime access is `array[ordinal]` — O(1) with no hashing.
**Rationale**: `FrozenDictionary` name lookups are O(1) but still ~10x slower than array indexing. The extra indirection at compile time eliminates all runtime string operations.

## ADR-03: FrozenDictionary/FrozenSet for Read-Only Data

**Context**: All definition data (tables, variables, registries) is immutable after startup.
**Decision**: Use .NET 8 `Frozen*` collections everywhere.
**Rationale**: Pre-computed hash layouts yield faster lookups than standard dictionaries for read-heavy workloads. Thread-safe by nature (immutable).

## ADR-04: Struct Types for Hot-Path Data

**Context**: `Variable`, `CaseCode`, `CodeFlag` are accessed millions of times per batch.
**Decision**: All are `struct` with `[StructLayout(LayoutKind.Auto)]`.
**Rationale**: Contiguous array layout, no per-instance GC pressure, cache-friendly iteration. `ref` returns enable in-place mutation without copying.

## ADR-05: ArrayPool Instead of Per-Case Allocation

**Context**: Each case needs temporary arrays for codes, bitmasks, transactions.
**Decision**: Rent from `ArrayPool<T>.Shared`, return on completion/dispose.
**Rationale**: Eliminates per-case heap allocations in the hot path. Reset via `Array.Clear` is cheaper than GC collection.

## ADR-06: State-Based Exception Flow (Not C# Exceptions)

**Context**: ErrorAction and THROW can trigger thousands of times across certification batches.
**Decision**: `ExecutionState` enum (Normal/Exception/Return) checked after each statement instead of using C# `try/catch`.
**Rationale**: C# exceptions cost ~10µs each (allocation + stack unwind). State check is branch-predictable (False 99%+) — near-zero cost. ~100x faster for error cases.

## ADR-07: ConcurrentBag for Context Pooling

**Context**: Thread-safe grouping requires per-call mutable state (GroupingContext).
**Decision**: `ConcurrentBag<GroupingContext>` pool — rent per call, return on completion.
**Alternatives considered**: `ObjectPool<T>` (Microsoft.Extensions), `Channel<T>`. ConcurrentBag was chosen for symmetric rent/return pattern with `Parallel.ForEach`.
**Rationale**: Lock-free in common case, bounded by concurrency level, survives `async` and parallel workloads.

## ADR-08: Abstract Base Class for Year Groupers

**Context**: Thread-safe execution path is identical across all 31 year projects.
**Decision**: `YearGrouperBase` abstract class instead of generating the execution path per year.
**Alternatives considered**: Interface-only (would duplicate ~80 lines per year), source generators (overkill for 31 entries).
**Rationale**: Single place for thread-safety logic. Year projects stay tiny (5 override methods).

## ADR-09: Assembly Attribute for Grouper Discovery

**Context**: Consumers need to discover available groupers without hard-coding references.
**Decision**: `[assembly: GrouperAssembly(typeof(GrouperRegistrar))]` + `GrouperRegistry.AddFromDirectory()`.
**Alternatives considered**: Hand-maintained factory (fragile), source generators (overkill), MEF (heavy).
**Rationale**: Zero hand-maintained lists. Works for both project-referenced and dropped-DLL deployments.

## ADR-10: Lazy Initialization per Grouper

**Context**: Initialization (parse spec, build registries, parse AST) is expensive.
**Decision**: `Lazy<IGrouper>` with `ExecutionAndPublication` thread-safety mode.
**Rationale**: Only groupers actually used by the consumer pay the init cost. First-touch initializes once, concurrent callers block on the same Lazy.

## ADR-11: Selective MDC Trampoline (Not Global)

**Context**: DRG MDC re-routing chains can overflow the .NET 1MB thread stack.
**Decision**: Trampoline only for MDC partition tail calls. All other tail calls remain direct.
**Alternatives considered**: Global trampoline (10x regression on hot-path helpers), stack size increase (deployment hack).
**Rationale**: ~800 non-MDC calls/case at 1ns each vs ~25 MDC calls at 15ns each = negligible overhead (~375ns/case).

## ADR-12: Transactional Flagging in Generated Code

**Context**: C# `&&`/`||` operators bypass the FlagManager's transaction mechanism.
**Decision**: Generated code emits statement-based `BeginTransaction`/`CommitTransaction`/`DiscardTransaction` for AND/OR conditions in IF statements.
**Rationale**: Correct spec compliance. Before `STARTUSEDFLAGGING`, transaction calls check `_isActive` and return immediately — effectively zero overhead.

## ADR-13: Per-Call GroupingResult Allocation

**Context**: Thread-safe grouping means multiple callers hold results simultaneously.
**Decision**: Fresh `GroupingResult` per call instead of reusing a shared instance.
**Alternatives considered**: Result pooling (premature optimization, added complexity).
**Rationale**: Result is short-lived (gen-0 GC handles it). Contains a handful of pre-sized arrays (≤64 + 128 + 16 + 32).

## ADR-14: Bitmask-Based Procedure Duration

**Context**: DURATION evaluation was the hottest path in the per-case computation.
**Decision**: Pre-compute validity into `ulong[]` bitmasks. DURATION = `PopCount(bitwise-op & ~absenceMask)`.
**Rationale**: Converts O(days × procedures) iteration to O(words) bitwise operations with hardware POPCNT. ArrayPool-backed for zero allocation.

## ADR-15: Range Variable Clamping Without ErrorAction

**Context**: HMV (ventilation hours) value 14,612 exceeded MaxVal=9999, causing wrong DRG.
**Decision**: Range variables without ErrorAction are clamped to [MinVal, MaxVal] during validation (kept valid). Variables WITH ErrorAction are still marked invalid.
**Rationale**: Matches reference grouper behavior. The EDITS logic `IF NOT(VALID(HMV)) THEN HMV:=0` should not fire for values that are merely out of range.

## Related Pages

- [[Performance Design]] — Performance rationale for many decisions
- [[System Architecture]] — Where decisions are implemented
- [[Bug Fix Patterns]] — Decisions arising from certification debugging
