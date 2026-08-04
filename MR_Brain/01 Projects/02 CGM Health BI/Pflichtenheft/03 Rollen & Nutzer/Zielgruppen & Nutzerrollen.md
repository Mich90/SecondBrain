---
title: Zielgruppen & Nutzerrollen
project: "[[CGM Health BI]]"
bereich: rollen
status: entwurf
tags:
  - pflichtenheft
  - rollen
  - zielgruppen
  - personas
---

# Zielgruppen & Nutzerrollen

> [!abstract] Prinzip
> Die Plattform adressiert **alle Rollen** – nicht nur Controller und BI-Spezialisten. Jede Rolle erhält Information in der passenden **Interaktionstiefe** (Ambient / Micro / Compact / Full, siehe [[Architektur – Widgets, Kanäle & Integration#Gestufte Interaktionstiefe]]) und im richtigen Kanal.

## Krankenhaus

### Full / Power User
- **Medizincontroller** – Der analytische Kern-User. Braucht Drill-down bis auf Fallebene, Ad-hoc-Analysen und speicherbare Abfragen. Arbeitet täglich intensiv im System.

### Compact / Steuerungsebene
- **Pflegedirektion** – Tagesaktuelle Dashboards für Personalsteuerung (PPR 2.0, PPRL). Braucht verdichtete Sichten, gelegentlich Drill-down.
- **Kaufmännische Direktion / GF** – Standortübergreifende Monatsberichte, Abweichungsanalysen, Liquidität. Konsumiert primär fertige Berichte.
- **OP-Koordination** – Operative Steuerung: OP-Auslastung, Wechselzeiten, Saalplanung. Braucht tagesaktuelle, kompakte Sichten.

### Micro / Informationsempfänger mit Kontext
- **Chefarzt / Ärztl. Direktor** – Will nicht suchen, sondern benachrichtigt werden. KPI-Alerts, Push bei Erlösabweichung, Fallzahlen der eigenen Abteilung. Minimal-Interaktion, maximale Relevanz.
- **Stationsleitung / Pflege** – Operative Micro-Sichten: Bettenstatus, Personalquoten, Soll-Ist. Kurzer Blick, schnelle Orientierung.

### Ambient / Kein Login
- **Aufsichtsrat / Gremien** – Reine Empfänger. Periodische PDF-Berichtsmappen per E-Mail. Kein Systemzugang nötig.

## Reha & Pflege / Heim

### Compact bis Full / Steuerung & Analyse
- **Heimleitung** – Gesamtüberblick: Belegung, Personalschlüssel, Qualitätsindikatoren, Kostenentwicklung. Zentraler Steuerungs-User der Einrichtung.
- **Pflegeleitung (Heim/Reha)** – Pendant zur Pflegedirektion im Krankenhaus. Personalquoten, Bewohnerkennzahlen, Qualitätsberichte. Tagesaktuelle Steuerungssicht.

### Compact / Berichtsempfänger mit Steuerungsfokus
- **Kaufmännische Leitung** – Erlös-/Kostenübersicht, Belegungssteuerung, Trägerberichte. Konsumiert primär fertige Berichte.

### Micro bis Compact / Fachspezifische Sichten
- **Therapeuten** – Therapieauslastung, Leistungsübersicht, Behandlungsfrequenzen. Kompakte, fachbezogene Kennzahlen.
- **Psychologen** – Fallzahlen, Behandlungsverläufe, Auslastung, Qualitätskennzahlen. Ähnliches Interaktionsprofil wie Therapeuten.

## Niedergelassener Bereich

### Micro bis Compact / Inhaber
- **Niedergelassener Arzt / Zahnarzt** – Praxiskennzahlen, Fallzahlen, Erlösübersicht, Abweichungs-Alerts. Will informiert werden, nicht analysieren.

### Compact bis Full / Praxissteuerung
- **Praxismanager** – Der operative Power-User der Praxis. Wirtschaftlichkeit, Personalplanung, Abrechnungsübersichten. Tiefere Analysefähigkeit nötig.

## Apotheke

### Compact bis Full / Steuerung
- **Apotheker / Apothekenleitung** – Umsatz, Warenwirtschaft, Margenanalyse, Bestandskennzahlen. Braucht analytische Tiefe für Bestandsoptimierung und Wirtschaftlichkeit.

## Sektorübergreifend

### Full / Systemrollen
- **BI-Designer / Power-User** – Der Gestalter. Widget- und Berichtsdesign, Analysevorlagen, Fachmodell-Erweiterungen. Arbeitet **am** System, nicht nur **mit** dem System.
- **Administrator** – Rollenverwaltung, Mandantenkonfiguration, Systemeinstellungen. Technischer Betrieb, kein fachlicher Nutzer.

### Compact / Konsolidierung
- **Träger- / Verbundleitung** – Konsolidierte Berichte über Einrichtungen und Sektoren hinweg. Pendant zum Aufsichtsrat im Krankenhaus, aber mit mehr Steuerungsanspruch.
