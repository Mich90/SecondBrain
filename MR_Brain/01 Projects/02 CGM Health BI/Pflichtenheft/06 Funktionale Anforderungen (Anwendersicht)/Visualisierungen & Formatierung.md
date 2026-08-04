---
title: Visualisierungen & Formatierung
project: "[[CGM Health BI]]"
bereich: funktional
thema: visualisierung
status: entwurf
tags:
  - pflichtenheft
  - funktional
  - visualisierung
---

# Visualisierungen & Formatierung

> [!info] Legende
> **Muss** = Must-Have · **Kann** = Nice-to-have.

## Muss-Anforderungen

| ID | Anforderung |
| --- | --- |
| VIS-01 | Standardvisualisierungen: Tabellen, Balken-, Säulen-, Linien-, Flächen-, Punkt-/Scatter-, Kreis-/Donutdiagramme, KPI-Kacheln. |
| VIS-02 | Visualisierungen pro Element anpassbar: Farben, Achsenskalierung, Sortierung, Aggregation, Datenbeschriftung, Legende, Zahlenformate (Prozent, Währung, Einheiten). |
| VIS-03 | Dashboards auf Desktop, Tablet und Smartphone nutzbar; Visualisierungen reagieren responsiv auf die verfügbare Fläche. |

## Kann-Anforderungen

| ID | Anforderung |
| --- | --- |
| VIS-04 | Erweiterte Visualisierungen, z. B. Waterfall, Treemap, Heatmap, Boxplot, Histogramm, Bullet-Chart, kombinierte Diagramme, Funnel, Gantt-ähnliche Verläufe (z. B. für OP-Zeiten). |
| VIS-05 | Für mobile Endgeräte eine reduzierte, KPI-orientierte Darstellung. |
| VIS-06 | Farbskalen/Ampellogik: definierbare Schwellenwerte, divergierende Farbskalen, Ziel- und Grenzwertlinien. |
| VIS-07 | Pivot-/Matrix-Ansichten: freie Anordnung von Dimensionen in Zeilen/Spalten, inkl. Subtotals, Grand Totals und Gruppierungen. |
| VIS-08 | Sparklines und Trendindikatoren (z. B. Pfeile, Minicharts) ohne zusätzliche Backend-Logik konfigurierbar, sofern die zugrunde liegende Zeitreihe bereitgestellt wird. |

> [!warning] Barrierefreiheit
> Gemäß [[UI, UX & Design#Barrierefreiheit / Monochromatische Darstellung]] müssen alle Visualisierungen auch monochromatisch lesbar und unterscheidbar sein – das betrifft insbesondere VIS-06 (Farbskalen).
