---
tags:
  - grouper
  - architecture
  - dsl
---

# DSL Engine (Metasprache)

## Overview

The InEK specification defines grouping logic in a domain-specific language ("Metasprache"). The DSL engine in `Grouperkern.Dsl` implements a three-phase pipeline: **Tokenize → Parse → Execute**.

Tokenization and parsing happen once at startup. The resulting AST is immutable and shared. Interpretation happens per-case on mutable per-case stores.

## Pipeline

```
DSL Source Text
      │
      ▼
  Tokenizer.Tokenize(source)
      │  produces Token[] (flat struct array)
      ▼
  Parser.ParseBlock()
      │  resolves names to ordinals, produces AST
      ▼
  StatementBlock (immutable AST)
      │
      ▼
  Interpreter.Execute(functionOrdinal)
      │  walks AST, mutates VariableStore/CodeStore
      ▼
  bool result (TRUE/FALSE)
```

## File Structure

```
Grouperkern/Dsl/
├── TokenType.cs              — Token type enum
├── Token.cs                  — Immutable token struct
├── Tokenizer.cs              — Source text → Token[]
├── Parser.cs                 — Recursive-descent parser (statements)
├── ParserExpressions.cs      — Recursive-descent parser (expressions)
├── LogicFunction.cs          — Parsed function: ordinal + name + AST
├── LogicRegistry.cs          — FrozenDictionary of all logic functions
├── TriBool.cs                — Three-valued logic (True, False, Invalid)
├── Interpreter.cs            — Tree-walking executor (statements)
├── InterpreterExpressions.cs — Expression evaluator
├── InterpreterTriBool.cs     — TriBool AND/OR/NOT with transactional flagging
├── InterpreterTableConditions.cs — IN TABLE / IN TABLES evaluations
├── InterpreterOpd.cs         — OPD (procedure date relationships)
└── Ast/
    ├── AstNode.cs            — Statement AST nodes
    └── Expressions.cs        — Condition/expression AST nodes
```

## Three-Valued Logic (TriBool)

Boolean evaluation uses `TriBool` (True, False, Invalid) with spec-correct short-circuit semantics.

**AND truth table (Table 7-2):**
| A | B | Result | Flag behavior |
|---|---|--------|---------------|
| F | _ | False | Discard A, skip B |
| I | _ | Invalid | Commit A, evaluate+discard B |
| T | T | True | Commit A+B |
| T | I | Invalid | Commit A+B |
| T | F | False | Discard all |

**OR truth table (Table 7-3):**
| A | B | Result | Flag behavior |
|---|---|--------|---------------|
| T | _ | True | Commit A, skip B |
| I | _ | Invalid | Commit A, skip B |
| F | T | True | Discard A, commit B |
| F | I | Invalid | Discard A, commit B |
| F | F | False | Discard all |

This is critical because flagging side-effects in un-evaluated branches must not be triggered.

## Key DSL Constructs

### Control Flow
- `IF / ELSIF / ELSE / ENDIF` — branch array (not nested chains) for cache-friendly evaluation
- `TRY / CATCH / ENDTRY` — state-based exception flow (no C# exceptions in hot path)
- `RETURN TRUE / RETURN FALSE` — sets return value field + state=Return

### Flag Operations
- `STARTUSEDFLAGGING` — activates the FlagManager (all flagging is no-op before this)
- `FLAG(table, position, value)` — flag matching codes in a table
- `FLAGALL(table, position, value)` — flag all matching codes
- `FLAGDUPLICATE(table)` — flag duplicate codes
- `FLAGEXCLUDE(table, position, value)` — exclude-flag codes

### Condition Types
- `IN TABLE(T)` / `IN TABLES(T1, T2, ...)` — code membership checks via FrozenSet
- `DIFFERENT IN TABLE(T)` — distinct code counting
- `IN TABLES(...) > M` — codes in more than M tables (two-phase flagging)
- `EMPTY(var)` / `VALID(var)` — variable state checks (no flagging)
- `OPDn IN (...)` — procedure date relationships with recursive backtracking

### Evaluation Functions
- `DURATION(ANY/ALL/NONE table, ...)` — bitmask-based procedure duration counting
- `DAYS(condition, from, to)` — day-by-day iteration with inner condition
- `DAYTABLESCORE(table:value, ...)` — per-day code scoring (only valid inside DAYS)
- `PCCL(adrg)` — cached CCL/PCCL calculation
- `CODECOUNT(tables)` — multi-table union code counting
- `MAXLOCATIONDURATION(fabGroups)` — location-based department duration
- `SCORE(condition:value, ...)` — accumulated condition-value evaluation

### Error Handling
- `THROW` → sets `_state = ExecutionState.Exception`
- ErrorAction on invalid variables → pre-parsed AST executed at runtime
- State-based flow: `ExecutionState` enum (Normal/Exception/Return) checked after each statement
- ~100x faster than C# exceptions for error cases, zero heap allocation

## MDC Trampoline (DRG only)

DRG grouping logic is organized as a chain of MDC (Major Diagnostic Category) functions. Re-routing rules can redirect cases between MDCs, creating deep call chains that overflow the .NET 1MB stack.

**Solution**: Selective trampoline for MDC-level tail calls only:
- MDC tail calls set `_redirectOrdinal` and return
- `MainLogic.Execute` runs a `while` loop dispatching via `LogicDispatcher` (O(1) switch)
- Non-MDC helper calls remain direct (unchanged performance)
- Stack depth stays bounded at ~5-8 frames regardless of re-routing depth
- Net overhead: ~375ns per case (negligible vs ~1ms total)
- PEPP has no MDC chain — zero trampoline overhead

## Ordinal Resolution

All names are resolved to integer ordinals during parsing:
- Variables → `VariableRegistry.TryGetOrdinal(name)`
- Tables → `ITableRegistry.TryGetOrdinal(name)`
- Functions → ordinal delegate

The AST stores **only ordinals**. Runtime access is direct array indexing — no hashing, no string comparison.

## Related Pages

- [[System Architecture]] — Overall system design
- [[Grouperkern]] — Where the DSL engine lives
- [[Key Architecture Decisions]] — Why these patterns were chosen
