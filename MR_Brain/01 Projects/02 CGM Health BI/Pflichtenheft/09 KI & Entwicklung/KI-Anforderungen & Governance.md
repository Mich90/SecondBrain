---
title: KI-Anforderungen & Governance
project: "[[CGM Health BI]]"
bereich: ki
status: entwurf
tags:
  - pflichtenheft
  - ki
  - governance
---

# KI-Anforderungen & Governance

> [!info] Grundhaltung
> AI bleibt Assistent – nachvollziehbar, steuerbar, kein autonomes Handeln (siehe [[Leitprinzipien#AI als Instrument, nicht als Selbstzweck]]).

## Fachlicher Kontext als Grundlage

KI-Funktionen greifen auf die **semantische Schicht** zu und interpretieren Kennzahlen im richtigen fachlichen Kontext – Voraussetzung für belastbare, nachvollziehbare Antworten (vgl. [[API, Semantic Layer & Schnittstellen#Datenkatalog & Herkunft (Datenvertrauen)]]).

## Nicht-funktionale Rahmenbedingungen

Für KI-gestützte Ad-hoc-Abfragen und Assistenten gelten:

- akzeptable Antwortzeiten
- Sicherheit
- definierte **Grenzen der Auskunft** und des Zugriffs auf Daten (z. B. personenbezogene Daten)

## Datenschutz & Governance

Für die KI-Nutzung gelten **dieselben Datenschutz- und Governance-Regeln** wie für das übrige System (siehe [[Datenschutz & Rechtliche Vorgaben]]):

- keine unkontrollierte Weitergabe sensibler Daten an KI
- KI-Modelle/-Dienste werden **innerhalb der EU** genutzt bzw. gehostet
- keine Übermittlung sensibler Daten an Modelle außerhalb der EU
