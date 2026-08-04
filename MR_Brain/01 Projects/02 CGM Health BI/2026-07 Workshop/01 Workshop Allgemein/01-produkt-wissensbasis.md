---
title: eisTIK® – Produkt-Wissensbasis (Ist-Stand)
tags:
  - eistik-next-gen
  - workshop/2026-07
  - wissensbasis
---

# eisTIK® – Produkt-Wissensbasis (Ist-Stand)

> [!info] Quellen
> Recherche-Grundlage für den Workshop. Zusammengefasst aus den offiziellen
> Produkt- und Lösungsseiten von CGM und KMS.
> Quellen: [CGM](https://www.cgm.com/aut_de/produkte/krankenhaus/management-dashboard/eis-tik.html),
> [KMS](https://www.kms.ag/loesungen/eistik/)

## 1. Was ist eisTIK®?

eisTIK® ist ein **Data Warehouse und Management-Informationssystem (BI) speziell für
das Gesundheitswesen**, entwickelt von KMS (CGM-Tochter). Es führt Daten aus den
verschiedenen Systemen einer Klinik zentral zusammen, transformiert sie und macht daraus
**entscheidungsrelevantes Wissen** – nicht bloße Datensammlung, sondern gezielte
Aufbereitung für die Krankenhaussteuerung.

Leitgedanke: *smarte Software kombiniert mit langjähriger Erfahrung im Gesundheitswesen*
– Rundum-Übersicht über das Klinikgeschehen.

> [!important] Domänen-Scope (verbindlich)
> Das Data Warehouse hat **primär das Krankenhaus**
> als Anwendungsbereich und erweitert das **Gesundheitswesen** insgesamt – z. B. MVZ,
> Reha und weitere Einrichtungen. Dieser Rahmen gilt auch für die nächste Generation.

## 2. Zielgruppe

- **Primär: Krankenhäuser** jeder Größe – von der hochspezialisierten Fachklinik bis zum Gesundheitskonzern
- **Erweitert: weiteres Gesundheitswesen** – MVZ (Medizinische Versorgungszentren), Reha-Einrichtungen u. a.
- Führungskräfte / Geschäftsführung
- Controller & Medizincontroller
- Personalleitung / HR
- Pflegedienstleitung

## 3. Funktionsweise & Architektur

- **Data-Warehouse-Ansatz**: zentrale Zusammenführung „unter einem Dach"
- **Hunderte Schnittstellen** zu Vorsystemen
- **Datenquellen**: KIS, Personalmanagement, ERP, Dienstplansysteme, Zeitwirtschaft, Archivsysteme
- **Drill-Cross-Fähigkeit** über alle Module – auch **datenwürfelübergreifend**
- **Modularer Aufbau**: Kliniken buchen nur benötigte Module → schlank, wächst mit
- **Berechtigungskonzept**: differenziert (v.a. personalrechtliche Daten), mit Anonymisierung
- **KI-Integration**: „eisTIK® goes AI" – erweiterte Datenanalyse

## 4. Module (Überblick)

| Modul | Kerninhalt |
|-------|-----------|
| **Patientenmanagement** | Bettenbelegung, ambulante Fallzahlen, Diagnosen, OPS, Auslastung, Ambulanzcontrolling, fallbezogene Erlöse |
| **Leistungsmanagement** | Leistungsstatistiken nach Dimensionen (Punkte, Preise, Zeiten) |
| **HR / Personal** | Personalkennzahlen, anonymisierbar, berechtigungsabhängig |
| **Dienstplan** | Personaldisposition aus effektiven Einsatzplänen, kombinierbar mit Leistung/Kosten |
| **Pflegecontrolling** | Integrierte Sicht Belegung + Dienstplan, automatisierte Verteilung |
| **PpUGV / PPP-RL / PPBV (PPR 2.0)** | Gesetzliche Pflegepersonalvorgaben, Soll-Ist, InEK-Lieferung |
| **OP-Management** | OP-Auslastung, Leerstände, Leistungsverzahnung, Facharztnachweis |
| **Materialwirtschaft (MAWI)** | Artikelverbräuche, Warengruppen, Lieferanten, Lagerbewegungen |
| **Reha-Controlling** | Falldaten, Belegungen, Diagnosen, Qualitätsoptimierung |
| **MVZ-Steuerung** | MVZ-Controlling, getrennt nach Privat / GKV |
| **Strategisches Grouping** | Szenarioanalysen DRG & PEPP (Simulation von Maßnahmen) |
| **DRG-Modul** | DRG-Cockpit, DRG-Profile, Benchmark, E1-Generierung, Wiederkehrer, Zusatzentgelte |
| **PEPP-Modul** | Psychiatrie/Psychosomatik, Zeitreihen, Alters-/Verweildauergruppen, E1 |
| **Finanzen** | Vorjahresvergleiche, Kostenanalysen, Abweichungen, Hochrechnungen, Trends |
| **Kostenrechnung (KTR)** | Kostenstellen-/Kostenträgerrechnung, Umlagen, ILV, InEK-konform oder frei |
| **MD-Management** | Termintracker/Fristsicherung, Fallanalysen, Dokumentengenerierung, Archivanbindung |
| **Berichtsdesigner** | Zentrale Erstellung von Abfragen, Berichten, Dashboards |
| **Erlössplitting** | Erlösverteilung (verweildauer-/leistungsbasiert), Profit-Center-Rechnung |
| **Patientenabrechnung** | Abrechnung nach Versorgungsarten und Tarifwerken |

## 5. Analyse-Dimensionen

Organisationseinheiten/Kostenstellen · Zeitperioden/Zeitreihen · Fachrichtungen/-abteilungen ·
Konten/Kostenarten · Warengruppen/Lieferanten · Versorgungsarten/Tarifwerke

## 6. Wesentliche Vorteile (heute beworben)

- **Geschwindigkeit**: stufenweise Einführung, modular, kurze Einführungszeiten, „in-time & in-budget"
- **Technologie**: zukunftsweisende Architektur, volle Drill-Cross-Fähigkeit
- **Berichtswesen**: tagesaktuelle Kennzahlen, standardisiert + individualisierbar
- **Erlössteuerung**: Transparenz über Leistungen/Kosten/Prozesse, kontinuierlicher Plan-Ist-Abgleich
- **Expertise**: Team mit langjähriger Krankenhaus-Erfahrung, laufende Anpassung an Gesetzesänderungen

## 7. Für den Workshop relevante Beobachtungen (neutral)

Diese Punkte sind Ausgangsfragen, keine Wertungen – für die Diskussion zur nächsten Generation:

- Sehr breite Modullandschaft → Fragen zu Konsistenz, Wiederverwendung, Pflegeaufwand
- Data-Warehouse mit hunderten Schnittstellen → Themen Integration, Datenqualität, Betrieb
- KI ist bereits gestartet („goes AI") → Was ist der Ausbaupfad?
- Starke Regulatorik (DRG, PEPP, PpUGV, PPP-RL, PPBV) → Anpassungsgeschwindigkeit als Kernwert
- Drill-Cross & datenwürfelübergreifend → mögliche Grundlage für ein moderneres Self-Service-/Semantic-Layer-Konzept
