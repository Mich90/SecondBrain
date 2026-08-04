---
title: F11 – Grid-Layout-Engine
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F11
phase: 2
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - frontend
  - grid
  - responsive
---

# F11 – Grid-Layout-Engine

> [!abstract] Ziel
> Eine wiederverwendbare Grid-Komponente auf Basis von **angular-gridster2**, die Widget-Placements einer Dashboard-Seite frei anordnet: im Edit-Modus mit Drag & Resize, im View-Modus statisch – mit Breakpoint-Layouts für Desktop/Tablet/Phone (VIS-03).

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 2 · **Abhängig von:** F04 · **Blockiert:** F12, F14
> **Pflichtenheft-Bezug:** VIS-03 (responsive), DES-05 (Drag & Drop-Anordnung)

## 1 · Nutzungsszenario

F12 (Designer) und F14 (Viewer) binden `<hbi-dashboard-grid [placements] [mode]>` ein. Im Edit-Modus zieht der Nutzer Kacheln, ändert Größen und erhält Layout-Änderungs-Events (die F12 als Batch-Update persistiert, F10). Im View-Modus rendert das Grid das für den aktuellen Breakpoint passende Layout; auf Phone fällt es auf eine einspaltige, nach Position sortierte Stapel-Ansicht zurück.

## 2 · Scope & Abgrenzung

- **In Scope:** Grid-Wrapper-Komponente, Gridster-Konfiguration, `LayoutJson`-Vertrag + Konvertierung, Breakpoint-Strategie inkl. automatischer Ableitung, Kachelrahmen (Titelzeile mit Overrides aus Placement, Aktions-Slot).
- **Out of Scope:** Widget-Inhalt (Renderer, F07 – der Kachelinhalt ist Content-Projection), Persistenz (F10), Seiten-/Toolbar-UI (F12/F14).

## 3 · Technisches Design

- **`LayoutJson`-Vertrag** (persistiert in `WidgetPlacement`, F10):
  ```json
  { "desktop": {"x":0,"y":0,"cols":6,"rows":4},
    "tablet":  {"x":0,"y":0,"cols":4,"rows":4},
    "phone":   {"order": 2} }
  ```
  Nur `desktop` ist Pflicht (Quelle der Wahrheit beim Gestalten). `tablet` wird bei Fehlen deterministisch abgeleitet (Spaltenskalierung 12→8 mit Umbruch), `phone` ist eine reine Reihenfolge (Stapel).
- **Gridster-Konfiguration:** 12 Spalten (desktop) / 8 (tablet), feste Zeilenhöhe aus Token, `compactType: none` (freie Anordnung, kein Auto-Zusammenschieben), Kollisions-Push aktiv, Mindestgröße je Widget-Typ (KPI 2×2, Chart 4×3 – zentral konfiguriert), Drag-Handle nur in der Titelzeile (damit Chart-Interaktion nicht mit Drag kollidiert).
- **Modus:** `mode: 'edit' | 'view'` schaltet draggable/resizable; im View-Modus keine Gridster-Interaktion (Performance + saubere Touch-Gesten).
- **Events:** `layoutChanged(placements[])` gebündelt nach Drag-/Resize-Ende (debounced) – passt zum Batch-Endpunkt aus F10.
- **Kachelrahmen:** Titel (aus `LocalOverridesJson.title` sonst Widget-Name), optionaler Aktions-Slot (F14: Vollbild; F12: Entfernen/Eigenschaften); Rahmen-Styling ausschließlich über Tokens.
- **Resize-Kopplung:** Kachelgrößen-Änderung triggert den `ResizeObserver`-Pfad des Renderers (F07) – kein manuelles Nach-Resizen nötig.

## 4 · Akzeptanzkriterien

- [ ] Edit-Modus: Drag & Resize mit Push-Verhalten, Mindestgrößen greifen, `layoutChanged` liefert konsistente Koordinaten.
- [ ] View-Modus: keine Drag-/Resize-Affordances, Charts bleiben voll interaktiv (Tooltip, Legende).
- [ ] Breakpoint-Wechsel (Desktop→Tablet→Phone) rendert das jeweilige Layout; Phone stapelt in definierter Reihenfolge.
- [ ] Tablet-Ableitung ist deterministisch (gleicher Input → gleiches Layout, Snapshot-Test).
- [ ] Kachel-Titel-Override aus Placement wirkt; Aktions-Slot projizierbar.
- [ ] Grid mit 30 Widgets bleibt beim Draggen flüssig (Perf-Smoke).

## 5 · Testplan

- **Unit:** Layout-Konvertierung (`LayoutJson` ↔ Gridster-Items), Tablet-Ableitung, Mindestgrößen.
- **Component:** Modus-Umschaltung, Event-Bündelung.
- **E2E (mit F12):** Anordnen, Resize, Reload → Layout identisch.
