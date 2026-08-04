---
title: F08 – Widget-Designer
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F08
phase: 1
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - widget
  - designer
---

# F08 – Widget-Designer

> [!abstract] Ziel
> Nutzer mit Designer-Rolle erstellen und bearbeiten Widgets in einer dreigeteilten Oberfläche (Daten · Canvas/Live-Preview · Eigenschaften): Verbindung + Cube wählen, Felder zuordnen, Visualisierung und Formatierung konfigurieren, live sehen, speichern.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 1 · **Abhängig von:** F05, F06, F07 · **Blockiert:** F12
> **Pflichtenheft-Bezug:** DES-01/02/04 (Designer, Dreiteilung, Drag & Drop), VIS-02 (Formatierung pro Element)
> **Entscheidungen:** F-A6 (Designer-Rolle), F-A7 (Änderung wirkt sofort, Usage-Hinweis)

## 1 · User-Workflow

1. `/widgets` → „Neues Widget" (oder bestehendes öffnen; Route `/widgets/{id}/edit`).
2. Typ wählen (Chart/KPI/Tabelle/Text), Verbindung + Cube wählen (bei Bestand vorbelegt).
3. Linkes Panel: `MetaFieldListComponent` (F05). Felder per Drag oder Klick in **Ablagezonen** ziehen: je nach Typ z. B. „Kennzahlen", „Kategorie", „Serien", „Zeitachse", „Filter" (Chart) bzw. „Wert"/„Vergleich" (KPI) bzw. „Spalten" (Tabelle).
4. Mitte: Live-Preview über den echten Renderer (F07, `preview/data`), debounced bei jeder Definitionsänderung; darunter aufklappbar die effektive Query + Datenvorschau als Tabelle.
5. Rechtes Panel: Eigenschaften in Abschnitten – Allgemein (Name, Beschreibung, Tags), Daten (Sortierung, Limit, Widget-Filter mit Operatoren, Zeitraum inkl. relativer Presets), Visualisierung (Charttyp-Wechsel, Farben, Legende, Achsen, Datenbeschriftung, Zahlenformate je Measure), Verhalten (`respondsToGlobalFilters`-Deklaration).
6. Speichern: Validierung (F06) → bei bestehendem Widget Usage-Abfrage; > 0 → Bestätigungsdialog „wirkt sofort in n Dashboards" (F-A7). Verlassen mit ungespeicherten Änderungen → Guard-Dialog (`DirtyState`, F04).

## 2 · Scope & Abgrenzung

- **In Scope:** Designer-Route + Layoutrahmen, Ablagezonen-Logik mit Typregeln, Eigenschaften-Panels für die F07-Typen, Live-Preview-Anbindung, Speichern-/Duplizieren-/Löschen-Flows inkl. Fehlerdarstellung der Backend-Validierung, Widget-Liste `/widgets` (einfache Tabelle mit Suche – der volle Katalog kommt in F17).
- **Out of Scope:** Neue Endpunkte (nutzt F06/F07 vollständig), Dashboard-Kontext (F12), erweiterte Charttypen (Iteration 2 – Panels erweiterbar strukturieren).

## 3 · Technisches Design

- Zustand als `WidgetDraftStore` (Signals): hält die Definition als einzige Quelle; Ablagezonen und Eigenschaften-Panels sind reine Projektionen darauf; jede Mutation läuft über typisierte Aktionen (`addMeasure`, `setSort`, `setFormat` …) → einfache Testbarkeit und späterer Undo-Anschluss.
- **Typregeln der Ablagezonen** (aus dem Drag-Payload von F05): Measures nur in Kennzahl-Zonen, Zeit-Dimensionen in „Zeitachse", Dimensionen in Kategorie/Serien/Spalten; Verstoß → Zone visuell gesperrt + Tooltip. Kardinalitätsregeln je Charttyp (z. B. Pie: genau 1 Measure + 1 Dimension) als deklaratives Regelwerk `chartTypeRules`, das auch der Charttyp-Wechsler nutzt (inkompatible Zuordnungen werden benannt statt stumm verworfen).
- Live-Preview: `preview/data` mit 400-ms-Debounce; laufender Request wird bei neuer Änderung abgebrochen (F07-Cancellation); Backend-Validierungsfehler (unbekannte Member etc.) erscheinen inline an der betroffenen Zone/Eigenschaft.
- Zahlenformat-Editor als wiederverwendbare Komponente (Art, Dezimalstellen, Einheit/Währung, Tausendertrennung) – wird von F13/F19 mitgenutzt.
- Charttyp-Wechsel erhält kompatible Zuordnungen (Mapping-Tabelle Kategorie↔x-Achse etc.).

## 4 · Akzeptanzkriterien

- [ ] Route nur mit Rolle `hbi-designer` erreichbar (Guard + 403-Verhalten).
- [ ] Vollständiger Neu-Anlage-Flow je Typ (Chart/KPI/Tabelle/Text) bis zum gespeicherten Widget.
- [ ] Ablagezonen erzwingen Typ- und Kardinalitätsregeln; unzulässige Drops werden erklärt.
- [ ] Preview aktualisiert debounced; parallele Edits erzeugen keine Race-Anzeigen (letzter Request gewinnt).
- [ ] Backend-Validierungsfehler erscheinen an der richtigen Stelle im UI.
- [ ] Speichern eines verwendeten Widgets zeigt den Usage-Bestätigungsdialog mit korrekter Dashboard-Anzahl.
- [ ] Duplizieren öffnet die Kopie im Designer; Löschen eines verwendeten Widgets zeigt die 409-Dashboard-Liste.
- [ ] Dirty-Guard beim Verlassen; Charttyp-Wechsel erhält kompatible Feldzuordnungen.

## 5 · Testplan

- **Unit:** DraftStore-Aktionen, `chartTypeRules`, Charttyp-Wechsel-Mapping.
- **Component:** Ablagezonen (Drop-Matrix), Eigenschaften-Panels, Fehler-Inlining.
- **E2E:** Neu anlegen → formatieren → speichern → wieder öffnen → ändern → Usage-Dialog.
