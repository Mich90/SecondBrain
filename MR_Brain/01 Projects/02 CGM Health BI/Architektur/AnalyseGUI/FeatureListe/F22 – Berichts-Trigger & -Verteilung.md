---
title: F22 – Berichts-Trigger & -Verteilung
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F22
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - bericht
  - trigger
  - pdf
  - verteilung
---

# F22 – Berichts-Trigger & -Verteilung

> [!abstract] Ziel
> Veröffentlichte Berichte (F21) werden **zeitgesteuert als PDF erzeugt und verteilt**: per E-Mail an eine Empfängerliste oder als Datei in eine Ablage (Share/Ordner). Trigger sind pro Bericht konfigurierbar (täglich zu Uhrzeit oder Intervall), mit Ausführungshistorie, Status und manueller Sofort-Ausführung.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 · **Abhängig von:** F21, F24; Backend-Scheduler gemeinsam mit F23 · **Blockiert:** –
> **Pflichtenheft-Bezug:** EXP-* (Berichtsverteilung)
> **Herkunft:** Lovable-Prototyp (`report-triggers-dialog.tsx`, `report-triggers-store.ts`) – dort vollständig **gemockt** (kein echtes PDF, keine echte Mail, clientseitiger 15-s-Scheduler). Dieses Feature ist der Umbau auf eine echte serverseitige Ausführung.

## 1 · User-Workflow

1. Im Berichts-Editor (nur bei veröffentlichtem Bericht) bzw. über die Berichtsübersicht: „Trigger"-Dialog öffnen.
2. Trigger anlegen: Name, **Zeitplan** (täglich um HH:mm **oder** alle N Minuten), **Zustellung**: „E-Mail (PDF)" mit Empfängerliste (Komma/Semikolon/Zeilenumbruch-getrennt) und Betreff **oder** „Dateiablage (PDF)" mit Zielpfad; Aktiv-Schalter.
3. Trigger-Tabelle zeigt je Eintrag: Zeitplan, nächste Ausführung, letzte Ausführung mit Status (Erfolg/Fehler + Fehlertext, z. B. „SMTP nicht erreichbar"), Zustellungsziel, Aktionen **Jetzt ausführen** und Löschen (mit Bestätigung).
4. Die Berichtsübersicht zeigt pro Bericht „Letzte Zustellung: <Zeitpunkt|nie>".

## 2 · Scope & Abgrenzung

- **In Scope:** Trigger-Entität + CRUD-API, serverseitiger Scheduler, **PDF-Rendering** des F21-Berichts (seitengetreu inkl. Kopf-/Fußzeilen), E-Mail-Versand (SMTP), Dateiablage (konfigurierter Share/Pfad), Ausführungshistorie (Runs) mit Aufbewahrungslimit, „Jetzt ausführen".
- **Out of Scope (bewusst):** Ereignis-/schwellwertbasierte Auslöser (Alerting-Engine bleibt separates Vorhaben laut Architekturansatz A), weitere Formate (XLSX/CSV-Anhänge → F19-Erweiterung), empfängerindividuelle Datenrechte im PDF (s. offene Punkte).

## 3 · Technisches Design

### 3.1 Datenmodell

```
ReportTrigger:  Id, TenantId, ReportId (FK Cascade), Name, Enabled,
                Kind (daily | interval), DailyTime?, IntervalMinutes?,
                DeliveryJson ({ kind: email|fileShare, recipients[], subject?, folder?, format: "pdf" }),
                NextRunAt, Audit-Felder
TriggerRun:     Id, TriggerId (FK Cascade), StartedAt, FinishedAt?,
                Status (running | success | error), Error?, ResultJson?
                (gemeinsame Tabelle mit F23; Retention konfigurierbar, Default 500 Runs/Trigger)
```

### 3.2 Ausführung

- **Scheduler** im Backend (Hosted Service, z. B. Quartz.NET – gemeinsame Infrastruktur mit F23): berechnet `NextRunAt`, führt fällige Trigger aus, verhindert Doppelläufe (Lock je Trigger), überlebt Neustarts (Persistenz), läuft unabhängig vom Browser.
- **PDF-Erzeugung:** serverseitiges Rendering des Berichts über den bestehenden Render-Pfad (Headless-Browser gegen eine interne Print-Route des Viewers, z. B. Playwright/Chromium) → identische Optik wie im Viewer; Seitenformat/Bänder aus F21.
- **Sicherheitskontext:** Der Trigger läuft **nicht** mit einem Nutzer-Token. Vorschlag: technischer Service-Account je Tenant (Keycloak Client Credentials) mit definierten Datenrechten; der ausgestellte Kontext wird am Trigger gespeichert und im Dialog transparent angezeigt (s. offene Punkte).
- **Zustellung:** SMTP-Versand (Konfiguration via Options-Pattern: Host, Absender, TLS) bzw. Ablage auf konfigurierten Pfad/Share (Allowlist der Zielwurzeln in appsettings, keine freien UNC-Pfade vom Client).
- **Fehlerbehandlung:** Run-Status inkl. Fehlertext; Retry-Policy konfigurierbar (Default: 1 Wiederholung); Benachrichtigung des Erstellers bei dauerhaftem Fehler als Ausbaustufe.

### 3.3 API-Vertrag (Auszug)

| Methode | Route | Beschreibung |
| --- | --- | --- |
| GET/POST/PUT/DELETE | `/api/reports/{id}/triggers[/{triggerId}]` | Trigger-CRUD (Rolle `hbi-designer`) |
| POST | `/api/reports/{id}/triggers/{triggerId}/run` | Sofort-Ausführung (asynchron, liefert Run-Id) |
| GET | `/api/reports/{id}/triggers/{triggerId}/runs?page=` | Ausführungshistorie |

## 4 · Akzeptanzkriterien

- [ ] Täglicher und Intervall-Trigger feuern serverseitig zum korrekten Zeitpunkt (Zeitzonen-Konfiguration; Fixture-Tests um Tageswechsel).
- [ ] PDF entspricht dem Viewer-Rendering (Referenz-Snapshots je Seitenformat inkl. Kopf-/Fußzeilen-Tokens).
- [ ] E-Mail-Zustellung an mehrere Empfänger mit Betreff und PDF-Anhang; Datei-Zustellung legt PDF mit eindeutigem Namensschema (`<Report>_<yyyyMMdd-HHmm>.pdf`) ab.
- [ ] Fehlerfälle (SMTP down, Pfad nicht erreichbar, PDF-Fehler) erzeugen Fehler-Runs mit verständlichem Text; „Jetzt ausführen" zeigt den Lauf live in der Tabelle.
- [ ] Trigger auf nicht (mehr) veröffentlichte Berichte werden nicht ausgeführt und im UI entsprechend markiert.
- [ ] Deaktivierte Trigger feuern nicht; Löschen entfernt zugehörige Runs.
- [ ] Tenant-Isolation über die gesamte Kette (Trigger, Runs, Zustellungsziele).

## 5 · Testplan

- **Unit:** NextRun-Berechnung (daily/interval, DST-Wechsel), Empfängerlisten-Parsing, Namensschema.
- **Integration:** Scheduler mit Fake-Clock, SMTP-Fake (z. B. smtp4dev), Dateiablage in Temp-Root, PDF-Snapshot.
- **E2E:** Bericht veröffentlichen → Trigger anlegen → „Jetzt ausführen" → Zustellung + Historie prüfen.

## 6 · Offene Punkte dieses Features

> [!question] Sicherheitskontext der unbeaufsichtigten Ausführung
> Mit welchen Datenrechten rendert der Trigger? Service-Account je Tenant (Vorschlag), „Rechte des Erstellers" (Impersonation) oder je Trigger konfigurierbarer Kontext? Sicherheitsrelevant, vor Umsetzung zu entscheiden.

> [!question] PDF-Rendering-Technologie
> Headless-Chromium (Playwright) gegen Print-Route vs. native PDF-Bibliothek (QuestPDF o. ä.). Vorschlag: Headless-Browser wegen 1:1-Optik mit dem Viewer; Ressourcenbedarf im Deployment klären.

> [!question] E-Mail-/Share-Infrastruktur
> Verfügbarer SMTP-Relay und erlaubte Ablageziele je Umgebung/Tenant (Allowlist) sind mit dem Betrieb abzustimmen.
