---
title: F10 – Dashboard-Domänenmodell & CRUD-API
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F10
phase: 2
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - dashboard
  - backend
---

# F10 – Dashboard-Domänenmodell & CRUD-API

> [!abstract] Ziel
> Dashboards mit n Seiten und je Seite n Widget-Placements (Referenzen auf Widget-GUIDs) können angelegt, geändert, dupliziert, gelöscht sowie als Definition exportiert/importiert werden – vollständig in SQLite persistiert.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 2 · **Abhängig von:** F06 · **Blockiert:** F11–F15, F17
> **Pflichtenheft-Bezug:** DES-03 (Dashboards aus Widgets), NAV-12 (Metadaten)
> **Entscheidungen:** F-A7 (Placements referenzieren), F-A8 (TenantId)

## 1 · Nutzungsszenario

API-Sicht (UI in F12): Ein Designer legt ein Dashboard an (Name, Beschreibung, Tags), fügt Seiten hinzu und platziert Widgets per Referenz mit Layoutdaten. Das Aggregat wird als Ganzes oder in Teilen (Seite, Placement) geändert. Duplizieren kopiert Dashboard + Seiten + Placements (Widget-Referenzen bleiben dieselben GUIDs – Widgets werden **nicht** mitkopiert). Export liefert die vollständige Definition als JSON; Import legt ein neues Dashboard an und prüft, dass alle referenzierten Widgets im Tenant existieren.

## 2 · Scope & Abgrenzung

- **In Scope:** Entitäten `Dashboard`, `DashboardPage`, `WidgetPlacement` + Migration, CRUD-Endpunkte, Duplizieren, Export/Import, Aufräumlogik (Placement-Löschung bei Seitenlöschung), Beitrag zur Widget-`usage`-Abfrage (F06).
- **Out of Scope:** Berechtigungen (F15 – bis dahin gilt: lesen alle Tenant-Nutzer, schreiben Designer), globale Filterkonfiguration im Detail (Struktur wird hier angelegt, Semantik in F13), Grid-Rendering (F11).

## 3 · Datenmodell

```
Dashboard:        Id, TenantId, Name (pro Tenant eindeutig), Description, Tags (JSON),
                  ThemeJson?, GlobalFilterConfigJson (Struktur → F13), SchemaVersion,
                  Audit-Felder, RowVersion
DashboardPage:    Id, DashboardId (FK, Cascade), Title, SortOrder
WidgetPlacement:  Id, PageId (FK, Cascade), WidgetId (FK Restrict → Widget-Löschung
                  blockiert, F06-409), LayoutJson (x,y,cols,rows je Breakpoint, → F11),
                  LocalOverridesJson? (z. B. Titel-Override, showTitle)
```

Konsistenzregeln: Placement-Widget muss demselben Tenant angehören; `SortOrder` lückenlos pro Dashboard; mindestens eine Seite pro Dashboard (wird beim Anlegen automatisch erzeugt).

## 4 · API-Vertrag

Basis `/api/dashboards` · Lesen: authentifiziert (ab F15 permission-gefiltert) · Schreiben: `hbi-designer`.

| Methode | Route | Beschreibung |
| --- | --- | --- |
| GET | `/api/dashboards?search=&tag=&page=&pageSize=` | Liste (Metadaten, Seitenzahl, Widgetzahl) |
| GET | `/api/dashboards/{id}` | Vollaggregat: Dashboard + Seiten + Placements |
| POST | `/api/dashboards` | Anlegen (inkl. erster Seite) |
| PUT | `/api/dashboards/{id}` | Kopf ändern (Name, Beschreibung, Tags, Theme, GlobalFilterConfig) |
| DELETE | `/api/dashboards/{id}` | Löschen inkl. Seiten/Placements (Widgets bleiben) |
| POST | `/api/dashboards/{id}/duplicate` | Tiefe Kopie, Name „… (Kopie)" |
| POST/PUT/DELETE | `/api/dashboards/{id}/pages[/{pageId}]` | Seiten verwalten inkl. `reorder` (`PUT …/pages/order`) |
| POST/PUT/DELETE | `/api/dashboards/{id}/pages/{pageId}/placements[/{placementId}]` | Placements verwalten; `PUT …/placements/layout` für Batch-Layout-Update (Drag/Resize speichert eine Operation) |
| GET | `/api/dashboards/{id}/export` | Definition als JSON (ohne Berechtigungen) |
| POST | `/api/dashboards/import` | Neues Dashboard aus Export-JSON; 400 mit Liste fehlender Widget-GUIDs |

Alle Schreiboperationen nutzen RowVersion des Dashboards (Aggregat-Concurrency).

## 5 · Akzeptanzkriterien

- [ ] Anlegen erzeugt Dashboard mit erster Seite; Vollaggregat-GET liefert konsistente Struktur.
- [ ] Placement mit Widget aus fremdem Tenant → 400; Widget-Löschung bei bestehendem Placement → 409 (F06-Zusammenspiel).
- [ ] Seiten-Reorder persistiert lückenlose SortOrder; Seitenlöschung entfernt Placements, nie Widgets.
- [ ] Batch-Layout-Update speichert mehrere Placements atomar.
- [ ] Duplizieren: neue GUIDs für Dashboard/Seiten/Placements, identische Widget-Referenzen.
- [ ] Export→Import-Roundtrip erzeugt strukturgleiches Dashboard; Import mit fehlender Widget-GUID → 400 mit Benennung.
- [ ] Tenant-Isolationstests; Schreiboperation ohne Designer-Rolle → 403.

## 6 · Testplan

- **Unit:** Konsistenzregeln (SortOrder, Mindest-Seite), Import-Validierung.
- **Integration:** komplette Endpunkt-Matrix inkl. Concurrency (paralleles Layout-Update), Kaskaden-Verhalten in SQLite.
