---
title: F27 – Cross-Filtering & Chart-Interaktion
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F27
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - filter
  - cross-filtering
  - interaktion
---

# F27 – Cross-Filtering & Chart-Interaktion

> [!abstract] Ziel
> Ein Klick auf ein Chart-Element (Balken, Linienpunkt, Pie-Segment, Treemap-Knoten, Heatmap-Zelle, Tabellenzelle) setzt den entsprechenden Dimensionswert als **globalen Filter** des Dashboards (Toggle: erneuter Klick entfernt ihn). So filtern sich die Widgets gegenseitig – die im Pflichtenheft als FIL-07 beschriebene Interaktion.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 (Release-Zuordnung: Iteration 2 laut F-A11) · **Abhängig von:** F07 (`elementClick`-Event), F13 (FilterContext) · **Blockiert:** –
> **Pflichtenheft-Bezug:** FIL-07 (Cross-Filtering), FIL-09 (Zustand sichtbar/rücksetzbar – wird mitgenutzt)
> **Herkunft:** Lovable-Prototyp (`chart-renderer.tsx`, `useFilters` in `store.ts`) – dort für alle Chart-Typen inkl. aufwendiger Klick-Erkennung auf Achsen-/Kategoriebändern umgesetzt.

## 1 · User-Workflow

1. Viewer: Klick auf ein Datenelement → der Dimensionswert wird als Filter-Chip in der Filterleiste (F13) sichtbar; alle gebundenen Widgets laden neu.
2. Mehrere Werte derselben Dimension sind **ODER**-verknüpft (Mehrfachklick sammelt Werte), verschiedene Dimensionen **UND**-verknüpft.
3. Erneuter Klick auf ein bereits gefiltertes Element entfernt den Wert (Toggle); „Alle Filter zurücksetzen" (F13) räumt auch Cross-Filter ab.
4. Heatmap-Klick setzt beide Dimensionen (X und Y) in einem Schritt; Klick auf Achsen-/Kategorielabels wirkt wie Klick auf das Element.
5. Das Quell-Widget zeigt seine Selektion visuell an (Hervorhebung der gewählten Elemente).

## 2 · Scope & Abgrenzung

- **In Scope:** Auswertung des `elementClick`-Events (F07) im Viewer, Abbildung auf den `FilterContextStore` (F13) als Laufzeitfilter (`member IN values`), Toggle-/Kombinationssemantik, visuelle Selektions-Rückmeldung, Verhalten im Published-Viewer (F24: Interaktion bleibt aktiv).
- **Out of Scope (bewusst):** Hierarchischer Drill-down/-up (FIL-02 – eigenes Vorhaben), Brushing/Lasso-Mehrfachselektion, Master-Detail-Kopplungen (FIL-06), Persistenz des Selektionszustands (→ F18 gespeicherte Ansichten).

## 3 · Technisches Design

- Cross-Filter sind **normale Laufzeitfilter** im FilterContext (F13) mit Quelle `crossFilter` – sie erscheinen als Chips, respektieren `respondsToGlobalFilters`/`excludedWidgetIds` und laufen über die serverseitige Filter-Validierung (F07: nur deklarierte Member).
- Das Quell-Widget wird von seinem eigenen Cross-Filter **nicht** gefiltert (sonst bliebe nur das angeklickte Element übrig); die Dimensionsachse bleibt stabil, Selektion wird per Hervorhebung dargestellt (Verhalten aus dem Prototyp übernommen).
- Klick-Kontext liefert F07 (`elementClick`: Member + Werte); für Bar/Line gehört die Erkennung von Klicks auf Kategoriebänder/Achsenlabels zur Renderer-Implementierung.
- Kennzahlen mit „ignoriert globale Filter"-Deklaration (F28) sind auch von Cross-Filtern ausgenommen – eine gemeinsame Bindungslogik.

## 4 · Akzeptanzkriterien

- [ ] Klick auf Element jedes unterstützten Typs (bar, line, pie, table, treemap, heatmap) setzt den korrekten Filter; Toggle entfernt ihn.
- [ ] ODER innerhalb einer Dimension, UND über Dimensionen – nachweisbar an den effektiven Queries.
- [ ] Quell-Widget behält seine Achse/Elemente und zeigt die Selektion hervorgehoben.
- [ ] Chips, Einzel-Entfernen und „Alle zurücksetzen" funktionieren für Cross-Filter identisch zu konfigurierten Filtern (FIL-09).
- [ ] Nicht gebundene Widgets (Deklaration/Ausschluss/anderer Layer) bleiben unberührt; nur Member, die die Definition deklariert, erreichen das Backend (400 sonst).
- [ ] Schnelle Klickfolgen brechen veraltete Requests ab (F07-Cancellation, kein Stale-Rendering).
- [ ] Funktioniert im Editor-Vorschau-Modus und im Published-Viewer.

## 5 · Testplan

- **Unit:** Toggle-/Kombinationslogik, Bindung inkl. F28-Ausnahmen, Quell-Widget-Ausnahme.
- **Component:** Klick-Erkennung je Chart-Typ (inkl. Achsenband-Fälle), Selektions-Hervorhebung.
- **E2E:** Dashboard mit 3 Widgets – Klick-Kaskade, Chips, Toggle, Reset.
