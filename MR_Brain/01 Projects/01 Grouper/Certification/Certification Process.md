---
tags:
  - grouper
  - certification
  - process
---

# Certification Process

The InEK (Institut für das Entgeltsystem im Krankenhaus) requires certified grouper implementations to pass a rigorous three-phase validation process.

## Three-Phase Certification

### Phase 1: Uebung (Practice)
- Self-validation against InEK-provided reference data
- Used during development to iterate on correctness
- Typically ~35,000 cases

### Phase 2: Test
- InEK provides a test dataset, grouper produces output
- Output submitted to InEK for validation
- Typically ~46,000-48,000 cases
- May reveal edge cases not covered in Uebung

### Phase 3: Zertifizierung (Certification)
- Final certification dataset from InEK
- Must achieve **100.00%** success rate (zero failures)
- Typically ~70,000-72,000 cases (PEPP) or ~800,000-2,200,000 cases (DRG)
- Upon passing, the grouper is officially certified for that year

## Certification Output Format

Each case produces a pipe-separated line with:
1. **Input fields** (pass-through): Hospital ID, Case ID, demographics, diagnoses, procedures, departments
2. **Result fields**: DRG/PEPP code, MDC/SK code, PCCL, GST (Grouper status), GPDX (HD error)
3. **Flags per code**: Usage digit + Validity digit + TypeSpecific digit (+ LgUsage for DRG 2026+)
4. **Supplementary fees** (PEPP only): ET code, ValidFrom, ValidTo, Count

## Certification Status (Current)

All year projects achieving **100.00% success rate**:

### DRG (16 year projects)
- DRG 2019 2019 Test: 800,914 cases, 0 failures
- DRG 2021 2020 Uebung: 36,393 cases, 0 failures
- DRG 2026 2024 Zertifizierung: 2,203,814 cases, 0 failures
- DRG 2026 2025 Uebung: 35,965 cases, 0 failures
- DRG 2026 2026 Uebung: 35,955 cases, 0 failures
- *(and 11 more year projects)*

### PEPP (15 year projects)
- PEPP 2019 2017, 2018, 2019: all 100%
- PEPP 2020 2020 Zertifizierung: 70,762 cases, 0 failures
- PEPP 2025 2023 Zertifizierung: 70,824 cases, 0 failures
- PEPP 2025 2025 Zertifizierung: 70,829 cases, 0 failures
- PEPP 2026 2025 Zertifizierung: 73,843 cases, 0 failures
- PEPP 2026 2026 Zertifizierung: 72,475 cases, 0 failures
- *(and more year projects)*

**Total certified cases**: ~1,800,000+ PEPP + ~2,200,000+ DRG across all years

## Tooling

### CertificationApp (Local)
```bash
dotnet run --project Grouper/CertificationApp
```
Reads `appsettings.json` for grouper configurations, runs all configured stages, reports field-level differences.

### ApiCertificationClient (HTTP)
```bash
dotnet run --project Grouper/GrouperApi          # Start API
dotnet run --project Grouper/ApiCertificationClient  # Run certification via HTTP
```
Same workflow but exercises the HTTP API layer. Validates serialization/deserialization produces bit-identical results.

## Debugging Failed Cases

1. `OutputComparer.Compare()` identifies failing cases with per-field diffs
2. `FieldDiffAnalyzer` maps field indices to human-readable names (DRG, MDC, Procedures[3].Flag, etc.)
3. Categorize error type from field name (see [[Bug Fix Patterns]])
4. Add diagnostic logging for specific failing cases
5. Compare against spec (Spec-Handbuch) for correct behavior
6. Fix upstream in Grouperkern, not in year-specific code
7. Re-run ALL year projects to verify zero regressions

## Key Lesson

When onboarding new year projects, **always regenerate with the latest DefinitionTranslator** before running certification. Code-gen bug fixes (e.g., NOT context, flag actions, UPDATELOCATION placement) are only picked up via regeneration.

## Related Pages

- [[CertificationApp]] — The certification tooling
- [[Bug Fix Patterns]] — Common error categories
- [[Year Projects]] — What gets certified
