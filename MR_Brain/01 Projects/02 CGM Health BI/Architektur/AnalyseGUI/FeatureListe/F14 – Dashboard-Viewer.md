---
title: F14 – Dashboard-Viewer
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F14
phase: 2
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - dashboard
  - viewer
---

# F14 – Dashboard-Viewer

> [!abstract] Ziel
> Nutzer öffnen ein Dashboard und arbeiten damit: Seiten wechseln, filtern, Widgets im Vollbild betrachten – mit parallelem, fehlerisoliertem Laden aller Widgets, sichtbarem Ladefortschritt und Abbruchmöglichkeit, auf allen Endgeräten.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 2 · **Abhängig von:** F07, F10, F11, F13 · **Blockiert:** F17, F18, F19
> **Pflichtenheft-Bezug:** FIL-16/17 (Lade-UX, Abbruch, Echtzeit-Interaktion), VIS-03/05 (responsive, mobile Nutzung), NAV-13-Vorbereitung

## 1 · User-Workflow

`/dashboards/{id}` (Default-Route nach Auswahl im Katalog): Kopf mit Dashboard-Name, Seiten-Tabs, Filterleiste (F13), Aktionen (Aktualisieren; „Bearbeiten" nur mit Edit-Recht → F12). Die Seite rendert das Grid im View-Modus; jedes Widget lädt eigenständig: Skeleton → Inhalt, bei Langläufern Ladeanzeige mit Abbrechen. Ein fehlgeschlagenes Widget zeigt seinen Fehlerzustand mit Retry, **ohne andere Widgets zu beeinträchtigen**; fehlende Datenberechtigung erscheint als dezenter Hinweis (teilbefülltes Dashboard = legitimer Zustand, Leitplanke 4). Kachel-Aktion „Vollbild" öffnet das Widget als Overlay in voller Größe. Auf dem Smartphone: gestapelte Ansicht, Filter hinter einem Filter-Button als Bottom-Sheet.

## 2 · Scope & Abgrenzung

- **In Scope:** Viewer-Route, Lade-Orchestrierung, Fehlerisolierung je Kachel, Vollbild-Overlay, Aktualisieren (alles/einzeln), Seiten-Navigation mit erhaltenem Filterkontext, responsive Verhalten inkl. Mobile-Filter-Sheet, „Bearbeiten"-Einstieg.
- **Out of Scope:** Berechtigungs-Enforcement (F15 – bis dahin sehen alle Tenant-Nutzer alle Dashboards), Deeplink-Zustand in der URL (F18), Export (F19), Drill/Cross-Filtering (Iteration 2 – `elementClick` bleibt im Viewer zunächst ungenutzt).

## 3 · Technisches Design

- **Lade-Orchestrierung:** Beim Öffnen ein Aggregat-GET (F10), dann pro sichtbarer Seite alle Widget-Daten-Requests **parallel** (F07), mit konfigurierbarem Concurrency-Limit (Default 6) gegen Backend-/Cube-Überlast; Seitenwechsel lädt lazy und cached Seitenergebnisse für die Sitzung (Invalidierung bei Filteränderung → nur gebundene Widgets, F13).
- **Fehlerisolierung:** Jede Kachel kapselt ihren Request-Status selbst (der Renderer, F07, liefert Loading/Error/NoPermission/Empty) – der Viewer aggregiert lediglich einen dezenten Hinweis „n Widgets konnten nicht geladen werden" mit Sammel-Retry.
- **Abbruch (FIL-16):** Kachel-Abbrechen stoppt den einzelnen Request; Seitenwechsel und Filterwechsel brechen alle veralteten Requests der Vorseite ab (Cancellation-Kette bis Cube, F03).
- **Vollbild:** CDK-Overlay, rendert **denselben** Renderer mit derselben Datenlage (kein Doppel-Request; Resize triggert Chart-Anpassung); ESC/Schließen kehrt zurück.
- **Aktualisieren:** Kopf-Aktion invalidiert den Seiten-Cache und lädt neu; pro Kachel zusätzlich Einzel-Refresh im Aktionsmenü; Zeitstempel „Stand: HH:MM" im Kopf (Datenvertrauen light).
- **Responsive:** Breakpoint-Layouts aus F11; unter `sm` Filter als Bottom-Sheet mit Badge (Anzahl aktiver Filter); Touch: Kachel-Aktionen über Menü statt Hover.
- Edit-Button-Sichtbarkeit vorerst an `hbi-designer`, ab F15 an effektivem Edit-Recht.

## 4 · Akzeptanzkriterien

- [ ] Dashboard mit 10 Widgets: alle laden parallel (Limit greift), Seite ist vor Abschluss aller Requests bedienbar.
- [ ] Ein künstlich fehlschlagendes Widget beeinträchtigt keine anderen; Sammelhinweis + Einzel-/Sammel-Retry funktionieren.
- [ ] „Keine Datenberechtigung"-Widget wird dezent dargestellt (kein Fehlerlayout, F16-Vorgriff via F07-Zustand).
- [ ] Abbruch: Einzelabbruch, Filterwechsel und Seitenwechsel beenden veraltete Requests nachweislich.
- [ ] Vollbild rendert ohne zweiten Datenabruf und skaliert korrekt.
- [ ] Seitenwechsel behält Filterzustand; zurückgewechselte Seite kommt aus dem Cache und zeigt den Stand-Zeitstempel.
- [ ] Phone: Stapel-Ansicht + Filter-Bottom-Sheet vollständig bedienbar.
- [ ] Aktualisieren (gesamt/einzeln) lädt neu und aktualisiert den Zeitstempel.

## 5 · Testplan

- **Unit:** Orchestrierung (Concurrency, Cache-Invalidierung), Abbruchlogik.
- **Component:** Kachel-Zustände, Vollbild, Mobile-Sheet.
- **E2E:** Kompletter Viewer-Flow inkl. Fehler-Widget (WireMock), Abbruch-Szenario, Phone-Viewport.
