---
title: F13 – Filterkontext & Filter-Widgets
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F13
phase: 2
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - filter
  - dashboard
---

# F13 – Filterkontext & Filter-Widgets

> [!abstract] Ziel
> Dashboards haben einen **globalen Filterkontext**: konfigurierte Filter (Dimensions-Listboxen vertikal/horizontal mit Mehrfachauswahl, Zeitraum mit Presets) wirken auf alle gebundenen Widgets. Der aktuelle Filterzustand ist jederzeit sichtbar und mit einem Klick zurücksetzbar.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 2 · **Abhängig von:** F07, F10 (Editor-Einbettung: F12) · **Blockiert:** F14, F18
> **Pflichtenheft-Bezug:** FIL-01 (globale Filter, Muss), FIL-08 (Filterarten inkl. relativer Zeiträume), FIL-09 (Zustand sichtbar/rücksetzbar), Vorbereitung FIL-05/06/07
> **Restpunkt:** Herkunft der vorhandenen Listbox-Komponenten (F-A2-Nachtrag) – Integrationsdetails werden bei Klärung ergänzt.

## 1 · User-Workflow

**Konfiguration (Designer, in F12):** Im Dashboard-Eigenschaften-Panel Filter hinzufügen: Typ (Dimensions-Listbox vertikal/horizontal · Zeitraum), Quelle (Verbindung + Dimension), Darstellung (Label, Mehrfachauswahl, Suchfeld ab n Werten), Default-Wert (fest oder „alle" bzw. Zeitraum-Preset), Platzierung (Filterleiste oben **oder** als Filter-Widget frei im Grid). Danach je Filter die Widget-Bindung: Standard „alle Widgets, die den Member deklarieren" (aus `respondsToGlobalFilters`, F07), abwählbar pro Widget.

**Nutzung (Viewer, F14):** Filterleiste zeigt alle Filter; Auswahl ändern → gebundene Widgets laden neu. Aktive Abweichungen vom Default erscheinen als **Chips** („Standort: Haus A, Haus B ✕"); „Alle Filter zurücksetzen" stellt Defaults wieder her (FIL-09). Zeitraumfilter bietet Presets (heute, letzte 7/30 Tage, letzte X Monate, aktuelles/letztes Jahr, benutzerdefiniert von–bis).

## 2 · Scope & Abgrenzung

- **In Scope:** `GlobalFilterConfigJson`-Schema, Konfigurations-Editor (in F12 eingebettet), Laufzeit-`FilterContextStore`, Filterleiste + Chips + Reset, Dimensionswerte-Endpunkt, Filter-Widget-Darstellungsmodi **Dropdown (Single-Select) · Listbox vertikal (Multi-Select) · Button-Leiste horizontal (Multi-Toggle)** (aus dem Lovable-Frontend übernommen; `display.widget: listbox | dropdown | buttons`), **assoziative Werte-Einschränkung** (Wertelisten werden durch die übrigen aktiven Filter eingeschränkt – im Lovable-Frontend umgesetzt, entspricht `contextFilters` in 3.2), Zeitraumfilter mit Presets, Verteilung an Widget-Daten-Requests (F07 `runtimeFilters`).
- **Out of Scope (Iteration 2, Andockpunkte vorbereitet):** Cross-Filtering aus Chart-Klicks (FIL-07 – nutzt später denselben FilterContext über das `elementClick`-Event aus F07), lokale Elementfilter (FIL-05), Master-Detail (FIL-06), Speichern/Teilen von Filterzuständen (F18 – der Store ist dafür bereits serialisierbar).

## 3 · Technisches Design

### 3.1 Konfigurationsschema (`Dashboard.GlobalFilterConfigJson`)

```json
{
  "schemaVersion": 1,
  "filters": [
    {
      "id": "flt-standort",
      "kind": "dimension",
      "semanticLayerId": "…",
      "member": "Standort.name",
      "label": "Standort",
      "display": { "widget": "listbox", "orientation": "vertical", "multiSelect": true, "searchThreshold": 15 },
      "placement": { "mode": "filterBar" },
      "default": { "type": "all" },
      "excludedWidgetIds": []
    },
    {
      "id": "flt-zeitraum",
      "kind": "timeRange",
      "semanticLayerId": "…",
      "member": "Faelle.aufnahmedatum",
      "label": "Zeitraum",
      "default": { "type": "relative", "unit": "month", "count": 12 },
      "excludedWidgetIds": []
    }
  ]
}
```

`placement.mode: "grid"` erlaubt alternativ die Platzierung als Filter-Widget-Kachel (Placement referenziert dann die Filter-Id statt einer Widget-GUID – `WidgetPlacement.LocalOverridesJson.filterId`, kein eigenes Widget-Entity nötig).

### 3.2 Dimensionswerte-Endpunkt

`POST /api/semantic-layers/{id}/dimension-values` · Body `{ member, search?, limit (Default 500), contextFilters? }` → distinct-Werte via Cube-Load (nur die Dimension, sortiert). User-Token durchgereicht → die Listbox zeigt **nur Werte, die der Nutzer laut Cube-RLS sehen darf**. `contextFilters` ermöglicht später abhängige Filter (Haus → Fachabteilung), im Kernrelease ungenutzt.

### 3.3 Laufzeit

- **`FilterContextStore`** (Signals, pro Dashboard-Instanz): `values: Record<filterId, FilterValue>`, abgeleitet `runtimeFiltersFor(widget)` → mappt auf F07-`runtimeFilters` (Dimension: `member IN values`; TimeRange: aufgelöst serverseitig, es wird das Preset-Objekt übertragen). Änderung → gebundene Widgets laden parallel neu; laufende Requests der betroffenen Widgets werden abgebrochen (F07-Cancellation) → FIL-17.
- **Bindung:** Ein Widget erhält einen Filter, wenn (a) der Filter-Member in dessen `respondsToGlobalFilters` deklariert ist **und** (b) die Widget-Id nicht in `excludedWidgetIds` steht **und** (c) Widget und Filter dieselbe `semanticLayerId` haben. Nicht bindbare Kombinationen zeigt der Konfigurations-Editor an („wirkt auf 4 von 6 Widgets" mit Aufklappliste).
- **Serialisierbarkeit:** `FilterContextStore.toState()/fromState()` (JSON) – Grundlage für Deeplinks/gespeicherte Ansichten (F18) ohne Umbau.
- Der Zustand ist URL-unabhängig im Kernrelease; Seitenwechsel innerhalb des Dashboards behält den Kontext (dashboardweiter Filter).

## 4 · Akzeptanzkriterien

- [ ] Designer kann Dimensions- und Zeitraumfilter konfigurieren (inkl. Default, Orientierung, Mehrfachauswahl, Platzierung Leiste/Grid).
- [ ] Listbox lädt Werte über den Dimensionswerte-Endpunkt; Suche ab Schwellwert; RLS-Wirkung nachweisbar (Testnutzer sieht reduzierte Werteliste).
- [ ] Filteränderung lädt genau die gebundenen Widgets neu; ausgeschlossene und layer-fremde Widgets bleiben unberührt.
- [ ] Schneller Doppelwechsel bricht veraltete Requests ab (kein Stale-Rendering).
- [ ] Chips zeigen aktive Abweichungen; Einzel-✕ und „Alle zurücksetzen" stellen Defaults her (FIL-09).
- [ ] Zeitraum-Presets liefern serverseitig korrekte Datumsgrenzen (Fixture-Tests um Monats-/Jahreswechsel).
- [ ] Seitenwechsel im Dashboard behält den Filterzustand; `toState`/`fromState`-Roundtrip ist verlustfrei.
- [ ] Filterleiste und Listboxen sind responsive und tastaturbedienbar.

## 5 · Testplan

- **Unit:** Bindungslogik (Matrix aus deklarierten Membern × Ausschlüssen × Layern), Preset-Auflösung (Backend), Store-Serialisierung.
- **Integration:** Dimensionswerte-Endpunkt (WireMock-Cube, RLS-Szenario), F07-Zusammenspiel (runtimeFilters).
- **E2E:** Dashboard mit 2 Filtern und 3 Widgets – filtern, Chips, Reset, Seitenwechsel.
