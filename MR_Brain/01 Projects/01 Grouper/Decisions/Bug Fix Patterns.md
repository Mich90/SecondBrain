---
tags:
  - grouper
  - decisions
  - bugfixes
---

# Bug Fix Patterns

Recurring error categories and resolution strategies discovered during certification debugging across 31 year projects and millions of test cases.

## Category 1: Procedure Flagging Errors

### Pre-Admission Validity Clamping
**Pattern**: Procedures coded before admission have their validity bitmask start clamped to day 0, extending validity into days where their natural range has expired. On those clamped-only days, DAYTABLESCORE crosses a threshold and incorrectly flags these procedures.

**Fix**: `IsWithinRawValidity()` check — guard `MarkCodeUsed` calls to ensure the evaluation day falls within the raw (unclamped) validity range, not just the clamped bitmask.

**Files**: `ProcedureValidityContext.cs`

### Empty Bitmask Flagging
**Pattern**: Procedures whose only valid days are cleared as absence days end up with PopCount=0, but `ComputeAnyBitmask`/`ComputeAllBitmask` still called `FlagProcedureUsed()` unconditionally.

**Fix**: Added `bitmask.PopCount() > 0` guard before `FlagProcedureUsed()`.

**Files**: `ProcedureValidityContext.cs`

### Ignored Procedure TypeSpecific Reset
**Pattern**: DRG reference expects TypeSpecific=0 for all ignored procedures (OR/NonOR classification not meaningful for excluded codes). PEPP reference preserves the classification.

**Fix**: In `ResultCollector.cs`, reset TypeSpecific to 0 for ignored procedures **only in DRG groupers** (guarded by `_isDrg` flag).

**Files**: `ResultCollector.cs`

## Category 2: Department Chain / Absence Day Errors

### Shadow Loop Breaking on Pseudo Boundaries
**Pattern**: Department micro-stays between `0005` (TagStationaer) pseudo-FABs got their LgUsage incorrectly set by the shadow loop because the next real FAB covered the same day.

**Fix**: Break shadow loop on TagStationaer pseudos. Skip single-day real FABs sandwiched between `0005` pseudos where the preceding `0005` starts on the same day.

**Files**: `ProcedureValidityContext.cs`, `DepartmentChain.cs`

### Absence Day at Case Discharge
**Pattern**: `0003` pseudo at case end had `CalculatedDischarge == caseDischargeMinutes`, but `IsFullAbsenceDay` has a span check that failed for 2-day pseudos.

**Fix**: Added `reachesCaseEnd` flag to bypass span check when pseudo reaches case discharge. Set `endMinuteOfDay=1439`.

**Files**: `AbsenceDayCalculator.cs`

## Category 3: Conflict Resolution Errors

### Zero-Length Merge Pseudo Boundaries
**Pattern**: Zero-length `0001` (Readmission) or `0002` (ReTransfer) pseudo-FABs where `CalculatedAdmission >= CalculatedDischarge` were treated as real separators, causing incorrect TreatmentType conflicts.

**Fix**: Extended boundary detection to accept both `0001` and `0002`. For same-day pairs separated only by zero-length pseudos, skip TreatmentType conflict and suppress supplementary fee on earlier procedure.

**Files**: `ConflictResolver.cs`, `ProcedureValidity.cs`, `DailyFeeEngine.cs`

### Cross-Boundary Invalidity Propagation
**Pattern**: Invalidity from one procedure propagated across merge pseudo-FAB boundaries to unrelated procedures on the same day.

**Fix**: Block invalidity propagation across ANY merge pseudo-FAB boundary, not just zero-length ones.

**Files**: `ConflictResolver.cs`

## Category 4: Error DRG / LG Usage Errors

### Error DRG Code Flag Clearing
**Pattern**: Error DRGs (960Z/961Z) are assigned in EDITS which runs LG evaluation. LG usage flags are committed but reference expects lgUsage=0 for ALL error DRG cases.

**Fix**: In `ResultCollector.cs`, clear `LgUsage` on all procedure, diagnosis, and department flags when result DRG is "960Z" or "961Z".

**Files**: `ResultCollector.cs`

## Category 5: Location / UPDATELOCATION Errors

### UPDATELOCATION Execution Order
**Pattern**: UPDATELOCATION ran before the MDC trampoline redirect loop. Procedures had lgUsage=0 when checked because LG evaluation hadn't run yet.

**Fix**: Moved `ExecuteUpdateLocation()` to after the redirect loop in `MainLogic.g.cs`. DefinitionTranslator updated to emit it in the correct position.

**Files**: `MainEntryEmitter.cs`, `LogicFunctionEmitter.cs`, generated files

### Pseudo-Department Inclusion in UPDATELOCATION
**Pattern**: Pseudo-departments (0001-0009) carrying external hospital locations (e.g., 8099) were included in the `internalLocations` set, causing incorrect locId override.

**Fix**: Added pseudo-department filter (0001-0009 skip) to UPDATELOCATION Step 2/3, matching the filter already in `EvaluateMaxLocationDuration`.

**Files**: `Interpreter.cs`

### Procedure Date/Time Fields
**Pattern**: `FindDepartmentLocationAtTime()` used `proc.AdmissionDate`/`proc.AdmissionTime` (always zero for procedures) instead of `proc.Date`/`proc.Time`.

**Fix**: Use correct fields. Remove closest-department fallback (per spec, no department match = no location contribution). Add timestamp clamping to case boundaries.

**Files**: `Interpreter.cs`

## Category 6: Code Generation Errors

### FlagActionStatement as Expression
**Pattern**: `EmitFlagAction()` in DefinitionTranslator emitted `EvaluateBool(node)` for variable-target flag actions. `FlagActionStatement` is a statement, not an expression.

**Fix**: Added `ExecuteVariableFlag()` method to Interpreter. Changed emitter to emit direct method calls instead of AST evaluation.

**Files**: `Interpreter.cs`, `LogicFunctionEmitter.cs`

### Missing NOT Context
**Pattern**: Generated logic files lacked `EnterNotContext()`/`ExitNotContext()` calls, causing `IsInvalidVariableRef()` to fail when empty variables were referenced inside NOT blocks.

**Fix**: Regenerated all logic files with current DefinitionTranslator. **Key lesson**: Always regenerate with latest DefinitionTranslator when onboarding new year projects.

## Category 7: Table Condition Flagging

### IN TABLES > M Overflagging
**Pattern**: `EvalInTablesGreaterM` only flagged the first matching code per table. Reference expects greedy N-code flagging plus table representatives.

**Fix**: Two-phase flagging: (1) scan all tables for condition check, (2) greedily flag N codes table-by-table, then add representatives from unrepresented tables.

**Files**: `InterpreterTableConditions.cs`

## Debugging Methodology

1. Run certification batch via `CertificationApp`
2. `OutputComparer` identifies failing cases with per-field diffs
3. Analyze field names (DRG, Procedures flags, Department flags, etc.) to categorize error type
4. Add diagnostic logging for specific cases if needed
5. Identify root cause in Grouperkern logic
6. Fix upstream (prefer root cause over downstream workaround)
7. Re-run all affected year projects to verify zero regressions

## Related Pages

- [[Certification Process]] — Where bugs are discovered
- [[Key Architecture Decisions]] — Decisions that prevent/fix bugs
- [[Grouperkern]] — Where fixes are applied
