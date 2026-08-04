---
title: F05 – Metadaten-Explorer
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F05
phase: 1
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - frontend
  - metadaten
---

# F05 – Metadaten-Explorer

> [!abstract] Ziel
> Nutzer können die verknüpften Semantic Layer durchstöbern: Verbindung wählen → Cubes sehen → je Cube Dimensionen und Kennzahlen mit Titel, Typ und Beschreibung, durchsuchbar. Der Explorer liefert zugleich die wiederverwendbare **Feldlisten-Komponente** für den Widget-Designer (F08).

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 1 · **Abhängig von:** F03, F04 · **Blockiert:** F08
> **Pflichtenheft-Bezug:** DES-02 (Bereich „Datenquellen/Cubes"), CALC-14-Vorstufe (Kennzahl-Beschreibungen sichtbar)

## 1 · User-Workflow

Nutzer öffnet „Datenmodell" in der Navigation (oder das Daten-Panel im Designer): Dropdown der Verbindungen des aktiven Tenants → Baum `Cube → Kennzahlen / Dimensionen` mit Icons je Feldtyp (Zahl, Text, Zeit, Geo) → Suchfeld filtert live über Titel und technischen Namen → Klick auf ein Feld zeigt Detail-Panel (technischer Name, Typ, Beschreibung aus der Meta-API, Format-Hinweis). Im Designer-Kontext sind die Felder zusätzlich Drag-Quellen (DES-04).

## 2 · Scope & Abgrenzung

- **In Scope:** Explorer-Route `/datenmodell`, wiederverwendbare `MetaFieldListComponent` (Baum + Suche + Drag-Quelle), Detail-Panel, Refresh-Aktion (ruft `meta/refresh` aus F03, Rolle Designer/Admin).
- **Out of Scope:** Drop-Ziele und Zuordnungslogik (F08), Meta-Beschaffung/-Caching (F03), Anzeige effektiver Datenrechte (Admin-GUI-Thema).

## 3 · Technisches Design

- Datenquelle: `GET /api/semantic-layers` + `GET /api/semantic-layers/{id}/meta` (F03); Ergebnis im Signal-Store `MetaStore` je Verbindung gecacht (Invalidierung bei Tenant-Wechsel und Refresh).
- `MetaFieldListComponent` (shared): Input Verbindung/Cube-Filter, Output `fieldSelected`/`fieldDragged`; virtuelle Liste (CDK Virtual Scroll) für große Modelle; Suche debounced, hebt Treffer hervor.
- Drag & Drop über Angular CDK `DragDrop` mit typisiertem Payload `{ member, memberType: measure|dimension|time, cube, semanticLayerId }` – derselbe Payload-Vertrag wird von F08 konsumiert.
- Feldtyp-Ableitung aus Meta (`type: number|string|time|boolean` + `aggType` bei Measures) → Icon + zulässige Verwendung (z. B. nur Zeit-Dimensionen als `timeDimension`).
- Leere/fehlerhafte Zustände über Standardkomponenten aus F04 (z. B. „Verbindung nicht erreichbar" mit Retry).

## 4 · Akzeptanzkriterien

- [ ] Explorer zeigt je Verbindung alle Cubes mit Kennzahlen/Dimensionen inkl. Titeln und Beschreibungen.
- [ ] Suche filtert über Titel und technischen Namen; Treffer hervorgehoben; > 1000 Felder bleiben flüssig (Virtual Scroll).
- [ ] Detail-Panel zeigt technischen Namen, Typ und Beschreibung; fehlende Beschreibung → dezenter Hinweis statt Leerfeld.
- [ ] Refresh lädt Meta neu (Cache-Invalidierung nachweisbar); Button nur für Designer/Admin sichtbar.
- [ ] `MetaFieldListComponent` ist eigenständig einbindbar und liefert den definierten Drag-Payload.
- [ ] Tenant-Wechsel leert den Store und lädt Verbindungen des neuen Tenants.

## 5 · Testplan

- **Unit:** MetaStore (Caching/Invalidierung), Feldtyp-Ableitung, Suchfilter.
- **Component:** Baum-Rendering, Suche, Drag-Payload.
- **E2E-Smoke:** Explorer gegen Dev-Cube öffnen, suchen, Detail ansehen.
