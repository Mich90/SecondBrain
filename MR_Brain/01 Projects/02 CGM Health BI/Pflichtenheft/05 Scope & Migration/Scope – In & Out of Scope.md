---
title: Scope – In & Out of Scope
project: "[[CGM Health BI]]"
bereich: scope
status: entwurf
tags:
  - pflichtenheft
  - scope
  - abgrenzung
---

# Scope – In & Out of Scope

## In Scope – Gegenstand dieses Pflichtenhefts

- Neuentwicklung der Web-Oberfläche als browserbasierte, responsive Anwendung
- UX-Design und Interaktionskonzept
- Berichtswesen: Report-Engine, Berichtsmappen, PDF-/Excel-Export, zeitgesteuerte Generierung
- Rollen- und Berechtigungskonzept (Frontend-Sicht, Row-Level-Security)
- Mandantenfähigkeit und CI/Branding
- Neue funktionale Fähigkeiten: Alerting/Push, Embedded Analytics, Ad-hoc-Analyse, KI-Assistenz
- Migrationskonzept für bestehendes Berichtswesen
- Kanalstrategie: Web (primär), perspektivisch Teams, Mobile, Office, Embedded

## Out of Scope – nicht Gegenstand / anderweitig spezifiziert

> [!info] Separat spezifiziert
> - **Semantische Schicht im Detail** – Technologiewahl, Modellstruktur und Governance werden separat spezifiziert; hier nur als Voraussetzung referenziert ([[Voraussetzung – Semantische Schicht]])
> - **Alles unterhalb der Semantikschicht** – Datenbankarchitektur, ETL-Strecken, Ingestion Layer, Datenextraktion aus Quellsystemen

> [!failure] Ablösung statt Fortschreibung (Altlasten)
> - SSAS Multidimensional Cubes als Abfrage-Engine (Ablösung, nicht Fortschreibung)
> - WPF-Desktop-Client / Fat-Client als Primär-Frontend
> - Stored-Procedure-basierte Fachlogik (wird in die Semantikschicht überführt – dort spezifiziert)
> - Eigenentwickelter monolithischer ETL-/Cube-Generierungsdienst
> - Proprietäre Berichtsentwicklungs- und Rendering-Engine (Ablösung durch komponentenbasiertes Authoring)
> - Individuelle Kundenentwicklung im Code (nur Konfiguration, update-sicher)
> - Parallelbetrieb .NET/.akut-Altproduktlinien (Ablösung statt Parallelbetrieb)
> - Einzellizenzen (Umstellung auf Themen-/Bundle-Lizenzen – separater Prozess)

> [!danger] Ausgeschlossen
> - **Datenhandel / Projekt MARE** (strategische Idee, rechtlich nicht abgesichert, kein Pflichtenheft-Thema)
> - **Benchmarking / Kundenvergleiche** (gestrichen im Workshop)
