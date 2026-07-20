---
tags:
  - grouper
  - component
  - api
---

# GrouperApi

ASP.NET Web API (.NET 8) providing HTTP endpoints for DRG/PEPP grouping. Uses the existing `Grouperkern` and all registered year-grouper assemblies.

## Architecture

```
HTTP Client
    │
    ▼
┌──────────────────────┐
│  GroupingController   │  POST /api/grouping        — Group cases
│                       │  GET  /api/grouping/groupers — List groupers
└──────────┬───────────┘
           │
     CaseMapper            DTOs ←→ CaseData / GroupingResult
           │
┌──────────▼───────────┐
│  IGrouperRegistry     │  Singleton, lazy-init per grouper
│  → IGrouper.Group()   │  Thread-safe
└──────────────────────┘
```

## Endpoints

### POST `/api/grouping`
Groups a list of cases. Each case can specify its own list of grouper keys.

**Request**: `GroupingRequest` with `cases[]`, each containing:
- Demographics (HospitalId, CaseId, dates, sex, etc.)
- `diagnoses[]` — as individual JSON objects with `code`
- `procedures[]` — with `code`, `side`, `date`, `location`
- `departments[]` — with `code`, `admissionDate`, `dischargeDate`, `location`
- `groupers[]` — list of grouper keys (e.g., `["DRG.2026.2026"]`)

**Response**: `GroupingResponse` with per-case, per-grouper results:
- Result variables: `drg`, `mdc`, `pccl`, `gst`, `gpdx`, `lg`, `locId`, `ext`
- Diagnoses/Procedures/Departments with individual flag fields (usage, validity, typeSpecific, lgUsage)
- `supplementaryFees[]` for PEPP

### GET `/api/grouping/groupers`
Returns all registered grouper keys.

## Project Structure

```
GrouperApi/
├── Controllers/
│   └── GroupingController.cs    # API endpoints
├── Mapping/
│   └── CaseMapper.cs            # DTO ↔ CaseData/GroupingResult
├── Models/
│   ├── GroupingRequest.cs        # Request DTOs
│   └── GroupingResponse.cs       # Response DTOs
├── Program.cs                    # DI, Swagger, startup
└── GrouperApi.csproj
```

## Design Decisions

| Decision | Rationale |
|----------|-----------|
| No authentication | Requirement: open endpoint |
| Grouper selection per case | Flexibility: different cases with different catalogue years |
| Individual objects (not strings) | Input: Diagnoses/Procedures as JSON objects, not pipe-separated |
| Flags decomposed | Output: Usage, Validity, TypeSpecific, LgUsage as separate fields |
| Swagger/OpenAPI | Automatic documentation via XML comments + Swashbuckle |
| IGrouperRegistry as Singleton | Thread-safe, lazy-init, all groupers discovered at startup |

## API Certification Client

The `ApiCertificationClient` validates the API layer by:
1. Parsing certification input files
2. Sending cases through `POST /api/grouping` in batches of 500
3. Converting structured responses back to certification output format
4. Comparing against InEK expected output

This ensures the HTTP serialization/deserialization layer produces bit-identical results.

## Running

```bash
dotnet run --project Grouper/GrouperApi
# Swagger UI at http://localhost:5000
```

## Related Pages

- [[CertificationApp]] — Local certification (API Certification Client also tests the API)
- [[Year Projects]] — Groupers registered at startup
- [[System Architecture]] — Thread-safety model applies to API
