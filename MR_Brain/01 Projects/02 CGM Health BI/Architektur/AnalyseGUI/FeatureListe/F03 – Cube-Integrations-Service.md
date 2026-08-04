---
title: F03 – Cube-Integrations-Service
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F03
phase: 0
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - cube
  - semantic-layer
---

# F03 – Cube-Integrations-Service

> [!abstract] Ziel
> Das Backend kann n Cube-Instanzen je Tenant als Verbindungen verwalten und typisiert ansprechen: Metadaten (`/v1/meta` – Cubes, Dimensionen, Kennzahlen) und Query-Ausführung (`/v1/load`) inkl. Durchreichung des User-Tokens, Continue-wait-Handling, Timeouts und Meta-Caching. Grundlage für Metadaten-Explorer (F05), Widget-Validierung (F06) und Rendering (F07).

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 0 · **Abhängig von:** F01, F02 · **Blockiert:** F05, F06, F07
> **Entscheidungen:** F-A3 (BFF), F-A4 (n Instanzen × n Cubes), F-A12 (bestehende Cube-Instanz)

## 1 · Nutzungsszenario

Ein Admin registriert eine Cube-Instanz als Verbindung für einen Tenant (Name + Base-URL). Danach können Designer über die Meta-Endpunkte die verfügbaren Cubes/Members browsen, und die Widget-Pipeline führt Queries gegen die Verbindung aus – stets mit dem Token des anfragenden Nutzers, sodass Cube Zeilen-/Spaltenrechte selbst enforced.

## 2 · Scope & Abgrenzung

- **In Scope:** `SemanticLayerConnection`-Entität + CRUD-Endpunkte, `ICubeClient` (Meta + Load), HttpClientFactory + Resilienz, Meta-Cache mit Invalidierung, Fehler-Mapping, Health-Check je Verbindung.
- **Out of Scope:** Query-Bau aus Widget-Definitionen (F07), Meta-Explorer-UI (F05), Cube-Modellpflege (separates Vorhaben).

## 3 · Datenmodell

```
SemanticLayerConnection
- Id        GUID (PK)
- TenantId  GUID (FK, Query-Filter)
- Name      string (pro Tenant eindeutig)
- BaseUrl   string (https, validiert; Basis für /cubejs-api/v1/...)
- ApiPathPrefix string (Default "cubejs-api")
- AuthMode  enum: passthrough (Default; User-JWT wird durchgereicht)
- Enabled   bool
- Audit-Felder, RowVersion
```

Migration `AddSemanticLayerConnection`; Index `(TenantId, Name)` unique.

## 4 · Technisches Design

### 4.1 API-Vertrag (Verwaltung + Meta-Proxy)

Auth: JWT; Verwaltung = Rolle `hbi-admin`, Meta-Lesen = authentifiziert.

| Methode | Route | Beschreibung |
| --- | --- | --- |
| GET | `/api/semantic-layers` | Verbindungen des aktiven Tenants |
| POST | `/api/semantic-layers` | Anlegen (Admin); prüft Erreichbarkeit (`/v1/meta` mit Nutzer-Token) |
| PUT/DELETE | `/api/semantic-layers/{id}` | Ändern/Deaktivieren; Delete blockiert (409), wenn Widgets referenzieren |
| GET | `/api/semantic-layers/{id}/meta` | Aufbereitete Meta: Cubes → Dimensionen/Measures mit Titel, Typ, Beschreibung (gecacht) |
| POST | `/api/semantic-layers/{id}/meta/refresh` | Cache-Invalidierung (Designer/Admin) |
| GET | `/api/semantic-layers/{id}/health` | Erreichbarkeits-Check (Admin) |

### 4.2 `ICubeClient`

```csharp
Task<CubeMeta> GetMetaAsync(SemanticLayerConnection c, string userToken, CancellationToken ct);
Task<CubeResultSet> LoadAsync(SemanticLayerConnection c, CubeQuery query, string userToken, CancellationToken ct);
```

- **HttpClientFactory** mit named client; Timeout aus `CubeOptions.DefaultTimeoutSeconds`; Retry (Polly) nur für idempotente Meta-Calls (Load nicht blind retryen).
- **Continue-wait-Handling:** Cube antwortet bei langen Queries mit `{"error":"Continue wait"}` → Client pollt mit kurzem Delay bis Ergebnis oder `ContinueWaitMaxRetries` erreicht (dann 504-ProblemDetails „Abfrage-Timeout"). CancellationToken des HTTP-Requests wird durchgereicht → **Abbruch aus dem Frontend (FIL-16) bricht das Polling ab**.
- **Token-Durchreichung:** `Authorization: Bearer <userToken>` unverändert; keine Backend-eigenen Cube-Tokens (Cube = Single Point of Truth der Datenrechte).
- **Meta-Cache:** `IMemoryCache`, Key `(connectionId)`, TTL `MetaCacheTtlMinutes`. ⚠️ Meta wird mit Nutzer-Token geladen; falls Cube Member-Sichtbarkeit je Rolle filtert (R7 in Ansatz A), muss der Cache-Key um ein Rollen-Digest erweitert werden → als TODO im Code markieren, Klärung mit dem Cube-Team.
- **Fehler-Mapping:** 401/403 von Cube → 403 ProblemDetails „keine Datenberechtigung" (F16 nutzt das für die Widget-UX); Netzwerk/5xx → 502 „Semantic Layer nicht erreichbar"; ungültige Query → 400 mit Cube-Fehlertext.

### 4.3 DTO-Modell

`CubeQuery` (measures, dimensions, timeDimensions, filters, order, limit, offset) und `CubeResultSet` (annotation + data rows) als eigene Records – 1:1 am Cube-REST-Format orientiert, damit F07 ohne Mapping-Verluste arbeitet.

## 5 · Akzeptanzkriterien

- [ ] Verbindung anlegen validiert URL + Erreichbarkeit; unerreichbare Instanz → 400 mit Diagnose.
- [ ] Meta-Endpunkt liefert Cubes/Members mit Titeln/Typen; zweiter Aufruf kommt aus dem Cache; `refresh` invalidiert.
- [ ] Load reicht das User-Token durch (Assertion im Mock: Authorization-Header identisch).
- [ ] Continue-wait: Mock liefert 3× „Continue wait", dann Ergebnis → Client liefert Ergebnis; über Max-Retries → 504.
- [ ] Frontend-Abbruch (Token-Cancellation) beendet das Polling nachweislich.
- [ ] 403 von Cube wird als „keine Datenberechtigung"-ProblemDetails gemappt.
- [ ] Tenant-Isolationstest für Verbindungen; Delete bei referenzierenden Widgets → 409.

## 6 · Testplan

- **Unit:** Continue-wait-Loop, Fehler-Mapping, Cache-Verhalten (mit `FakeTimeProvider`).
- **Integration:** Verwaltungs-Endpunkte inkl. Rollen-Matrix; Cube gemockt via `WireMock.Net` (Meta-, Load-, Fehler-Szenarien).
