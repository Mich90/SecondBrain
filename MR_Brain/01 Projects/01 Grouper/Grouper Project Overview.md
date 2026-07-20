---
tags:
  - project
  - grouper
  - overview
---

# Grouper Project Overview

## What is this project?

The **Grouper** is a classification engine for the German hospital reimbursement system. It assigns **DRG** (Diagnosis Related Groups) and **PEPP** (Pauschalierendes Entgeltsystem Psychiatrie und Psychosomatik) codes to patient cases based on diagnoses, procedures, departments, and demographic data.

The system implements the **InEK** (Institut für das Entgeltsystem im Krankenhaus) specification, which defines the grouping logic as a domain-specific language (DSL/Metasprache) that changes yearly.

## Technology Stack

- **Runtime**: C# / .NET 8
- **Architecture**: Pure class library (Grouperkern) + generated year-specific projects
- **Dependencies**: Zero external dependencies in the core library (pure BCL)
- **Key .NET 8 features**: `FrozenDictionary`, `FrozenSet`, `ArrayPool`, `ReadOnlySpan<char>`, `BitOperations.PopCount`

## Solution Structure

```
Grouper/
├── Grouperkern/                  # Year-independent core library
├── DefinitionTranslator/         # DSL-to-C# code generator
├── DRG_<Year>_<Year>/            # Generated year-specific DRG projects (16+)
├── PEPP_<Year>_<Year>/           # Generated year-specific PEPP projects (15+)
├── CertificationApp/             # Console app for InEK certification
├── CertificationApp.Shared/      # Shared certification utilities
├── CertificationFormats.Shared/  # Shared input format parsing
├── ApiCertificationClient/       # API-based certification client
├── GrouperApi/                   # ASP.NET Web API for HTTP grouping
└── Specifications/               # InEK spec files per year
```

## Key Concepts

- **Grouperkern**: The year-independent core containing the DSL interpreter, variable/table management, department chain building, procedure validity, CCL/PCCL calculation, flag management, and result collection
- **Year Projects**: Generated C# code specific to each DRG/PEPP catalogue year + patient year combination. Naming: `<Grouper>.<CatalogueYear>.<PatientYear>` (e.g., `DRG_2026_2026`)
- **DefinitionTranslator**: Transpiles the InEK DSL specification files into C# code stored in year projects
- **Certification**: Three-phase InEK certification process (Uebung → Test → Zertifizierung) validating 100% correctness against reference output

## Project Map

- [[System Architecture]] — Two-phase lifecycle, data flow, namespaces
- [[DSL Engine]] — Tokenizer, parser, AST, interpreter, three-valued logic
- [[Performance Design]] — Zero-allocation patterns, ordinal access, hardware intrinsics
- [[Grouperkern]] — Core library components and subsystems
- [[DefinitionTranslator]] — Code generation pipeline
- [[Year Projects]] — Generated code, registration, thread safety
- [[CertificationApp]] — Batch certification tooling
- [[GrouperApi]] — HTTP API for integration
- [[Key Architecture Decisions]] — Cross-cutting design choices
- [[Bug Fix Patterns]] — Recurring error categories and resolution strategies
- [[Certification Process]] — InEK certification workflow and status
