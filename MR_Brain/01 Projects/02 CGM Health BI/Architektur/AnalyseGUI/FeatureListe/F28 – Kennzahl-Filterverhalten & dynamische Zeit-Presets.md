---
title: F28 – Kennzahl-Filterverhalten & dynamische Zeit-Presets
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F28
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - widget
  - filter
  - kennzahl
---

# F28 – Kennzahl-Filterverhalten & dynamische Zeit-Presets

> [!abstract] Ziel
> **Pro Kennzahl** eines Widgets lässt sich das Filterverhalten steuern: globale Filter ganz oder für einzelne Dimensionen ignorieren und zusätzliche feste Filter (inkl. dynamischer Zeit-Presets wie „aktuelles Jahr" / „Vorjahr") hinterlegen. Damit sind **Vergleichskennzahlen in einem Chart** möglich – z. B. „Umsatz aktuelles Jahr" neben „Umsatz Vorjahr", unabhängig vom gewählten Zeitraumfilter (Set-Analysis-Prinzip).

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 · **Abhängig von:** F06 (Schema), F07 (Query-Builder), F13 (Filterbindung) · **Blockiert:** –
> **Pflichtenheft-Bezug:** CALC-* (Vergleichs-/Referenzwerte), FIL-05-Verwandtschaft (lokale Elementfilter)
> **Herkunft:** Lovable-Prototyp (`measure-filters-editor.tsx`, `resolveDynamicFilter` in `aggregate.ts`) – dort clientseitig ausgewertet; in der Zielarchitektur wandert die Auswertung in den serverseitigen Query-Builder.

## 1 · User-Workflow

Im Widget-Designer (F08), Eigenschaften einer Kennzahl → Abschnitt „Filterverhalten":

1. **Globale Filter ignorieren** (Schalter): Die Kennzahl reagiert nicht auf Dashboard-/Cross-Filter (z. B. für eine „Gesamt"-Referenzlinie).
2. **Filter einzelner Dimensionen ignorieren** (Mehrfachauswahl): z. B. Zeitraumfilter ignorieren, Standortfilter aber anwenden.
3. **Feste Zusatzfilter** je Kennzahl: Dimension/Member + Operator (`= ≠ > ≥ < ≤` numerisch; `= ≠ in` für Texte, `in` mit Wertelisten-Editor) + Wert **oder** dynamisches Preset: **aktuelles Jahr · Vorjahr · aktueller Monat · aktuelles Quartal · heute** – die Presets werden bei jeder Ausführung serverseitig gegen „jetzt" aufgelöst.

Die Live-Preview (F08) zeigt die Wirkung sofort; ein Info-Icon an der Kennzahl macht abweichendes Filterverhalten im Designer sichtbar.

## 2 · Scope & Abgrenzung

- **In Scope:** Schema-Erweiterung der Widget-Definition (je Measure: `ignoreAllGlobalFilters`, `ignoreFiltersOn[]`, `additionalFilters[]` mit statischen Werten und dynamischen Presets), serverseitige Auflösung im Query-Builder (F07), Designer-UI (F08-Panel), Zusammenspiel mit F13/F27-Bindung.
- **Out of Scope (bewusst):** Freie Formel-/berechnete Kennzahlen (Semantic-Layer-Aufgabe bzw. späteres CALC-Feature), Periodenvergleich als KPI-Automatik (bereits in F07-KPI: Vergleichswert/Trend), benutzerdefinierte Preset-Definitionen.

## 3 · Technisches Design

### 3.1 Schema-Erweiterung (F06, `visualization`-unabhängig je Measure)

```json
"measureOptions": {
  "Faelle.anzahl": {
    "ignoreAllGlobalFilters": false,
    "ignoreFiltersOn": ["Faelle.aufnahmedatum"],
    "additionalFilters": [
      { "member": "Faelle.aufnahmedatum", "preset": "currentYear" },
      { "member": "Standort.name", "operator": "equals", "values": ["Haus A"] }
    ]
  }
}
```

Presets: `currentYear | previousYear | currentMonth | currentQuarter | today` – Auflösung serverseitig (Zeitzone konfigurierbar, identische Logik wie F13-Zeitraum-Presets).

### 3.2 Query-Bau (F07-Erweiterung)

- Kennzahlen mit identischem effektiven Filtersatz teilen sich **eine** Cube-Query; abweichende Kennzahlen erzeugen Zusatz-Queries, deren Resultsets über die gemeinsamen Dimensionen zusammengeführt werden (Merge auf Dimensionsschlüssel, serverseitig – das Frontend erhält weiterhin **ein** Resultset).
- Laufzeitfilter-Verteilung (F13/F27) berücksichtigt `ignore*`-Deklarationen: ausgenommene Filter werden für die betroffene Teil-Query weggelassen.
- Validierung: `additionalFilters`-Member müssen laut Meta-API existieren (F06-Validator); Presets nur auf Zeit-Dimensionen.

## 4 · Akzeptanzkriterien

- [ ] Kennzahl mit `ignoreAllGlobalFilters` bleibt bei Filteränderungen nachweislich konstant; übrige Kennzahlen reagieren.
- [ ] `ignoreFiltersOn` nimmt genau die benannten Member aus; Kombination mit Cross-Filtern (F27) konsistent.
- [ ] Dynamische Presets liefern korrekte Grenzen (Fixture-Tests um Jahres-/Quartals-/Monatswechsel, Zeitzonen-Fall).
- [ ] Chart mit „aktuelles Jahr" + „Vorjahr"-Kennzahl zeigt beide Reihen korrekt über gemeinsame Dimensionen gemergt.
- [ ] Ungültige Member/Presets werden beim Speichern mit benannter Fehlermeldung abgelehnt (400).
- [ ] Designer zeigt abweichendes Filterverhalten sichtbar an; Zahlenformat-Overrides je Kennzahl (F07) bleiben unberührt.

## 5 · Testplan

- **Unit:** Preset-Auflösung, Query-Splitting/-Merging (Matrix aus ignore-Flags × Zusatzfiltern), Validierung.
- **Integration:** Daten-Endpunkt mit WireMock-Cube (Mehr-Query-Fall), F13-Zusammenspiel.
- **E2E:** Vergleichs-Widget (aktuelles Jahr vs. Vorjahr) unter wechselnden globalen Filtern.
