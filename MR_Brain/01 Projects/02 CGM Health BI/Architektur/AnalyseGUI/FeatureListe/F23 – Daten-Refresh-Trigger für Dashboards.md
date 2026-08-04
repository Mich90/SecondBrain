---
title: F23 – Daten-Refresh-Trigger für Dashboards
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F23
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - trigger
  - refresh
  - dashboard
---

# F23 – Daten-Refresh-Trigger für Dashboards

> [!abstract] Ziel
> Pro veröffentlichtem Dashboard können **zeitgesteuerte Daten-Aktualisierungen** konfiguriert werden (täglich zu Uhrzeit oder Intervall), mit Ausführungshistorie, Status und „Jetzt ausführen". Nutzer sehen am Katalog-Eintrag, wann die Daten zuletzt aktualisiert wurden („Stand: …").

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 · **Abhängig von:** F03, F24; Scheduler-Infrastruktur gemeinsam mit F22 · **Blockiert:** –
> **Herkunft:** Lovable-Prototyp (`app-triggers-dialog.tsx`, `triggers-store.ts`) – dort als „Refresh triggers" pro App vollständig **gemockt** (clientseitiger Scheduler, Zufallsergebnisse).

> [!warning] Architektur-Einordnung
> In der Zielarchitektur hält die App **keine Daten** – Aktualität entsteht im DWH→ClickHouse-Sync und in Cube (Pre-Aggregations/Cache). Ein „Refresh-Trigger" der AnalyseGUI ist daher **kein ETL-Lauf**, sondern: (a) gezielte **Cache-Invalidierung/-Vorwärmung** der Cube-Queries aller Widgets des Dashboards (Pre-Warm über den validierten F07-Query-Pfad) und (b) ein sichtbarer **„Daten-Stand"-Zeitstempel**. Ob darüber hinaus ein echter Refresh-Anstoß Richtung Cube/ETL gewünscht ist, ist vor Umsetzung zu klären (s. offene Punkte).

## 1 · User-Workflow

1. Katalog/Startseite: Uhr-Symbol auf der Dashboard-Karte (nur Designer/Admin) öffnet den Dialog „Aktualisierungs-Trigger".
2. Trigger anlegen: Name, Zeitplan (täglich HH:mm oder alle N Minuten), Aktiv-Schalter; mehrere Trigger pro Dashboard möglich.
3. Tabelle: Zeitplan, nächste/letzte Ausführung mit Status-Badge (Erfolg/Fehler/läuft), „Jetzt ausführen", Löschen mit Bestätigung.
4. Dashboard-Karte und Viewer-Kopf zeigen „Daten-Stand: <Zeitpunkt|nie>".

## 2 · Scope & Abgrenzung

- **In Scope:** Trigger-Entität + CRUD-API (analog F22, gemeinsame `TriggerRun`-Tabelle), serverseitige Ausführung = Pre-Warm aller Widget-Queries des Dashboards (parallel, mit Concurrency-Limit), Stand-Zeitstempel im Katalog/Viewer.
- **Out of Scope:** ETL-/Sync-Steuerung (separates Vorhaben), ereignisbasierte Auslöser (Alerting), Benachrichtigungen an Nutzer.

## 3 · Technisches Design

- `DashboardTrigger` strukturgleich zu `ReportTrigger` (F22) ohne Delivery-Block; gemeinsamer Scheduler (Hosted Service) und gemeinsames Run-Modell.
- Ausführung: Widget-Queries des Dashboards über den F07-Query-Builder mit `renewQuery`-Semantik gegen Cube ausführen (Cache-Bypass/Refresh); Ergebnis (Dauer, Fehler je Widget) im Run protokolliert.
- Sicherheitskontext wie F22 (Service-Account je Tenant – gemeinsame Entscheidung, s. offene Punkte dort).
- UI-Hinweis im Dialog: Trigger wirken nur auf veröffentlichte Dashboards; der Scheduler erzwingt das serverseitig (im Prototyp nur Hinweistext ohne Prüfung – wird hier verbindlich).

## 4 · Akzeptanzkriterien

- [ ] Trigger feuern serverseitig korrekt (daily/interval); deaktivierte und auf unveröffentlichte Dashboards zeigende Trigger feuern nicht.
- [ ] Ausführung wärmt nachweislich den Cube-Cache (zweiter Viewer-Aufruf antwortet messbar schneller / `continueWait` entfällt) und aktualisiert den Stand-Zeitstempel.
- [ ] Teilfehler (einzelnes Widget schlägt fehl) ergeben Fehler-Run mit Widget-Benennung, ohne andere Widgets zu blockieren.
- [ ] „Jetzt ausführen" für Designer/Admin; Historie mit Retention-Limit.
- [ ] Tenant-Isolation über Trigger und Runs.

## 5 · Testplan

- **Unit:** NextRun-Berechnung (geteilt mit F22), Publish-Status-Prüfung.
- **Integration:** Ausführung gegen WireMock-Cube (Erfolg/Teilfehler), Zeitstempel-Fortschreibung.
- **E2E:** Trigger anlegen → „Jetzt ausführen" → Status + „Daten-Stand" auf Karte prüfen.

## 6 · Offene Punkte dieses Features

> [!question] Semantik „Refresh" endgültig festlegen
> Reicht Cache-Pre-Warm + Zeitstempel, oder soll der Trigger zusätzlich einen Cube-/ETL-Refresh anstoßen (z. B. Pre-Aggregation-Build per Cube-API)? Abstimmung mit dem Semantic-Layer-/ETL-Vorhaben nötig.
