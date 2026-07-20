---
tags:
  - grouper
  - component
  - core
---

# Grouperkern (Core Library)

The year-independent core library. Pure .NET 8 class library with **zero external dependencies**. Contains all runtime logic that does not change between DRG/PEPP catalogue years.

## Subsystems

### Spec (`Grouperkern.Spec`)
Parses `spec.ini` and loads all specification files at startup.
- `SpecLoader` — orchestrates parsing, categorization, file loading
- `SpecIniParser` — span-based INI parser
- `SpecConfiguration` — immutable result with FrozenDictionary file maps
- All files loaded eagerly (~2MB) to eliminate lock contention during parallel grouping

### Variables (`Grouperkern.Variables`)
Variable definitions and per-case runtime store.
- `VariableDefinition` — immutable metadata (name, type, min/max, default, error action)
- `VariableRegistry` — FrozenDictionary name-to-ordinal map + pre-built defaults array
- `VariableStore` — flat `Variable[]` indexed by ordinal, batch-reset via `Array.Copy`
- `Variable` — mutable struct with dual fields (int/string), bitfield flags
- Types: Range, Enum, Date, TimeStamp, String
- Validation: type-specific in single pass; Range variables without ErrorAction are clamped to [MinVal, MaxVal]

### Tables (`Grouperkern.Tables`)
Table definitions and per-case code storage.
- `TableDefinition` — immutable with `FrozenSet<string>` for O(1) membership checks
- `TableRegistry` — FrozenDictionary name-to-ordinal
- `CodeStore` — ArrayPool-backed per-case arrays for diagnoses, procedures, departments
- `CaseCode` — unified struct for all code types (diagnoses, procedures, departments)
- `CodeFlag` — 3-digit flag packed into ushort (Usage, Validity, TypeSpecific)
- `CodeNormalizer` — span-based code normalization (strips separators, suffixes)

### DSL (`Grouperkern.Dsl`)
The domain-specific language engine. See [[DSL Engine]] for full details.
- Tokenizer → Parser → AST → Interpreter pipeline
- Three-valued logic (TriBool) with transactional flagging
- Table conditions, OPD, math/date functions
- MDC trampoline for DRG stack safety

### Departments (`Grouperkern.Departments`)
8-rule FAB chain building algorithm (Spec Chapter 5.5.1–5.5.3).
- `DepartmentChainBuilder` — static builder producing gapless, overlap-free chain
- `DepartmentEntry` — struct with original + calculated timestamps (minutes-since-epoch)
- `AbsenceDayCalculator` — pre-computed `bool[]` for O(1) absence day lookup
- `MinuteTimestamp` — integer-based timestamp arithmetic (minutes since 2000-01-01)
- Pseudo types: None, Ignored (0000), Readmission (0001), ReTransfer (0002), Absence (0003/0004)

### Procedures (`Grouperkern.Procedures`)
Time-based procedure validity, conflict resolution, and bitmask-based duration.
- `ProcedureValidityCalculator` — 5-phase algorithm: attributes → raw ranges → TreatmentType conflicts → Group conflicts → bitmask construction
- `ConflictResolver` — static class for TreatmentType and Group conflicts per ValiditySet
- `ProcedureValidityContext` — bitmask-based DURATION, day-iterating DAYS, per-day DAYTABLESCORE
- `ValidityBitmask` — `ulong[]` with hardware PopCount, ArrayPool-backed

### CCL/PCCL (`Grouperkern.Ccl`)
Per-diagnosis CC level assignment and PCCL formula.
- `CclCalculator` — Step 1: CCL assignment per diagnosis per ADRG
- `ExclusionProcessor` — Step 2: Streichverfahren (weighted exclusion)
- `PcclCalculator` — Step 3: PCCL formula with pre-computed exp table
- `PcclEngine` — orchestrator with ADRG-level caching
- `CcExclusionTable` — FrozenDictionary + binary search over sorted ranges

### Daily Fees (`Grouperkern.DailyFees`)
PEPP supplementary daily fees (Ergänzende Tagesentgelte).
- `DailyFeeMappingTable` — FrozenDictionary by OPS code
- `DailyFeeEngine` — maps valid procedures to ET codes, applies deduplication
- Zero-cost disable for aG-DRG (no `[DailyRemuneration]` section)

### Flags (`Grouperkern.Flags`)
Transactional flag management for variables and codes.
- `FlagManager` — activation gate, transaction stack, snapshot/restore
- `FlagTransaction` — lightweight struct with bitfield variable tracking + code flag arrays
- Two code paths: transactional (table conditions, OPD) vs direct (DURATION, CODECOUNT)
- Additive code usage via bitwise OR: 1 (grouping) + 2 (OPD) + 4 (DAYTABLESCORE)

### I/O (`Grouperkern.IO`)
Certification format parsing and serialization.
- `CaseInputParser` — span-based, zero-allocation hot path
- `CaseOutputWriter` — StringBuilder-based with thread-local reuse
- `CaseData` — mutable model, thread-local reusable
- `GroupingResult` — post-grouping output model with all flags

### Execution (`Grouperkern.Execution`)
Top-level orchestration and public API.
- `GroupingEngine` — implements `IGrouperEngine`, orchestrates the per-case flow
- `GroupingContext` — per-case mutable state container (created via factory, pooled)
- `ResultCollector` — reads 5 result variables by ordinal (DRG, MDC, PCCL, GST, GPDX)
- `YearGrouperBase` — abstract base class with thread-safe execution path
- `GrouperRegistry` — `Dictionary<string, Lazy<IGrouper>>` with assembly discovery
- `ExecutionState` — enum for state-based exception flow (Normal, Exception, Return)

## Related Pages

- [[System Architecture]] — How Grouperkern fits in the overall design
- [[DSL Engine]] — Deep dive into the DSL subsystem
- [[DefinitionTranslator]] — Generates code that uses Grouperkern
