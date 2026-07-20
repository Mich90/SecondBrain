---
tags:
  - grouper
  - architecture
---

# System Architecture

## Two-Phase Lifecycle

The Grouper has two distinct execution phases:

### 1. Startup / Load Phase (once per spec version)

Produces **immutable, shared** data structures reused across all grouping calls:

- `SpecConfiguration` — file map, section categories, pre-loaded file contents from `spec.ini`
- `VariableDefinition[]` + `VariableRegistry` — variable metadata, name-to-ordinal map, pre-built defaults array
- `TableDefinition[]` + `TableRegistry` — table metadata, code lookup sets (FrozenSet), name-to-ordinal map
- `LogicRegistry` — parsed AST of all logic functions (FrozenDictionary)
- `CclDefinition[]` — CCL level tables for PCCL calculation
- `CcExclusionTable` — CC exclusion rules (FrozenDictionary + binary search)
- `DailyFeeMappingTable` — PEPP supplementary fee mappings

All startup outputs are **immutable** and use `FrozenDictionary`/`FrozenSet` for optimized read-heavy workloads.

### 2. Per-Case Runtime Phase (once per patient case)

Produces **mutable, per-case** data structures reset between cases:

- `VariableStore` — flat `Variable[]` array, reset via `Array.Copy` from pre-built defaults
- `CodeStore` — `ArrayPool`-backed arrays for diagnoses, procedures, departments
- `FlagManager` — transactional flagging with nested transaction stack
- `PcclEngine` — ADRG-level cached PCCL computation
- `ProcedureValidityContext` — pre-computed bitmask-based validity
- `Interpreter` — DSL execution state machine

```
┌─────────────────────────────────────────────────────────────┐
│                     STARTUP (once)                          │
│                                                             │
│  spec.ini → SpecIniParser → SpecLoader → SpecConfiguration  │
│                                                │            │
│     VariableDefinitionParser → VariableRegistry             │
│     TableDefinitionParser    → TableRegistry                │
│     CclDefinitionParser      → CclDefinition[]              │
│     Tokenizer → Parser       → LogicRegistry (AST)          │
│                                                             │
│  All outputs are immutable / FrozenDictionary / FrozenSet   │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                 PER-CASE RUNTIME (N times)                   │
│                                                             │
│  VariableStore   ── Variable[] (reset via Array.Copy)       │
│  CodeStore       ── CaseCode[] (ArrayPool, reset via Clear) │
│  FlagManager     ── Transactional used-flagging             │
│  PcclEngine      ── ADRG-cached CCL/PCCL                   │
│  Interpreter     ── DSL tree-walking execution              │
│                                                             │
│  Ordinal-based access only — no string lookups at runtime   │
└─────────────────────────────────────────────────────────────┘
```

## Per-Case Execution Flow

```
GroupingEngine.Group(CaseData)
  │
  ├─ ResetForNewCase()           — clear all per-case state
  ├─ LoadCaseIntoStores()        — variables, diagnoses, procedures, departments
  ├─ ClassifyProcedureOrStatus() — OR/NonOR/SRG classification via GENOR table
  ├─ VariableStore.ValidateAll() — type-based validation + clamping
  │
  ├─ Interpreter.Execute(entryFunction)
  │    ├─ EDITS section (validation, error DRG assignment)
  │    ├─ STARTGROUPFLAGGING → activates FlagManager
  │    ├─ MAXLOCATIONDURATION → location-based department evaluation
  │    ├─ MDC routing via trampoline redirect loop
  │    ├─ LG (Leistungsgruppen) evaluation
  │    └─ UPDATELOCATION → procedure-based location override
  │
  ├─ GroupingResult.PopulateFromStores() — read variables + code flags
  └─ ResultCollector.Collect()          — extract DRG/MDC/PCCL/GST/GPDX
```

## Namespace Dependency Map

```
Grouperkern.Spec        → (no internal dependencies)
Grouperkern.Variables   → (no internal dependencies)
Grouperkern.Tables      → (no internal dependencies)
Grouperkern.Dsl         → Variables, Tables
Grouperkern.Departments → (no internal dependencies)
Grouperkern.Procedures  → Tables, Departments
Grouperkern.Ccl         → Tables
Grouperkern.DailyFees   → Departments, Procedures
Grouperkern.Flags       → Tables, Variables
Grouperkern.IO          → Variables, Tables, Flags
Grouperkern.Execution   → All above (orchestration layer)
```

## Thread-Safety Model

```
              ┌──────────────────────────────────────┐
              │          IGrouper instance            │
              │     (one per registered year)         │
              ├──────────────────────────────────────┤
 immutable    │  VariableRegistry, TableRegistry,     │  shared by
 shared state │  LogicRegistry, CclDefinition[],      │  all threads
              │  CcExclusionTable, DailyFeeMapping,   │
              │  ResultCollector                       │
              ├──────────────────────────────────────┤
 per-call     │  ConcurrentBag<GroupingContext>       │  rented per
 mutable      │  ┌────────────────────────────────┐  │  call, returned
              │  │ GroupingContext                 │  │  on completion
              │  │  - VariableStore               │  │
              │  │  - CodeStore                   │  │
              │  │  - FlagManager                 │  │
              │  │  - PcclEngine                  │  │
              │  │  - ProcedureValidityContext     │  │
              │  │  - Interpreter (state machine)  │  │
              │  └────────────────────────────────┘  │
              ├──────────────────────────────────────┤
 per-call     │  new GroupingResult()                │  returned to
 output       │                                      │  caller
              └──────────────────────────────────────┘
```

- `ConcurrentBag` pools `GroupingContext` instances — lock-free in common case
- Pool grows to active concurrency level, never shrinks
- Failed calls still return context to pool (`try/finally`)
- Each `GroupingResult` is a fresh allocation (mandatory for thread safety, gen-0 GC)

## Related Pages

- [[DSL Engine]] — The core execution engine
- [[Performance Design]] — Why these patterns exist
- [[Grouperkern]] — Component details
- [[Year Projects]] — Thread-safe grouper registration
