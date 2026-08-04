---
title: F06 – Widget-Domänenmodell & CRUD-API
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F06
phase: 1
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - widget
  - backend
---

# F06 – Widget-Domänenmodell & CRUD-API

> [!abstract] Ziel
> Widgets (Chart, KPI, Tabelle, Filter, Text) können als zentrale, wiederverwendbare Definitionen mit eigener GUID angelegt, geändert, dupliziert, gelistet und gelöscht werden. Die Definition (Query + Formatierung + Design) liegt als versioniertes JSON in SQLite und wird beim Speichern gegen die Cube-Meta-API validiert.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 1 · **Abhängig von:** F01, F02, F03 · **Blockiert:** F07, F08, F09, F10
> **Pflichtenheft-Bezug:** DES-03 (wiederverwendbare Widgets), VIS-01/02 (Visualisierungstypen & Formatierung – hier: Definitionsschema)
> **Entscheidungen:** F-A4 (Layer-Registry), F-A6 (Designer-Rolle), F-A7 (Änderung wirkt sofort), F-A8 (TenantId)

## 1 · User-Workflow / Nutzungsszenario

Aus API-Sicht (die UI kommt in F08): Ein Nutzer mit Designer-Rolle legt ein Widget an, indem er Name, Typ, Semantic-Layer-Verbindung und die Definition (Query + Visualisierung) übermittelt. Das Backend validiert die referenzierten Cube-Member gegen die Meta-API der gewählten Verbindung und persistiert das Widget mit neuer GUID im aktiven Tenant. Beim Ändern eines Widgets liefert die API zusätzlich die Anzahl der Dashboards, die es referenzieren – Grundlage für den Hinweis „wirkt sich auf n Dashboards aus" (F-A7). Löschen ist blockiert, solange Placements existieren (409 mit Liste der Dashboards); alternativ Duplizieren für Varianten.

## 2 · Scope & Abgrenzung

- **In Scope:** Entität + EF-Konfiguration + Migration, JSON-Definitionsschema v1, CRUD- und Duplizier-Endpunkte, Validierung gegen Meta-API, Verwendungs-Info, Audit-Felder.
- **Out of Scope:** Rendering (F07), Designer-UI (F08), Datenabruf/Query-Ausführung (F07 nutzt F03), Berechtigung einzelner Widgets auf App-Ebene (Widgets werden über Dashboards konsumiert; Datenrechte enforced Cube – F16), Embed-Zugriff (F09).

## 3 · Betroffene Projekte & Komponenten

| Projekt | Komponenten/Neuerungen |
| --- | --- |
| Backend Domain | `Widget`-Entität, `WidgetType`-Enum, Definitionsschema-Records |
| Backend API | `WidgetsController` (bzw. Endpoint-Group `/api/widgets`), DTOs, Validierungs-Service |
| Backend Infrastructure | EF-Konfiguration, Migration `AddWidget`, Repository/Query-Erweiterungen |
| Frontend | – (nur generierter API-Client) |
| SQLite-Schema | Neue Tabelle `Widgets`; FK auf `SemanticLayerConnections`, `Tenants` |
| Config | keine neuen appsettings-Keys |

## 4 · Technisches Design

### 4.1 Datenmodell

```
Widget
- Id              GUID (PK, vom Backend erzeugt)
- TenantId        GUID (FK Tenant, globaler EF-Query-Filter)
- SemanticLayerId GUID (FK SemanticLayerConnection, muss zum Tenant gehören)
- Name            string (max 200, pro Tenant eindeutig, case-insensitive)
- Description     string? (max 2000)
- Type            enum: chart | kpi | table | filter | text
- DefinitionJson  string (JSON, gegen Schema der jeweiligen SchemaVersion validiert)
- SchemaVersion   int (aktuell 1)
- Tags            string? (JSON-Array)
- CreatedBy/At, ModifiedBy/At (aus JWT `preferred_username` bzw. UTC-Now)
- RowVersion      (Concurrency-Token; verhindert Lost Updates bei „wirkt sofort")
```

Index: `(TenantId, Name)` unique, `(TenantId, Type)`.

### 4.2 JSON-Definitionsschema v1 (Kern)

```json
{
  "schemaVersion": 1,
  "query": {
    "cube": "Faelle",
    "measures": ["Faelle.anzahl", "Faelle.cmiSumme"],
    "dimensions": ["Fachabteilung.name"],
    "timeDimension": {
      "dimension": "Faelle.aufnahmedatum",
      "granularity": "month",
      "dateRange": { "type": "relative", "unit": "month", "count": 12 }
    },
    "filters": [
      { "member": "Standort.name", "operator": "equals", "values": ["Haus A"] }
    ],
    "order": [{ "member": "Faelle.anzahl", "direction": "desc" }],
    "limit": 5000
  },
  "visualization": {
    "chartType": "bar",
    "seriesMapping": { "category": "Fachabteilung.name", "values": ["Faelle.anzahl"] },
    "numberFormats": { "Faelle.anzahl": { "kind": "number", "decimals": 0 } },
    "colors": { "palette": "default", "overrides": {} },
    "legend": { "show": true, "position": "bottom" },
    "axes": { "y": { "min": null, "max": null, "label": "" } },
    "dataLabels": { "show": false },
    "echartsOverrides": {}
  },
  "kpi": null,
  "filterBinding": { "respondsToGlobalFilters": ["Standort.name", "zeitraum"] }
}
```

Regeln: `kpi`-Block nur bei `Type=kpi` (Wert-Measure, optionales Vergleichs-Measure/-Zeitraum, Trendrichtung „höher ist besser"); `visualization.chartType` nur bei `Type=chart`; `table`-Typ nutzt statt `seriesMapping` eine `columns`-Liste. `echartsOverrides` ist ein bewusst begrenztes Escape-Hatch (wird beim Rendern gemergt, niemals serverseitig ausgeführt). Das vollständige Schema wird als JSON-Schema-Datei im Repo versioniert und im Backend zur Validierung genutzt.

### 4.3 API-Vertrag

Basis: `/api/widgets` · Auth: JWT erforderlich · Schreiboperationen: Rolle `hbi-designer`.

| Methode | Route | Beschreibung | Antworten |
| --- | --- | --- | --- |
| GET | `/api/widgets?type=&search=&tag=&page=&pageSize=` | Liste (nur aktiver Tenant), Paging + Suche über Name/Tags | 200 `PagedResult<WidgetListItemDto>` |
| GET | `/api/widgets/{id}` | Einzelnes Widget inkl. Definition | 200 `WidgetDto` · 404 |
| GET | `/api/widgets/{id}/usage` | Verwendungs-Info: Dashboards, die das Widget referenzieren | 200 `WidgetUsageDto { count, dashboards[] }` |
| POST | `/api/widgets` | Anlegen (Backend vergibt GUID) | 201 + Location · 400 (Schema/Meta-Validierung) · 409 (Name) |
| PUT | `/api/widgets/{id}` | Ändern (wirkt sofort in allen Dashboards, F-A7) | 200 · 400 · 404 · 409 (RowVersion) |
| POST | `/api/widgets/{id}/duplicate` | Kopie mit neuer GUID, Name „… (Kopie)" | 201 |
| DELETE | `/api/widgets/{id}` | Löschen; blockiert bei Verwendung | 204 · 404 · 409 (`ProblemDetails` mit Dashboard-Liste) |
| POST | `/api/widgets/validate` | Definition validieren ohne zu speichern (für Designer-Live-Feedback) | 200 `ValidationResultDto` |

Validierung beim Anlegen/Ändern/`validate`:
1. JSON-Schema-Prüfung gegen `schemaVersion`.
2. `SemanticLayerId` existiert, gehört zum Tenant, ist `Enabled`.
3. Alle referenzierten Member (`measures`, `dimensions`, `filters[].member`, `timeDimension.dimension`) existieren laut Meta-API der Verbindung (F03, gecacht). Fehlende Member → 400 mit Member-Liste.
4. Typ-Konsistenz (chart/kpi/table-Regeln aus 4.2).

### 4.4 Sicherheits- & Tenant-Aspekte

- Lesen: jeder authentifizierte Nutzer des Tenants (Widget-Definitionen enthalten keine Daten; die Daten selbst schützt Cube – F16).
- Schreiben/Duplizieren/Löschen: Rolle `hbi-designer` (F-A6).
- Tenant: globaler EF-Query-Filter; `TenantId` wird nie aus dem Request übernommen, sondern aus dem Token-Kontext gesetzt.
- Die Meta-Validierung ruft Cube **mit dem Token des aufrufenden Nutzers** auf – ein Designer kann nur Member verwenden, die er selbst sehen darf.

## 5 · Akzeptanzkriterien

- [ ] Widget mit gültiger Definition wird angelegt; GUID vom Backend vergeben; Audit-Felder gesetzt.
- [ ] Definition mit unbekanntem Cube-Member wird mit 400 und benannter Member-Liste abgelehnt.
- [ ] Namens-Duplikat im selben Tenant → 409; gleicher Name in anderem Tenant erlaubt.
- [ ] `usage` liefert korrekte Dashboard-Anzahl (Test nach F10 nachziehen; bis dahin 0).
- [ ] Löschen eines verwendeten Widgets → 409 mit Dashboard-Liste; unverwendetes Widget → 204.
- [ ] Duplizieren erzeugt neue GUID, identische Definition, Name-Suffix.
- [ ] Gleichzeitiges Ändern → zweiter Schreiber erhält 409 (RowVersion).
- [ ] Tenant-Isolationstest: Nutzer aus Tenant B kann Widget aus Tenant A weder lesen noch ändern (404).
- [ ] Nutzer ohne `hbi-designer` erhält bei Schreiboperationen 403.

## 6 · Testplan

- **Unit:** Schema-Validierung (gültige/ungültige Definitionen je Typ), Typ-Konsistenzregeln.
- **Integration (WebApplicationFactory + SQLite in-memory):** alle Endpunkte, Rollen-/Tenant-Matrix, Meta-Validierung mit gemocktem Cube-Client.
- **E2E:** entfällt (API-only); wird über F08-Designer-E2E mit abgedeckt.

## 7 · Offene Punkte dieses Features

> [!question] Soft-Delete gewünscht?
> Aktuell hartes Löschen (blockiert bei Verwendung). Falls Papierkorb/Wiederherstellen gewünscht → `DeletedAt`-Flag statt Delete. Vorschlag: hartes Löschen für v1, Papierkorb später.

---

## Änderungshistorie

| Version | Datum | Änderung |
| --- | --- | --- |
| 0.1 | 2026-07-28 | Erstfassung auf Basis der Entscheidungen F-A3–F-A8 |
