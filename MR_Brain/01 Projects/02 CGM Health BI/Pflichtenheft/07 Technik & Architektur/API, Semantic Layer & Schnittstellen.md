---
title: API, Semantic Layer & Schnittstellen
project: "[[CGM Health BI]]"
bereich: technik
status: entwurf
tags:
  - pflichtenheft
  - technik
  - api
  - semantic-layer
  - architektur
---

# API, Semantic Layer & Schnittstellen

## Zugriffsprinzip

Das Frontend kommuniziert **ausschließlich über den Semantic Layer / eine Backend-API** mit dem DWH – kein direkter Datenbankzugriff und keine Fachlogik auf DB-Ebene.

> [!important] Architektur-Kerngedanke
> Das Frontend sieht immer nur den **Semantic Layer, nie das konkrete DWH**. So bleibt die Oberfläche unabhängig von SQL-Server vs. PostgreSQL und von On-Prem vs. Cloud – Voraussetzung für die Multi-Deployment-Optionen (siehe [[Skalierbarkeit, Deployment & Lizenzierung#Deployment-Modelle]]).

## API-Design

- Kommunikation über dokumentierte, **JSON-basierte REST- oder GraphQL-APIs**. Offen und dokumentiert, sodass Drittsysteme, automatisierte Tests (QA) und eigene Integrationen sie nutzen können.
- Abfragen folgen **einheitlichen Strukturen**: Filter, Sortierung, Paginierung, Metriken/Dimensionen. Das macht die API vorhersehbar und wiederverwendbar.
- **Standard-Ergebnismengen sind begrenzt** (z. B. 1.000 Zeilen), um Browser und API zu schützen; für größere Datenvolumina gibt es dedizierte **Export-Endpunkte**.
- Die API wird **versioniert und rückwärtskompatibel** weiterentwickelt, damit bestehende Integrationen bei Updates nicht brechen.

## Verantwortlichkeiten (Schichtentrennung)

| Schicht | Verantwortung |
| --- | --- |
| **Frontend (Angular)** | UI-Logik, Validierungen, Zusammensetzen der Abfrage-Parameter |
| **Semantic Layer / Backend-API** | Kennzahlen-Logik, Berechtigungen, Aggregationen, Mandanten-Trennung |
| **DWH** | Speicherung, performante Queries, Historisierung |

## Zentrales Business-Vokabular

Ein zentrales Business-Vokabular definiert Kennzahlen und Dimensionen **einheitlich und quellenunabhängig**:

- Dieselbe Kennzahl liefert überall denselben Wert – unabhängig von Bericht oder technischer Quelle.
- Die fachliche Definition ist von der Datenquelle **entkoppelt**; ändert sich die Quelle, bleibt die Definition stabil.

## Plattform als vertrauenswürdige Datenquelle

Die Plattform kann als **zentrale, vertrauenswürdige Datenquelle** für andere Tools dienen (Kennzahlen einheitlich abrufbar, statt in jedem System neu berechnet).

## Datenkatalog & Herkunft (Datenvertrauen)

Anwender können nachvollziehen, woher Daten stammen, wie sie berechnet werden und wie aktuell/verlässlich sie sind (**Datenkatalog + Herkunftsnachweis**). Derselbe fachliche Kontext dient zugleich als Grundlage für KI, damit KI-Antworten belastbar und nachvollziehbar bleiben (vgl. [[KI-Anforderungen & Governance]]).

## Embedding & Wiederverwendung

- Analysen und Kennzahlen lassen sich als **Widgets in andere Anwendungen einbetten**, sodass Daten dort erscheinen, wo entschieden/gearbeitet wird (Details siehe [[Architektur – Widgets, Kanäle & Integration#Embedded Analytics (Headless-Ansatz)]]).
- Ein einmal erstelltes Widget/Analyse-Element ist **wiederverwendbar** an mehreren Stellen und Systemen.
- Arbeitsstände von Analysen können **gespeichert, fortgesetzt, geteilt und kommentiert** werden (vgl. [[Funktionale Fähigkeiten#Self-Service im definierten Rahmen]] und [[Funktionale Fähigkeiten#Kollaboration im Datenkontext]]).
