---
title: F21 – Berichts-Designer & -Viewer
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F21
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - bericht
  - report
  - print
---

# F21 – Berichts-Designer & -Viewer

> [!abstract] Ziel
> Neben Dashboards gibt es **druckorientierte Berichte**: feste Seitenformate (A4 Hoch/Quer), Kopf- und Fußzeilen mit Platzhalter-Tokens, Widgets auf Seiten platziert. Berichte werden im Designer erstellt, als Vorschau geprüft und im Viewer seitengetreu gerendert – die Grundlage für die PDF-Erzeugung und Verteilung (F22).

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 · **Abhängig von:** F07, F10 (Strukturmuster), F24 (Publishing) · **Blockiert:** F22
> **Pflichtenheft-Bezug:** EXP-* (Berichtswesen; hebt die bisherige Out-of-Scope-Setzung „Report-Engine" teilweise auf)
> **Herkunft:** Lovable-Prototyp (`/reports`, `/reports/$reportId`, `/published-report/$reportId`, `report-layout-dialog.tsx`, `reports-store.ts`) – dort UI-seitig umgesetzt, Persistenz nur LocalStorage.

## 1 · User-Workflow

1. `/reports`: Berichtsübersicht als Karten (Name, Beschreibung, Datenmodell/Verbindung, Seiten-/Widget-Zähler, Publikationsstatus); „Neuer Bericht" (Name + Datenquelle), Löschen mit Bestätigung.
2. Berichts-Editor: Inline-Umbenennen, Edit-/Vorschau-Umschalter, Veröffentlichen/Zurückziehen (F24).
3. **Seitenverwaltung** wie im Dashboard-Designer (anlegen, umbenennen, löschen, min. 1 Seite), zusätzlich **Seitenformat pro Seite**: A4 Hochformat oder A4 Querformat. Der Editor rendert eine maßstabsgetreue Seitenvorschau (Blattrahmen), auf der Widgets im Grid platziert, verschoben und skaliert werden.
4. **Kopf-/Fußzeilen-Dialog**: je Band aktivierbar, Höhe einstellbar, drei Zonen (links/Mitte/rechts) als Template-Strings mit Tokens `{title}`, `{pageName}`, `{page}`, `{pages}`, `{date}`, `{time}`, `{datetime}`; Zurücksetzen auf Defaults (Header: Titel links, Datum rechts · Footer: Seitenname Mitte, „Seite {page} von {pages}" rechts).
5. Widgets kommen aus dem zentralen Widget-Bestand (Picker mit Suche und Kompatibilitätsprüfung wie im Dashboard-Designer, F12).
6. Viewer `/published-report/{id}`: read-only, seitengetreues Rendering inkl. Kopf-/Fußzeilen und Seiten-Navigation.

## 2 · Scope & Abgrenzung

- **In Scope:** `Report`-Aggregat (Bericht → Seiten → Placements) analog F10, Seitenformate, Kopf-/Fußzeilen-Konfiguration inkl. Token-Auflösung, Berichts-Designer + Viewer, CRUD-API.
- **Out of Scope:** PDF-Erzeugung, Zeitsteuerung und Verteilung (→ [[F22 – Berichts-Trigger & -Verteilung]]), interaktive Filter im Bericht (Berichte sind statisch parametrisiert; Klärung s. offene Punkte), weitere Seitenformate als A4 (Erweiterung später).

## 3 · Technisches Design

### 3.1 Datenmodell (SQLite, analog Dashboard-Aggregat)

```
Report:            Id, TenantId, Name, Description, Tags, SchemaVersion,
                   HeaderFooterJson, Audit-Felder, RowVersion, Publikationsstatus (F24)
ReportPage:        Id, ReportId (FK, Cascade), Title, SortOrder,
                   PageSize (enum: a4-portrait | a4-landscape)
ReportPlacement:   Id, PageId (FK, Cascade), WidgetId (FK Restrict),
                   LayoutJson (x, y, cols, rows), LocalOverridesJson?
```

`HeaderFooterJson`: `{ header: { enabled, height, left, center, right }, footer: {…} }` – Zonen als Template-Strings mit den o. g. Tokens; Auflösung serverseitig (PDF, F22) und clientseitig (Viewer) über dieselbe Token-Bibliothek.

### 3.2 API-Vertrag

Basis `/api/reports`, Zuschnitt identisch zur Dashboard-API (F10): Liste/Detail/CRUD/Duplizieren, Seiten- und Placement-Verwaltung, Batch-Layout-Update, Export/Import. Schreiben: Rolle `hbi-designer`.

### 3.3 Frontend

- Berichts-Designer nutzt Grid-Engine (F11) und Widget-Renderer (F07) wieder; das Grid ist auf die feste Seitenfläche (A4-Pixelmaße bei 96 dpi: 794×1123 bzw. 1123×794) begrenzt statt endlos zu scrollen.
- Kein Umfließen/automatischer Seitenumbruch: Was nicht auf die Seite passt, wird beim Platzieren verhindert (Grid-Grenze), nicht abgeschnitten.
- Viewer und Designer-Vorschau nutzen denselben Render-Pfad; Widgets rendern nicht-interaktiv (`interactive=false`).

### 3.4 Sicherheits- & Tenant-Aspekte

Wie Dashboards: `TenantId` + globaler EF-Filter; Lesen authentifiziert (ab F15/F24 sichtbarkeitsgesteuert), Schreiben `hbi-designer`; Widget-Datenrechte weiterhin ausschließlich über Cube (F16).

## 4 · Akzeptanzkriterien

- [ ] Bericht mit 2 Seiten (1× Hoch-, 1× Querformat) und Kopf-/Fußzeilen kann angelegt, gespeichert, neu geladen und identisch gerendert werden.
- [ ] Token-Auflösung korrekt: `{page}/{pages}` je Seite, `{date}`-Formate lokalisiert, unbekannte Tokens bleiben unverändert sichtbar.
- [ ] Widgets lassen sich nur innerhalb der Seitenfläche platzieren; Format-Wechsel einer Seite validiert bestehende Placements (Konfliktdialog statt stummem Abschneiden).
- [ ] Viewer rendert seitengetreu inkl. Bänder; nicht veröffentlichte Berichte sind für Nicht-Designer nicht erreichbar (F24).
- [ ] Widget-Löschung wird durch Report-Placements ebenso blockiert wie durch Dashboard-Placements (F06-409 inkl. Berichtsliste).
- [ ] Tenant-Isolation, Responsive-Vorschau, i18n-Keys, Loading/Error/Empty-Zustände.

## 5 · Testplan

- **Unit:** Token-Resolver (alle Tokens, Randfälle), Seitenformat-Validierung.
- **Integration:** Report-CRUD-Matrix inkl. Concurrency und Tenant-Isolation, Widget-Usage über Reports.
- **E2E:** Bericht anlegen → Seiten + Kopf/Fuß konfigurieren → Widgets platzieren → veröffentlichen → Viewer prüfen.

## 6 · Offene Punkte dieses Features

> [!question] Filter/Parameter in Berichten
> Der Prototyp rendert Berichte ohne Filterleiste. Sollen Berichte feste Filterwerte (Parameter je Bericht) erhalten – z. B. „Standort = Haus A" – oder immer den Widget-Definitionen folgen? Relevant für F22 (parametrisierte Verteilung je Empfängerkreis).

> [!question] Weitere Seitenformate
> Nur A4 Hoch/Quer (Prototyp) oder auch A3/Letter/benutzerdefiniert? Vorschlag: A4 für v1, Format-Enum erweiterbar.
