---
title: F04 – Frontend-Shell & Theme
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F04
phase: 0
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - frontend
  - angular
  - echarts
  - theme
---

# F04 – Frontend-Shell & Theme

> [!abstract] Ziel
> Die Angular-App hat eine responsive Shell (Navigation, Routing, Auth-Guards, Mandanten-Kontextschalter), eine Design-Token-Schicht mit darauf aufbauendem ECharts-Theme, ein i18n-Grundgerüst und Standardkomponenten für Loading/Error/Empty – der Rahmen, in den alle UI-Features einziehen.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 0 · **Abhängig von:** F00, F02 · **Blockiert:** F05, F08, F11–F14, F17
> **Pflichtenheft-Bezug:** NAV-03 (Kontextschalter), NAV-04 (Mehrsprachigkeit), NAV-05/11 (Navigation, konsistente UI), VIS-03 (responsive)
> **Entscheidungen:** F-A2 (Angular latest, VIA später über Token-Schicht), F-A8 (Tenant-Kontext)

## 1 · Nutzungsszenario

Nach dem Login landet der Nutzer in der Shell: Topbar (Produktname, Tenant-Schalter bei Mehrfach-Zugehörigkeit, Nutzermenü mit Logout und Sprachwahl), seitliche Navigation (Dashboards, Widgets, Verwaltung – Einträge rollenabhängig über `/api/me`), Content-Bereich mit Router-Outlet. Auf schmalen Viewports kollabiert die Navigation in ein Off-Canvas-Menü. Wechselt der Nutzer den Tenant, wird der App-State zurückgesetzt und die aktuelle Route neu geladen.

## 2 · Scope & Abgrenzung

- **In Scope:** Shell-Layout, Routing-Grundstruktur mit Lazy Features, Auth-Guard-Verdrahtung (aus F02), Tenant-Schalter, Design-Tokens + App-Theme, ECharts-Registrierung + Theme, i18n-Setup, Standard-Statuskomponenten, generierter API-Client.
- **Out of Scope:** Fachliche Seiteninhalte (F05 ff.), Katalog/Startseiten-Logik (F17), VIA-Integration (später – die Token-Schicht ist die Vorbereitung dafür).

## 3 · Technisches Design

### 3.1 Struktur & Routing

- Routen: `/dashboards` (Default), `/widgets`, `/admin` (Guard: Rolle `hbi-admin`), `/embed/**` (ohne Shell, F20-Platzhalter), Fallback 404-Seite.
- Features als lazy-geladene Routen-Bundles unter `features/`; Shell-Komponenten unter `core/layout/`.
- **API-Client generiert** aus der OpenAPI-Spec des Backends (`openapi-generator`, typescript-angular) per npm-Skript – DTO-Drift zwischen Backend und Frontend fällt im Build auf.

### 3.2 Design-Token-Schicht (CGM-Farbwelt, VIA-Vorbereitung)

- `shared/design/tokens.scss` definiert CSS Custom Properties in **zwei Stufen**: Stufe 1 = Markenwerte (CGM-Farbwelt), Stufe 2 = semantische Tokens, die Komponenten und Charts nutzen. **Startbelegung, Chart-Serienpalette und Kontrast-Leitplanken sind verbindlich in [[Design-Tokens & CGM-Farbwelt]] definiert** – inkl. Verifikationspflicht gegen das CGM Brand Portal vor Umsetzung.
- Zusätzlich: Typografie-Stufen, Abstands- und Radius-Skala, Breakpoints (`sm 600 / md 960 / lg 1280`).
- **Regel:** Komponenten-Styles referenzieren ausschließlich Stufe-2-Tokens, nie Rohwerte. VIA-Umstieg oder Brand-Portal-Korrekturen = neue Stufe-1-Werte (+ ggf. Fonts), kein Komponenten-Umbau.
- Komponentenbasis: Angular Material (aktuelle Version) als Arbeitspferd für Buttons/Dialoge/Menüs, per Material-Theming an die Tokens gebunden – bewusst dünn eingesetzt, damit der spätere VIA-Wechsel möglich bleibt.

### 3.3 ECharts

- `ngx-echarts` mit selektiven Imports (`echarts/core` + benötigte Charts/Komponenten) für kleine Bundles.
- Eigenes ECharts-Theme `hbi` wird zur Laufzeit aus den CSS-Tokens erzeugt (Farben aus `getComputedStyle`, Serienpalette `--chart-1…-8` aus [[Design-Tokens & CGM-Farbwelt]]) und via `echarts.registerTheme` registriert → Chart-Optik folgt automatisch jedem Token-/Brand-/VIA-Update.
- Decal-Unterstützung (`aria.decal`) als Theme-Option vorbereitet (Barrierefreiheit/Monochrom, Querschnitt).

### 3.4 i18n

- `@ngx-translate/core` mit HTTP-Loader (`assets/i18n/de.json`); Sprache: Nutzerwahl → localStorage → Browser-Default. Start mit DE (→ F-A9); **alle** Texte ab dem ersten Commit über Keys (`feature.bereich.text`).
- Zahlen-/Datumsformatierung über Angular-Locale (`de-DE` registriert), zentraler `FormatService` (wird von F07 für Widget-Zahlenformate mitgenutzt).

### 3.5 Standard-Statuskomponenten

`shared/ui/`: `LoadingIndicator` (mit optionalem Abbrechen-Button → CancellationToken-Kette bis Cube, FIL-16), `ErrorPanel` (ProblemDetails-aware: zeigt Titel + Correlation-Id, Sonderfall „keine Datenberechtigung"), `EmptyState` (Icon + Text + optionale Aktion). Verbindliche Bausteine für alle Folge-Features.

### 3.6 Tenant-Schalter

- Speist sich aus `/api/me`; unsichtbar bei genau einem Tenant.
- Wechsel: Bestätigungsdialog bei ungespeicherten Änderungen (Designer-Features registrieren sich an einem `DirtyState`-Service), dann State-Reset + `X-Tenant-Id`-Update im Interceptor + Navigation auf `/dashboards`.

## 4 · Akzeptanzkriterien

- [ ] Shell rendert responsive (Desktop-Sidebar, mobil Off-Canvas); Navigation rollenabhängig (`/admin` nur mit Rolle sichtbar **und** per Guard geschützt).
- [ ] Tenant-Schalter erscheint nur bei > 1 Tenant; Wechsel setzt Header, State und Route korrekt.
- [ ] ECharts-Beispielchart auf einer Dev-Route nutzt das `hbi`-Theme in CGM-Farben; Token-Farbänderung (Stufe 1) wirkt ohne Codeänderung im Chart.
- [ ] Sprachumschaltung DE↔(Platzhalter-EN) wechselt alle Shell-Texte zur Laufzeit; keine hartcodierten Strings (Lint-Regel/Review).
- [ ] Loading/Error/Empty-Komponenten vorhanden und in einer Demo-Route abgenommen; ErrorPanel zeigt Correlation-Id aus ProblemDetails.
- [ ] `ng build` Bundle-Budget eingehalten (ECharts selektiv importiert).

## 5 · Testplan

- **Unit:** Tenant-Store, Theme-Erzeugung aus Tokens, FormatService.
- **Component-Tests:** Shell-Navigation (Rollenfälle), Statuskomponenten.
- **E2E-Smoke:** Login → Shell → Tenant-Wechsel → Sprachwechsel.

## 6 · Offene Punkte dieses Features

> [!question] Herkunft der Listbox-Filterkomponenten (Restpunkt F-A2)
> Betrifft F13, sollte aber vor F04-Abschluss geklärt sein, falls die Komponenten eigene Style-/Peer-Dependencies mitbringen, die in die Token-/Theming-Strategie eingebunden werden müssen.

> [!question] CGM-Brand-Portal-Abgleich (blockierend für Theme-Finalisierung)
> Die Stufe-1-Tokenwerte aus [[Design-Tokens & CGM-Farbwelt]] müssen vor Umsetzung gegen das interne CGM Brand Portal verifiziert werden (Farben, ggf. Hausschrift für Web-Apps).
