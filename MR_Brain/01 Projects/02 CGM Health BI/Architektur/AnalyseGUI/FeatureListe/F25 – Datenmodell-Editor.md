---
title: F25 – Datenmodell-Editor
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F25
phase: 4
status: geplant
version: 0.1
date: 2026-07-29
tags:
  - analyse-gui
  - feature
  - datenmodell
  - cube
  - metadaten
---

# F25 – Datenmodell-Editor

> [!abstract] Ziel
> Designer erstellen **kuratierte Datenmodelle** als eigene Entität: Verbindung wählen (Cube-Instanz), daraus Cubes und Felder gezielt auswählen, das Ergebnis als benanntes Modell speichern und in einem **ER-Diagramm** visualisieren. Dashboards/Berichte und Widgets werden an ein Datenmodell gebunden; daraus entsteht eine **Kompatibilitätsprüfung** („dieses Widget passt nicht zu dieser App") beim Zusammenstellen.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 4 · **Abhängig von:** F03, F05 · **Blockiert:** – (F06/F08/F10/F12 erhalten die Modell-Bindung als Erweiterung)
> **Pflichtenheft-Bezug:** DES-02 (Bereich „Datenquellen/Cubes"), Erweiterung über F05 hinaus
> **Herkunft:** Lovable-Prototyp (`/datamodels`, `/datamodels/$modelId`, `datamodel-store.ts`, `data-model-diagram.tsx`, `cube-client.ts`) – dort inkl. echtem Cube-`/meta`-Import, 3-Schritte-Wizard und Beziehungs-Editor.

> [!warning] Architektur-Einordnung
> Joins/Beziehungen zwischen Cubes sind in der Zielarchitektur **Aufgabe des Semantic Layer** (Cube-Fachmodell, out of scope dieser App). Der Editor des Prototyps erfasst Beziehungen (INNER/LEFT, Auto-Detect) und Spalten-Where-Bedingungen, **wertet sie aber nirgends aus**. Für die Umsetzung gilt daher der Zuschnitt: Das Datenmodell ist eine **kuratierte Sicht** (Auswahl + Dokumentation) auf die Cube-Metadaten – keine eigene Join-/Query-Semantik in der App. Das Diagramm kann vorhandene Cube-Joins aus der Meta-API **anzeigen**; eigene Join-Definitionen nur, falls bewusst entschieden (s. offene Punkte).

## 1 · User-Workflow

1. `/datenmodelle`: Karten je Modell („Verbunden"/„Entwurf"-Badge, Verbindungs-Label, Anzahl Cubes/Beziehungen); Anlegen (Name), Umbenennen, Löschen (blockiert, wenn Objekte das Modell nutzen).
2. **Schritt 1 – Verbindung:** Semantic-Layer-Verbindung des Tenants wählen (Registry aus F03; der Prototyp-Direktzugriff per URL/Token entfällt zugunsten des BFF); „Cubes laden" holt die Meta-Daten, „Aktualisieren" erneuert sie (Anzeige „N Cubes · Stand <Zeit>").
3. **Schritt 2 – Cubes & Felder:** Cubes per Checkbox auswählen (gruppiert, mit Beschreibung und Feldanzahl); je Cube Felder an-/abwählen (Alle/Keine, Typ-Anzeige). Abwahl räumt abhängige Artefakte auf (Diagramm-Positionen, Beziehungen).
4. **Schritt 3 – Diagramm:** ER-Darstellung mit frei **verschiebbaren Cube-Kästen** (Positionen werden gespeichert) und feldgenauen Verbindungslinien; vorhandene Cube-Joins werden angezeigt.
5. Widgets und Dashboards/Berichte referenzieren ein Datenmodell; der Widget-Picker (F12/F21) prüft Kompatibilität (gleiches Modell, benötigte Cubes enthalten) und graut Inkompatibles mit Begründung aus.

## 2 · Scope & Abgrenzung

- **In Scope:** `DataModel`-Entität + CRUD-API, Cube-/Feldauswahl auf Basis der F03-Meta (inkl. Cache/Refresh), Diagramm-Ansicht mit persistierten Positionen, Modell-Bindung an Widgets/Dashboards/Berichte + Kompatibilitätsprüfung, Verwendungsschutz beim Löschen.
- **Out of Scope (bewusst):** Eigene Join-Definitionen und Where-Bedingungen mit Query-Wirkung (Semantic-Layer-Aufgabe; im Prototyp erfasst, aber wirkungslos – wird **nicht** übernommen, solange nicht anders entschieden), Pflege des Cube-Fachmodells, Datenrechte (Cube/F16).

## 3 · Technisches Design

### 3.1 Datenmodell

```
DataModel:  Id, TenantId, SemanticLayerId (FK), Name, Description,
            SelectedCubesJson ([{ cube, fields[] }]),
            DiagramJson ({ positions: { cube → {x,y} } }),
            LastMetaSyncAt, SchemaVersion, Audit-Felder, RowVersion
```

Bindung: `Widget.DataModelId?` und `Dashboard/Report.DataModelId?` (nullable für Migration; neue Objekte wählen verpflichtend ein Modell). Kompatibilitätsregel: Widget passt zu App/Bericht, wenn beide dasselbe Modell referenzieren und alle vom Widget genutzten Cubes/Felder im Modell ausgewählt sind.

### 3.2 API & Frontend

- `/api/datamodels` CRUD + `POST /{id}/sync` (Meta-Abgleich: entfernte/umbenannte Member werden gemeldet, nicht stumm gelöscht). Schreiben: `hbi-designer`.
- Frontend: Wizard-Route mit den drei Schritten; Diagramm als eigene Komponente (SVG, Drag der Kästen, Linien aus Cube-Joins der Meta-API); Feldlisten aus der `MetaFieldList`-Komponente (F05) wiederverwendet.
- Designer-Feldlisten (F08) zeigen bei gesetztem Modell nur dessen ausgewählte Cubes/Felder.

## 4 · Akzeptanzkriterien

- [ ] Modell anlegen → Cubes/Felder auswählen → speichern → erneut öffnen: Auswahl und Diagramm-Positionen identisch.
- [ ] Meta-Sync meldet entfallene Member als Konfliktliste (kein stummer Datenverlust); Refresh aktualisiert Feldlisten.
- [ ] Widget-Picker kennzeichnet inkompatible Widgets mit Begründung; kompatible zuerst sortiert.
- [ ] Löschen eines verwendeten Modells → 409 mit Liste der nutzenden Objekte.
- [ ] Feldlisten im Widget-Designer respektieren die Modell-Auswahl.
- [ ] Tenant-Isolation; Wizard responsive und tastaturbedienbar.

## 5 · Testplan

- **Unit:** Kompatibilitätsregel (Matrix Modell × Widget-Member), Aufräumlogik bei Cube-/Feld-Abwahl, Sync-Diff.
- **Integration:** CRUD + Sync gegen WireMock-Cube, Verwendungsschutz.
- **E2E:** Modell anlegen → Widget darauf bauen → App bindet Modell → Picker-Kompatibilität prüfen.

## 6 · Offene Punkte dieses Features

> [!question] Eigene Joins & Where-Bedingungen in der App?
> Der Prototyp erfasst Beziehungen (INNER/LEFT, Auto-Detect) und freie Where-Ausdrücke je Spalte, nutzt beides aber nicht. Übernehmen wir das als reine **Dokumentation** im Diagramm, lassen wir es weg (Vorschlag: weg – Single Point of Truth bleibt Cube), oder gibt es einen echten Bedarf, der ins Cube-Fachmodell gehört?

> [!question] Verhältnis zu F05
> F05 (Metadaten-Explorer, read-only) bleibt als Browse-Ansicht bestehen; der Editor baut darauf auf. Alternativ könnte F05 im Editor aufgehen – Entscheidung bei Umsetzungsplanung.
