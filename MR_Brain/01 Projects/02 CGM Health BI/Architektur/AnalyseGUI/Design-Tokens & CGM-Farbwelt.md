---
title: Design-Tokens & CGM-Farbwelt
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
status: entwurf
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - design
  - theme
  - cgm-farben
  - tokens
---

# Design-Tokens & CGM-Farbwelt

> [!abstract] Zweck
> Verbindliche Startbelegung der Design-Token-Schicht ([[F04 – Frontend-Shell & Theme]]) mit der **CGM-Markenfarbwelt**, damit die AnalyseGUI von Beginn an im CGM-Look erscheint. Die Token-Architektur bleibt unverändert – der spätere VIA-Umstieg (F-A2) ist weiterhin ein reiner Token-Austausch; bis dahin sind die CGM-Farben die Token-Werte.

> [!warning] Quellenlage & Verifikationspflicht
> Das offizielle **CGM Brand Portal** (`brand-portal.cgm.com`) ist nur mit CGM-Login zugänglich. Die untenstehenden Kernwerte stammen aus öffentlich verfügbaren CGM-Markenassets (u. a. dominantes CGM-Blau `#003366`, helles Blaugrau `#E5EAEF`, Neutralgrau `#919191`; die CGM-Website nutzt zusätzlich Gelb- und Grün-Akzente). **Vor F04-Umsetzung müssen die Werte gegen das Brand Portal verifiziert und ggf. korrigiert werden** – nur die Token-Werte ändern sich dann, keine Struktur. → Aufgabe: Brand-Portal-Auszug (Farben, ggf. Schrift) als Anhang in diesem Ordner ablegen.

---

## 1 · Token-Struktur (zweistufig)

Alle Komponenten und das ECharts-Theme referenzieren **ausschließlich semantische Tokens**; die Markenwerte liegen eine Ebene darunter. So bleibt der VIA-/Brand-Portal-Abgleich auf Stufe 1 begrenzt.

```scss
/* Stufe 1 – Markenwerte (einzige Stelle mit Hex-Codes) */
:root {
  --cgm-blue-900: #001F3F;   /* abgedunkelt, Hover/aktive Navigation */
  --cgm-blue-700: #003366;   /* CGM-Blau (Kernfarbe, verifiziert) */
  --cgm-blue-500: #3D7DC8;   /* aufgehellte Interaktionsstufe (Entwurf) */
  --cgm-blue-100: #E5EAEF;   /* helles CGM-Blaugrau, Flächen (verifiziert) */
  --cgm-grey-500: #919191;   /* CGM-Neutralgrau (verifiziert) */
  --cgm-grey-900: #2B2B2B;   /* Text (Entwurf) */
  --cgm-grey-050: #F7F9FB;   /* App-Hintergrund (Entwurf) */
  --cgm-yellow-500: #F2C14E; /* Akzent Gelb, an Website angelehnt (Entwurf) */
  --cgm-green-500: #4CAF7D;  /* Akzent Grün, an Website angelehnt (Entwurf) */
  --cgm-red-500:  #C4453C;   /* Fehler (Entwurf) */
}

/* Stufe 2 – semantische Tokens (von Komponenten & Charts genutzt) */
:root {
  --color-primary:            var(--cgm-blue-700);
  --color-primary-hover:      var(--cgm-blue-900);
  --color-primary-muted:      var(--cgm-blue-100);
  --color-accent:             var(--cgm-blue-500);
  --color-bg-app:             var(--cgm-grey-050);
  --color-bg-surface:         #FFFFFF;
  --color-bg-surface-alt:     var(--cgm-blue-100);
  --color-text:               var(--cgm-grey-900);
  --color-text-muted:         var(--cgm-grey-500);
  --color-border:             color-mix(in srgb, var(--cgm-grey-500) 35%, white);
  --color-success:            var(--cgm-green-500);
  --color-warning:            var(--cgm-yellow-500);
  --color-error:              var(--cgm-red-500);
  --color-info:               var(--cgm-blue-500);
  --focus-ring:               var(--cgm-blue-500);
}
```

**UI-Verwendung (Richtschnur):** Topbar/Navigation in CGM-Blau 700 mit weißer Schrift; App-Hintergrund Grau 050; Karten/Kacheln weiß mit Blaugrau-100-Akzentflächen; Primär-Buttons Blau 700, Hover Blau 900; Fokus-Ring Blau 500 (sichtbar auf hell und dunkel).

## 2 · Chart-Serienpalette (ECharts-Theme `hbi`)

Anforderungen: 8 unterscheidbare Serienfarben, im CGM-Blau verankert, ausreichender Kontrast auf Weiß, gemeinsam mit Decal-Mustern auch monochrom lesbar (Barrierefreiheits-Querschnitt).

| Slot | Token | Startwert (Entwurf) | Rolle |
| --- | --- | --- | --- |
| 1 | `--chart-1` | `#003366` | CGM-Blau (Leitserie) |
| 2 | `--chart-2` | `#3D7DC8` | Mittelblau |
| 3 | `--chart-3` | `#00A0B0` | Petrol |
| 4 | `--chart-4` | `#4CAF7D` | Grün |
| 5 | `--chart-5` | `#F2C14E` | Gelb |
| 6 | `--chart-6` | `#E07A5F` | Terrakotta |
| 7 | `--chart-7` | `#8E9AAF` | Graublau |
| 8 | `--chart-8` | `#7A5FA0` | Violett |

Zusätzlich: `--chart-positive` = `--color-success`, `--chart-negative` = `--color-error`, `--chart-target-line` = `--cgm-blue-900`, `--chart-grid` = `--color-border`. Sequenzielle Skala (Heatmaps, später): Blau-100 → Blau-900; divergierend: Terrakotta ↔ Blaugrau ↔ CGM-Blau.

**Regeln:** Ampellogik (VIS-06) nutzt ausschließlich `--chart-positive/-negative/--color-warning` plus Decals – nie Rohwerte. KPI-Trendindikatoren dito. Die ECharts-Theme-Erzeugung (F04, 3.3) liest alle Chart-Tokens zur Laufzeit per `getComputedStyle` – Brand-Portal-Korrekturen wirken damit ohne Codeänderung in jedem Chart.

## 3 · Kontrast-Leitplanken

- Text auf `--color-primary` (Blau 700): Weiß → Kontrast > 10:1 ✅
- `--color-text` auf `--color-bg-app`: > 12:1 ✅
- Gelb 500 nie als Textfarbe auf Weiß (Kontrast unzureichend) – nur als Fläche/Akzent mit dunkler Beschriftung.
- Jede Serienfarbe wird beim finalen Abgleich auf ≥ 3:1 gegen Weiß geprüft (Non-Text-Kontrast, WCAG 1.4.11); Korrekturen nur auf Stufe 1.

## 4 · Aufgaben

- [ ] Brand-Portal-Werte beschaffen (CGM-intern) und Stufe-1-Tokens verifizieren/korrigieren; Ergebnis hier dokumentieren (Version 0.2).
- [ ] Klären, ob eine CGM-Hausschrift lizenziert für Web-Apps verfügbar ist (Logo-Font „Handel Gothic" ist explizit nur fürs Logo); bis dahin System-Font-Stack.
- [ ] Nach VIA-Verfügbarkeit: Mapping VIA-Tokens → Stufe 1 (ersetzt diese Startwerte, F-A2).

---

## Änderungshistorie

| Version | Datum | Änderung |
| --- | --- | --- |
| 0.1 | 2026-07-28 | Erstfassung: zweistufige Token-Struktur mit CGM-Farbwelt als Startbelegung, Chart-Palette, Kontrast-Leitplanken, Verifikationsaufgaben |
