---
title: F12 – Dashboard-Designer
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F12
phase: 2
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - dashboard
  - designer
---

# F12 – Dashboard-Designer

> [!abstract] Ziel
> Designer bauen Dashboards: Seiten anlegen/sortieren, Widgets aus dem Bestand auswählen und im Grid platzieren, Placement-Eigenschaften pflegen, globale Filter konfigurieren (Struktur aus F13), Undo/Redo, Vorschau-Modus – gespeichert über die F10-API.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 2 · **Abhängig von:** F08, F10, F11 (+F13 für den Filter-Konfigurationsteil) · **Blockiert:** –
> **Pflichtenheft-Bezug:** DES-01/02/05 (Designer, Drag & Drop), FIL-15 (Undo), NAV-13-Vorbereitung

## 1 · User-Workflow

1. `/dashboards/{id}/edit` (bzw. „Neues Dashboard" → Anlage-Dialog → Editor).
2. Kopfleiste: Name/Beschreibung/Tags, Seiten-Tabs (anlegen, umbenennen, sortieren per Drag, löschen mit Bestätigung), Undo/Redo, „Vorschau", „Speichern".
3. Linkes Panel „Widgets": durchsuchbare Widget-Liste des Tenants (Name, Typ, Tags, Mini-Info); Drag aufs Grid erzeugt ein Placement mit Typ-Standardgröße; Button „Neues Widget" öffnet F08 in neuem Tab.
4. Grid (F11, Edit-Modus): anordnen, Größe ändern; Kachel-Aktionen: Entfernen (Placement, nie das Widget), Eigenschaften (rechtes Panel), „Widget bearbeiten" (→ F08, mit Usage-Hinweis-Kontext).
5. Rechtes Panel je Selektion: Placement-Eigenschaften (Titel-Override, Titel anzeigen, Phone-Reihenfolge) oder – ohne Selektion – Dashboard-Eigenschaften inkl. globaler Filterkonfiguration (F13-Editor eingebettet).
6. Vorschau-Modus: rendert dieselbe Seite im View-Modus mit echten Daten und aktiven Filtern; zurück in den Edit-Modus ohne Verlust.
7. Speichern persistiert Änderungen gebündelt (Kopf, Seiten, Placements-Batch); Dirty-Guard beim Verlassen.

## 2 · Scope & Abgrenzung

- **In Scope:** Editor-Route + Layout, Seitenverwaltung, Widget-Panel, Placement-Eigenschaften, Undo/Redo, Vorschau, Speicher-Orchestrierung inkl. Konfliktbehandlung (RowVersion-409 → Dialog „neu laden oder überschreiben nicht möglich").
- **Out of Scope:** Filter-**Semantik** und Filter-Widget-Typen (F13 – hier nur der eingebettete Konfigurationseditor als Slot), Berechtigungs-Tab (F15 ergänzt ihn), Widget-Bearbeitung selbst (F08).

## 3 · Technisches Design

- **`DashboardDraftStore`** (Signals) hält das Vollaggregat; alle Mutationen als **Commands** (`AddPlacement`, `MovePlacement`, `RenamePage` …) mit `undo()`-Implementierung → **Command-Stack für Undo/Redo** (FIL-15), Tiefe konfigurierbar (Default 50). Layout-Drags werden pro Drag-Ende zu einem Command zusammengefasst (F11-Event-Bündelung).
- Speichern = Diff Draft ↔ letzter Serverstand → minimale Sequenz von F10-Aufrufen (Kopf-PUT, Seiten-Ops, Placement-Batch); Ergebnis aktualisiert RowVersion im Store.
- Widget-Panel nutzt `GET /api/widgets` mit Suche/Paging; Drag-Payload `{widgetId, type}` → F11-Drop erzeugt Placement mit Typ-Standardgröße.
- Vorschau ist ein Modus derselben Route (kein Neuladen): Grid `mode=view`, Renderer `interactive=true`, Filterleiste aktiv – identischer Codepfad wie F14, nur ohne dessen Navigation.
- „Widget bearbeiten" öffnet F08; nach Rückkehr/Save invalidiert der Designer die Preview-Daten der betroffenen Kacheln (Widget-Änderung wirkt sofort, F-A7).

## 4 · Akzeptanzkriterien

- [ ] Kompletter Flow: Dashboard anlegen → 2 Seiten → 5 Widgets platzieren → anordnen → speichern → neu laden → identischer Zustand.
- [ ] Undo/Redo über mindestens: Placement hinzufügen/entfernen/verschieben/resizen, Seite umbenennen/sortieren, Titel-Override – jeweils in beide Richtungen korrekt.
- [ ] Entfernen einer Kachel löscht nur das Placement (Widget existiert weiter, nachweisbar).
- [ ] Vorschau zeigt echte Daten und wechselt verlustfrei zurück in den Edit-Modus.
- [ ] RowVersion-Konflikt beim Speichern → verständlicher Dialog, kein Datenverlust im Draft.
- [ ] Dirty-Guard; Route nur für `hbi-designer`.
- [ ] Seiten-Tabs bedienbar per Tastatur (Barrierefreiheit-Querschnitt).

## 5 · Testplan

- **Unit:** Command-Stack (Undo/Redo-Matrix), Diff-/Save-Orchestrierung.
- **Component:** Seiten-Tabs, Widget-Panel-Drag, Eigenschaften-Panel.
- **E2E:** Flow aus Akzeptanzkriterium 1 inkl. Undo-Stichprobe und Konflikt-Szenario (zweiter Client).
