---
title: Funktionale Fähigkeiten
project: "[[CGM Health BI]]"
bereich: anforderungen
status: entwurf
tags:
  - pflichtenheft
  - anforderungen
  - funktional
---

# Funktionale Fähigkeiten

## Berichtswesen als Plattformfähigkeit

Berichtswesen ist keine separate Applikation, sondern eine **Plattformfähigkeit**:

- parametrisierte Berichte
- **Berichtsmappen** (mehrere Widgets als logische Einheit)
- zeitgesteuerte Generierung
- Abo-Service
- druckfertige Exporte (PDF, Excel) mit CI-Formatierung und **Rechteprüfung beim Rendern**

Standardberichtssets werden als konfigurierbare Pakete ausgeliefert.

## Self-Service im definierten Rahmen

Nutzer müssen eigene Analysen erstellen, speichern, fortsetzen und teilen können – **ohne Schulung, ohne Entwicklereingriff**.

> [!note] Klare Grenze
> Nutzer passen ihre **Ansicht** an (Widgets, Filter, Reihenfolge). Erfolgreiche Ad-hoc-Analysen müssen in **standardisierte Berichte überführbar** sein.

## Kollaboration im Datenkontext

Analysearbeit ist Teamarbeit. Die Plattform muss **Kommentare, Annotationen und geteilte Analysezustände direkt im Datenkontext** ermöglichen – nicht in einem externen Tool. Verlinkbare Analysezustände (**Deep Links mit Filterkontext**) sind Voraussetzung für arbeitsteilige Analyse.

## Alerting / Push

Event- und Subscription-Engine mit konfigurierbaren Schwellenwerten, Zustellkanälen und Empfängerregeln (siehe [[Leitprinzipien#Push statt Pull]]).

## KI-Assistenz

Natürlichsprachlicher Zugang zu Daten, kontextsensitive Erklärungen, Abweichungsanalysen, Handlungsempfehlungen (siehe [[Leitprinzipien#AI als Instrument, nicht als Selbstzweck]]).

## Technische i-Tüpfelchen

> [!tip] Wow-Effekt / Technologieaffine Zielgruppen
> Optionale Leuchtturm-Features zum Abholen technologieaffiner Geschäftsführer – z. B. auf Messen:
> - **Meta-Ray-Ban-Integration** als Messe-Wow-Effekt
> - **Sprachsteuerung**
