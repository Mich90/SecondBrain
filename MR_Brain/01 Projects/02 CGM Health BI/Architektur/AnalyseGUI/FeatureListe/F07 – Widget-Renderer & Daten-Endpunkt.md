---
title: F07 – Widget-Renderer & Daten-Endpunkt
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F07
phase: 1
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - widget
  - echarts
  - renderer
---

# F07 – Widget-Renderer & Daten-Endpunkt

> [!abstract] Ziel
> Ein gespeichertes Widget (GUID) kann gerendert werden: Das Backend baut aus der Definition + Laufzeitkontext (globale Filter) die validierte Cube-Query und liefert das Resultset; das Frontend rendert daraus Chart (ECharts), KPI oder Tabelle (TanStack) – responsive, formatiert, mit Loading/Error/Empty-Verhalten. **Dies ist der eine Render-Pfad**, den Viewer (F14), Designer-Preview (F08) und später Embedding (F20) nutzen.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 1 · **Abhängig von:** F03, F04, F06 · **Blockiert:** F08, F13, F14, F16, F19, F20
> **Pflichtenheft-Bezug:** VIS-01/02/03 (Charttypen, Formatierung, responsive), VIS-08-Vorbereitung (KPI-Trend), FIL-16/17 (Lade-UX)
> **Entscheidungen:** F-A3 (Query-Bau + Validierung serverseitig)

## 1 · Nutzungsszenario

Eine aufrufende Komponente (Viewer/Designer/Embed) bindet `<hbi-widget-renderer [widgetId]>` bzw. übergibt eine Draft-Definition ein. Der Renderer fordert die Daten beim Backend an, zeigt währenddessen den Loading-Indicator (abbrechbar), rendert dann typabhängig und reagiert auf Container-Resize. Bei 403 aus Cube erscheint der „keine Datenberechtigung"-Zustand (F16), bei Fehlern das ErrorPanel mit Retry.

## 2 · Scope & Abgrenzung

- **In Scope:** Backend-Daten-Endpunkte (persisted + preview), serverseitiger Query-Builder + Laufzeitfilter-Validierung, Frontend-Renderer für `chart` (bar, column, line, area, pie/donut, scatter – VIS-01), `kpi`, `table`, `text`; Zahlen-/Farbformatierung, Sortierung, Legende/Achsen/Datenbeschriftung gemäß Definition; Resize-Handling.
- **Out of Scope:** Erweiterte Charttypen (VIS-04, Iteration 2 – Option-Factory ist dafür erweiterbar zu bauen), Drill-down/Cross-Filtering (Iteration 2; der Renderer emittet aber bereits ein `elementClick`-Event als Andockpunkt), Pivot (Perspective), Filter-Widget-Typ (F13).

## 3 · API-Vertrag

| Methode | Route | Beschreibung |
| --- | --- | --- |
| POST | `/api/widgets/{id}/data` | Daten für gespeichertes Widget. Body: `{ runtimeFilters: [{member, operator, values}], pageContext?: {limit, offset} }` |
| POST | `/api/widgets/preview/data` | Daten für **ungespeicherte** Definition (Designer-Live-Preview). Body: `{ definition, runtimeFilters }` · Rolle `hbi-designer` |

Antwort (beide): `{ resultSet: { columns[], rows[] }, annotation: { member → {title, type, format} }, query: <effektive CubeQuery>, executionMs }` – `query` dient dem Designer als Transparenz-/Debug-Info.

**Serverseitige Regeln (Kern der BFF-Sicherheit):**
1. Basis-Query kommt **ausschließlich** aus der gespeicherten Definition (bzw. bei `preview` aus der validierten Draft-Definition, F06-Validator).
2. `runtimeFilters` dürfen nur Member betreffen, die im `filterBinding.respondsToGlobalFilters` der Definition deklariert sind – alles andere → 400. Kein Client kann Measures/Dimensionen zur Laufzeit hinzufügen.
3. Zeitraum-Presets (`relative`-DateRanges) werden serverseitig gegen „heute" aufgelöst (Zeitzone konfigurierbar).
4. `limit` aus der Definition ist Obergrenze; `pageContext.limit` darf sie nur unterschreiten (Tabellen-Paging).
5. Token-Durchreichung + Abbruch/Timeout gemäß F03.

## 4 · Technisches Design Frontend

- `WidgetRendererComponent` (shared, standalone): Inputs `widgetId | draftDefinition`, `runtimeFilters`, `interactive`; lädt Definition (bei widgetId) + Daten; `ResizeObserver` → `chart.resize()` bzw. Layout-Umschaltung KPI/Tabelle; Output `elementClick` (Datenpunkt-Kontext) für spätere Interaktionen.
- **Option-Factory-Architektur:** `ChartOptionFactory` mit Strategie je `chartType` (`BarOptionBuilder`, `LineOptionBuilder`, …). Input: Resultset + Annotation + Visualisierungsblock; Output: ECharts-Option auf `hbi`-Theme; `echartsOverrides` wird zuletzt tief gemergt. Gemeinsame Bausteine: Serien-Mapping (Kategorie/Serien-Split bei 2 Dimensionen), Achsenformatter (FormatService aus F04), Tooltip-Formatter, Farb-Overrides, Decal-Modus.
- **KPI-Renderer:** großer Wert (formatiert), optional Vergleichswert (zweites Measure oder zweiter Zeitraum – kommt als zweite Zeile im Resultset), Delta absolut/%, Trendpfeil mit „höher ist besser"-Semantik aus der Definition; skaliert typografisch mit Kachelgröße.
- **Tabellen-Renderer:** TanStack Table (`@tanstack/angular-table`) + Virtual Scroll; Spalten aus `columns`-Definition (Reihenfolge, Sichtbarkeit, Ausrichtung, Format); clientseitige Sortierung auf dem gelieferten Resultset; serverseitiges Paging über `pageContext` ab konfigurierbarer Zeilengrenze. Styling zu 100 % über Design-Tokens (headless).
- **CALC-13-Leitplanke:** Der Renderer aggregiert nicht selbst – alle Werte kommen aus Cube; Sortierung/Paging sind die einzigen lokalen Operationen.

## 5 · Akzeptanzkriterien

- [ ] Alle VIS-01-Basistypen rendern korrekt aus Referenz-Definitionen (Snapshot-Fixtures pro Typ).
- [ ] Runtime-Filter auf nicht deklarierten Member → 400; deklarierter Filter wirkt nachweislich auf die effektive Query.
- [ ] Zahlenformate (Prozent, Währung, Dezimalstellen) greifen in Achsen, Tooltips, Labels, KPI und Tabelle identisch (FormatService).
- [ ] KPI zeigt Wert, Delta und Trendrichtung korrekt inkl. „höher ist besser"-Invertierung.
- [ ] Tabelle mit 50 000 Zeilen bleibt bedienbar (Virtual Scroll); Sortierung pro Spalte.
- [ ] Resize (Grid-Kachel, Fenster) skaliert Chart ohne Verzerrung; KPI bricht typografisch um.
- [ ] Laufende Anfrage ist abbrechbar (Loading-Indicator-Button → Cancellation bis Cube, F03-Nachweis).
- [ ] 403 von Cube → „keine Datenberechtigung"-Zustand; 502/504 → ErrorPanel mit Retry.
- [ ] `elementClick` liefert den Datenpunkt-Kontext (Member + Werte) – per Demo verifiziert.

## 6 · Testplan

- **Unit Backend:** Query-Builder (Definition×Runtime-Filter-Matrix, Presets, Limits), Filter-Validierung.
- **Unit Frontend:** Option-Factories (Resultset-Fixtures → Option-Snapshots), KPI-Delta-Logik, FormatService-Anbindung.
- **Integration:** Daten-Endpunkte mit WireMock-Cube (Erfolg, 403, Continue-wait, Abbruch).
- **E2E:** Referenz-Widget je Typ rendert auf Demo-Route.
