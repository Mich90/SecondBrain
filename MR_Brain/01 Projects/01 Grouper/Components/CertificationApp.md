---
tags:
  - grouper
  - component
  - certification
---

# CertificationApp

Console application for validating Grouper output against InEK reference data. Implements the three-phase InEK certification workflow.

## Projects

### CertificationApp
Main console app that:
1. Loads grouper instances via `GrouperRegistry.AddFromDirectory()`
2. Reads certification input files
3. Groups each case via `IGrouper.Group(CaseData)`
4. Writes output file
5. Compares output with InEK expected results
6. Reports per-case, per-field differences

### CertificationApp.Shared
Shared library used by both `CertificationApp` and `ApiCertificationClient`:
- `AppConfig` — configuration loading from `appsettings.json`
- `OutputFormat` — output format enum (different years have different formats)
- `FieldDiffAnalyzer` — span-based field-by-field comparison
- `OutputComparer` — lockstep line-by-line file comparison
- `FormattedCaseOutputWriter` — certification output string formatting
- `ReportPrinter` — console statistics and table formatting

### CertificationFormats.Shared
Shared input format parsing used across certification tools.

## Output Formats

Different DRG/PEPP years use different output formats:
- **Until2021Drg** — 3-digit flags, no Sep3, no LG fields
- **Until2022Drg** — 3-digit flags, no Sep3
- **From2021** — 3-digit flags, with Sep3, procedure locations
- **Until2021Pepp** — 3-digit flags, no Sep3, with supplementary fees
- **From2022Pepp** — 3-digit flags, with Sep3, with supplementary fees
- **From2026DrgLg** — 4-digit flags (including LgUsage), with LG/LocId/MaxDurationGroup/EXT fields

## Configuration

`appsettings.json` defines grouper configurations:
```json
{
  "Default": { "InputFile": "...", "OutputFile": "...", "ExpectedOutputFile": "..." },
  "Groupers": [
    { "Key": "DRG.2026.2026", "Stages": ["Uebung", "Test", "Zertifizierung"] }
  ]
}
```

## Batch Processing

- **Sequential**: Single engine, streaming I/O with 64KB buffers
- **Parallel**: `Parallel.ForEach` with range partitioning, per-thread context
- **Comparison**: Lockstep `StreamReader` — O(1) memory per line pair
- **Field splitting**: span-based, allocation-free for matching cases

## Related Pages

- [[Certification Process]] — The InEK certification workflow
- [[Year Projects]] — What gets certified
- [[GrouperApi]] — API-based certification alternative
