---
tags:
  - grouper
  - component
  - codegen
---

# DefinitionTranslator

A console application that transpiles InEK DSL specification files into C# code for year-specific projects. Run once per year project to generate all logic files.

## Purpose

The InEK provides specification files per DRG/PEPP catalogue year containing:
- Variable definitions
- Table definitions with code sets
- Logic functions written in the DSL (Metasprache)
- CCL level definitions
- Daily fee mappings (PEPP)

The DefinitionTranslator parses these files and generates C# code that, when compiled, produces a self-contained grouper DLL for that year.

## Usage

```bash
dotnet run --project Grouper\DefinitionTranslator -- --spec-root Specifications --year-id DRG_2026_2026 --no-scaffold
```

**Important**: When onboarding new year projects, **always regenerate with the latest DefinitionTranslator** to pick up code-gen bug fixes (e.g., `EnterNotContext`/`ExitNotContext` pairs for NOT expressions).

## Code Generation Pipeline

The `TranslationPipeline` orchestrates emission in order:

1. **Scaffold** — project file, namespace declarations (optional with `--no-scaffold`)
2. **Variables** — `VariableOrdinals.g.cs` with `const int` per variable
3. **Tables** — table registration code
4. **Logic Functions** — one `.g.cs` file per logic function
5. **Logic Dispatcher** — `LogicDispatcher.g.cs` (O(1) switch for trampoline)
6. **Main Logic** — `MainLogic.g.cs` with entry point + redirect loop
7. **Year Grouper** — `YearGrouper_<ID>.g.cs` extending `YearGrouperBase`
8. **Grouper Registrar** — `GrouperRegistrar.g.cs` with `[assembly: GrouperAssembly]`

## Key Emitters

### `LogicFunctionEmitter`
- Emits one C# static class per logic function
- Inlines simple comparisons as native C# (e.g., `HMV > 999`)
- Complex conditions delegate to `ctx.Interpreter.EvaluateBool(node)`
- **Transactional flagging**: AND/OR conditions emit `BeginTransaction`/`CommitTransaction`/`DiscardTransaction` calls matching the interpreter's TriBool behavior
- **MDC trampoline**: MDC partition tail calls emit `ctx.Interpreter.Redirect(ordinal)` instead of direct method calls
- **NOT suppression**: Emits `Deactivate()`/`Activate()` guards around NOT inner expressions
- **UPDATELOCATION**: Suppressed in entry function (emitted post-redirect-loop by MainEntryEmitter)

### `MainEntryEmitter`
- Generates `MainLogic.Execute(ctx)` with:
  - Entry function call
  - Trampoline `while` loop for MDC redirects
  - `ExecuteUpdateLocation()` after the redirect loop (when AST contains UpdateLocationStatement)

### `YearGrouperEmitter`
- Generates `YearGrouper_<ID> : YearGrouperBase`
- Emits `Metadata`, `InitializeCore()`, `CreateContext()`, `ExecuteLogic()`
- Removes all thread-safety boilerplate (lives in `YearGrouperBase`)

### `GrouperRegistrarEmitter`
- Generates `[assembly: GrouperAssembly(typeof(GrouperRegistrar))]`
- Enables auto-discovery via `GrouperRegistry.AddFromDirectory()`

### `LogicDispatcherEmitter`
- Generates `LogicDispatcher.g.cs` with `switch(ordinal)` dispatch
- JIT-compiled as jump table (O(1))
- Used by the trampoline loop for MDC redirects

## Generated Output Structure

```
<YearProject>/Generated/
├── Logic/
│   ├── __LogicDef__.g.cs      — Entry function
│   ├── MainLogic.g.cs          — Main entry + trampoline
│   ├── LogicDispatcher.g.cs    — Switch dispatcher
│   ├── Logic_MDCLD.g.cs        — MDC router
│   ├── Logic_MDC_01.g.cs       — MDC partition
│   ├── Logic_MDC_02.g.cs       — ...
│   └── ... (hundreds of logic functions)
├── YearGrouper_<ID>.g.cs       — IGrouper implementation
└── GrouperRegistrar.g.cs        — Assembly registration
```

## Critical Code-Gen Patterns

1. **Inline transactional flagging** — AND/OR in IF conditions use statement-based transactions, not C# `&&`/`||`, to correctly commit/discard flags
2. **Variable marking before inlined comparisons** — `MarkVariableUsed(ordinal)` emitted before each inlined comparison with `VariableReference` operands
3. **NOT context enter/exit** — `EnterNotContext()`/`ExitNotContext()` emitted around NOT blocks so `IsInvalidVariableRef()` can handle empty variables gracefully
4. **Selective MDC trampoline** — Only `MDCLD` and `MDC_*` functions use redirect; all other tail calls remain direct

## Related Pages

- [[Year Projects]] — What DefinitionTranslator produces
- [[DSL Engine]] — What interprets the remaining runtime AST
- [[Key Architecture Decisions]] — Why code generation was chosen
