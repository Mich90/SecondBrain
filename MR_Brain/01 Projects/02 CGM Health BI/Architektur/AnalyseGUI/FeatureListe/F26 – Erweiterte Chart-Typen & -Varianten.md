---
title: F26 – Erweiterte Chart-Typen & -Varianten
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F26
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - widget
  - echarts
  - visualisierung
---

# F26 – Erweiterte Chart-Typen & -Varianten

> [!abstract] Ziel
> Der Widget-Renderer (F07) und der Widget-Designer (F08) werden um die im Prototyp bereits vorhandenen **Chart-Typen Heatmap, Treemap und Gauge** sowie um **Darstellungs-Varianten** der Basistypen erweitert – konfigurierbar über dieselben Definitionsschema-Mechanismen (F06).

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 (Pflichtenheft: „Später"/Iteration 2, VIS-04) · **Abhängig von:** F07, F08 · **Blockiert:** –
> **Pflichtenheft-Bezug:** VIS-04 (erweiterte Charttypen), VIS-02 (Formatierung)
> **Herkunft:** Lovable-Prototyp (`chart-config-panel.tsx`, `chart-renderer.tsx`) – dort mit ECharts umgesetzt.

## 1 · Umfang (aus dem Prototyp übernommen)

**Neue Chart-Typen:**

| Typ | Datenzuordnung | Besonderheiten |
| --- | --- | --- |
| `heatmap` | 2 Dimensionen (X + Y) + 1 Measure | Farbskala, Datenbeschriftung optional |
| `treemap` | 1 Dimension + 1 Measure | Klick-Selektion (F27) |
| `gauge` | 1 Measure, keine Dimension | Varianten: Basic / Simple / Progress-Ring; Min/Max konfigurierbar |

**Neue Varianten bestehender Typen (`visualization.variant`):**

- **Bar:** Basic · With background · **Stacked** · **Mixed line & bar** (Kombi-Chart); Orientierung vertikal/horizontal (bereits F07).
- **Line:** Basic · Smoothed · **Area** · **Stacked line** · **Stacked area**.
- **Pie:** Basic · **Donut** · **Half-Donut** · **Nightingale/Rose**.

**Zusätzliche Darstellungsoptionen:**

- X-Achsen-Label-Rotation (0–90°, 5°-Schritte).
- Gitterlinien ein/aus (bar/line); Datenbeschriftungen ein/aus (bar/line/pie/heatmap).
- Sortierung der Kategorien: keine · Wert absteigend/aufsteigend · Dimension A→Z/Z→A (numerisch-intelligent) – gilt für bar/line/pie/table/treemap.
- Kachel-Titelzeile ein-/ausblendbar (`showTitle` als Placement-Override existiert in F10; hier zusätzlich als Widget-Default).

## 2 · Scope & Abgrenzung

- **In Scope:** Schema-Erweiterung (F06: neue `chartType`-Werte, `variant`, `gauge`-Block mit min/max, Options-Flags), Option-Builder je Typ/Variante in der `ChartOptionFactory` (F07), Designer-Panels inkl. Kardinalitätsregeln (`chartTypeRules`: Heatmap = genau 2 Dimensionen, Gauge = 0 Dimensionen), Varianten-Umschalter mit Erhalt kompatibler Zuordnungen (F08-Mechanik).
- **Out of Scope:** Pivot (FINOS Perspective, eigenes Feature laut MOC), Waterfall/Sankey u. ä. (weitere VIS-04-Typen später), Sparklines/Mobile-KPI (VIS-08/05).

## 3 · Akzeptanzkriterien

- [ ] Alle neuen Typen/Varianten rendern korrekt aus Referenz-Definitionen (Option-Snapshots je Typ×Variante).
- [ ] Ablagezonen-/Kardinalitätsregeln greifen (Heatmap verlangt 2 Dimensionen, Gauge lehnt Dimensionen ab); Typwechsel benennt inkompatible Zuordnungen.
- [ ] Zahlenformate (F07-FormatService) wirken in Tooltip, Achsen, Labels und Farbskalen-Legende der neuen Typen.
- [ ] Stacked/Mixed-Varianten aggregieren ausschließlich serverseitig gelieferte Werte (CALC-13: keine Client-Aggregation).
- [ ] Decal-/Monochrom-Modus (Barrierefreiheit-Querschnitt) funktioniert auch für Heatmap/Treemap/Gauge.
- [ ] Sortieroptionen wirken konsistent über alle unterstützten Typen.

## 4 · Testplan

- **Unit:** Option-Builder-Snapshots, `chartTypeRules`-Matrix, Sortier-Comparator (numerisch/alphabetisch).
- **E2E:** Referenz-Widget je neuem Typ auf Demo-Route; Varianten-Umschaltung im Designer.
