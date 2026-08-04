---
title: F24 – Veröffentlichungs-Workflow
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F24
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - publishing
  - dashboard
  - bericht
---

# F24 – Veröffentlichungs-Workflow

> [!abstract] Ziel
> Dashboards und Berichte haben einen **Lebenszyklus Entwurf → Veröffentlicht**: Konsumenten (Viewer-Rollen) sehen ausschließlich veröffentlichte Stände in einer eigenen Galerie („Veröffentlichte Dashboards/Berichte"); Designer arbeiten an Entwürfen. Veröffentlichte Objekte sind gegen versehentliches Bearbeiten geschützt – Bearbeiten erfordert explizites Zurückziehen (oder eine bewusste Neu-Veröffentlichung).

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 · **Abhängig von:** F10, F15, F17 (Katalog integriert den Publikationsstatus), F21 für Berichte · **Blockiert:** F22, F23
> **Herkunft:** Lovable-Prototyp (Statusflag `draft|published` mit Publish/Unpublish, Read-only-Editor bei published, Galerie-Startseite `/`, Live-Viewer `/published/$appId` bzw. `/published-report/$reportId`).

## 1 · User-Workflow

1. **Designer:** Im Editor „Veröffentlichen" → Objekt erhält Status *veröffentlicht* (+ Zeitstempel, Veröffentlicher). Der Editor wird read-only („Veröffentlicht"-Badge, Umbenennen/Bearbeiten gesperrt); „Zurückziehen" macht das Objekt wieder zum Entwurf. „Live ansehen" öffnet die Konsumenten-Ansicht.
2. **Konsument (Viewer-Rolle):** Startseite = Galerie der veröffentlichten Dashboards (Karten mit Name, Beschreibung, Daten-Stand aus F23); zweiter Tab: veröffentlichte Berichte (mit „Letzte Zustellung" aus F22). Öffnen führt in den read-only-Viewer (F14 bzw. F21) – Filter und Interaktionen bleiben nutzbar, Struktur ist unveränderbar.
3. Nicht veröffentlichte Objekte sind für Konsumenten weder gelistet noch per Direktlink erreichbar („nicht verfügbar").

## 2 · Scope & Abgrenzung

- **In Scope:** Statusmodell + Übergänge (publish/unpublish) an `Dashboard` und `Report`, Enforcement in den APIs (Schreiboperationen auf veröffentlichte Objekte → 409; Lesezugriff für Nicht-Designer nur auf veröffentlichte), Galerie-Ansichten, Editor-Sperrverhalten, Publikations-Metadaten (`PublishedAt/By`).
- **Out of Scope (bewusst):** Versionierte Snapshots (veröffentlicht = Live-Referenz auf denselben Datensatz, wie im Prototyp; Entwurf-neben-Live s. offene Punkte), Freigabe-/Genehmigungsworkflow (4-Augen-Prinzip), externe Veröffentlichung ohne Login (→ Embedding F09/F20).

## 3 · Technisches Design

- Felder an `Dashboard`/`Report`: `Status (draft | published)`, `PublishedAt?`, `PublishedBy?`; Endpunkte `POST /api/dashboards/{id}/publish|unpublish` (analog Reports), Rolle `hbi-designer` bzw. Owner-Recht (F15).
- **Zusammenspiel mit F15 (Berechtigungen):** Der Status ergänzt die Berechtigungen, ersetzt sie nicht – sichtbar ist die Schnittmenge „berechtigt **und** veröffentlicht" (Designer sehen zusätzlich ihre Entwürfe). F17-Katalog erhält Status-Filter (Entwurf/Veröffentlicht) für Designer.
- Editor-Verhalten: Draft-Store lehnt Mutationen auf veröffentlichten Objekten ab; UI zeigt Sperr-Hinweis mit Aktion „Zurückziehen".
- Viewer-Routen bleiben die F14/F21-Routen; es gibt keine getrennte „published"-Kopie der Definition.

## 4 · Akzeptanzkriterien

- [ ] Publish/Unpublish setzt Status + Metadaten; nur Designer/Owner dürfen es.
- [ ] Schreib-API auf veröffentlichtes Objekt → 409 mit verständlicher Meldung; Editor ist nachweislich read-only.
- [ ] Viewer-Rolle sieht in Galerie und per Direktlink ausschließlich veröffentlichte Objekte (Test: Entwurf-Link → „nicht verfügbar").
- [ ] Zurückziehen entfernt das Objekt sofort aus der Galerie; laufende Viewer-Sitzungen erhalten beim nächsten Request den 404/„nicht verfügbar"-Zustand.
- [ ] Katalog (F17) zeigt Statusfilter und Badges korrekt; Tenant-Isolation.

## 5 · Testplan

- **Unit:** Statusübergangs-Regeln, Sichtbarkeits-Prädikat (Berechtigung × Status × Rolle).
- **Integration:** API-Matrix (publish/unpublish/Schreibsperre/Sichtbarkeit) für Dashboards und Berichte.
- **E2E:** Designer veröffentlicht → Viewer sieht Galerie-Eintrag → Designer zieht zurück → Eintrag verschwindet.

## 6 · Offene Punkte dieses Features

> [!question] Entwurf neben Live-Stand?
> Im Prototyp (und in diesem v1-Zuschnitt) gibt es genau einen Stand: Bearbeiten erfordert Zurückziehen, Änderungen am Entwurf sind erst nach erneutem Veröffentlichen sichtbar – und das Objekt ist währenddessen offline. Falls „weiterbearbeiten, während die letzte Version live bleibt" gewünscht ist, braucht es veröffentlichte Snapshots (Definitions-Kopie bei Publish). Entscheidung vor Umsetzung.
