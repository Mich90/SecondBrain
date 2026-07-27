---
title: Vorteile CGM Health BI & MARE
tags:
  - mare
  - cgm-health-bi
  - eistik-next-gen
  - zielbild
  - vorteile
aliases:
  - Vorteile Health BI MARE
  - Synergie Health BI MARE
---

# Vorteile CGM Health BI & MARE

> [!abstract] Kern
> Das [[Ergebnis – Zielbild & Vorgehen|Zielbild von CGM Health BI]] („offene Healthcare Decision Platform" mit gemeinsamer **semantischer Schicht als Single Point of Truth") trifft auf [[Was ist MARE|MARE]] (**Data Lake + AI Engine**). Beide ergänzen sich: Health BI liefert eine breite, standardisierte Datenbasis und die letzte Meile zur Entscheidung – MARE liefert die multimodale KI-Plattform und das internationale Umfeld.

## Ausgangspunkt

Aus dem [[Ergebnis – Zielbild & Vorgehen|Zielbild]]:

> [!quote]
> Weg vom statischen Berichtswesen – hin zur navigierenden Entscheidungsplattform.

MARE ist heute stark auf **EMR/EHR-Daten** ausgerichtet und standardisiert nach **FHIR/OMOP**. CGM Health BI bringt genau die Daten und die Semantik ein, die diesen Raum verbreitern und für KI nutzbarer machen.

## Die Vorteile im Detail

> [!success] 1 · Erweiterte, multimodale Datenbasis
> CGM Health BI verfügt über eine **breite Datenbasis, die aktuell nicht in MARE verfügbar ist**:
> - **Stationäre Daten** (Fall-, Leistungs-, Prozess- und Verlaufsdaten aus dem Krankenhaus) – MARE ist bislang EMR/EHR-zentriert.
> - **Unstrukturierte Daten** (Arztbriefe, Befunde, Freitext) – idealer Rohstoff für die **NLP/LLM-Fähigkeiten der MARE AI Engine**.
> - **Betriebswirtschaftliche & operative Kennzahlen** – Kontext, den reine klinische EHR-Daten nicht liefern.
>
> Ergebnis: mehr **Modalitäten und Tiefe** im MARE Data Lake → besseres, breiteres KI-Training.

> [!success] 2 · Einheitliche Datenstandards & Semantik
> Das Zielbild „gemeinsame semantische Schicht" ist der natürliche Andockpunkt an MARE. Über einheitliche Terminologien –
> **LOINC** (Labor/Messwerte), **SNOMED CT** (klinische Begriffe), ergänzt um **ICD/OPS** – werden Daten harmonisiert und lassen sich verlustarm auf MAREs **FHIR/OMOP** abbilden.
>
> - Health BI kann Daten bereits **standardisiert und annotiert** anliefern → **weniger Aufwand bei der Datenaufbereitung** (genau MAREs Nutzenversprechen).
> - Semantische Konsistenz ist Voraussetzung für **vergleichbare Kohorten** und belastbare KI-Ergebnisse.

> [!success] 3 · Geschlossener KI-Kreislauf
> - **Health BI → MARE:** liefert standardisierte Real-World-Daten (inkl. stationär & unstrukturiert) als Trainingsgrundlage.
> - **MARE → Health BI:** trainierte, validierte Modelle (Prognosen, Insights) fließen zurück in die **KI-gestützte Entscheidung** der Plattform.
>
> So entsteht ein durchgängiger Weg von Rohdaten über Modell bis zur Entscheidung am Arbeitsplatz.

> [!success] 4 · Widget-first: KI dort, wo gearbeitet wird
> Health BI ist **Widget-first und einbettbar**. MARE-Modelle und -Insights erscheinen damit direkt im Arbeitskontext – auch **außerhalb von eisTIK** (Teams, Intranet, KIS, AIS). Health BI wird zur **Verteil- und Präsentationsschicht** für MARE-Intelligenz.

> [!success] 5 · Internationales Potenzial
> MARE ist als KI-Trainingszentrum für **Europa und die USA** angelegt (Standort Venedig, CGM als weltweiter EMR-Anbieter).
> - Einheitliche Standards (**LOINC, SNOMED CT, FHIR, OMOP**) machen Daten **länderübergreifend anschlussfähig** und vergleichbar.
> - Standardisierung ist die **Voraussetzung für internationale Kohorten** und grenzüberschreitende Real-World-Evidence.
> - Über das CGM-Netz **skalierbar** – der Beitrag zur MARE-Vision, künftig „Millionen Menschen weltweit" zu helfen.

> [!success] 6 · Forschung & Real-World Evidence
> MAREs **Cohort Builder** plus die zusätzlichen Health-BI-Modalitäten (stationär, longitudinal, unstrukturiert) ermöglichen tiefere **RWE-Studien, Registerauswertungen und EMR-gestützte klinische Studien**.

> [!success] 7 · Gemeinsame Datenschutz- & Compliance-Basis
> Beide Seiten teilen einen starken Rahmen: **DSGVO-konform, EU-/DE-Hosting, C5-fähig**, De-Identifikation (PHI) und Einwilligungsmanagement. Das erleichtert einen **rechtssicheren Datenfluss** über den Connector.

## Auf einen Blick

| Was CGM Health BI einbringt | Was MARE einbringt | Gemeinsamer Nutzen |
|---|---|---|
| Breite Datenbasis: stationär, unstrukturiert, operativ | Multimodaler Data Lake (heute EMR/EHR-zentriert) | Deutlich breitere, tiefere Datengrundlage |
| Semantische Schicht (LOINC, SNOMED CT, ICD/OPS) | Standards FHIR/OMOP, Annotation & Katalogisierung | Nahtlose, verlustarme Interoperabilität |
| KI-gestützte Entscheidung, Widget-first | AI Engine, prädiktive Modelle, Cohort Builder | Geschlossener Kreislauf von Daten zu Entscheidung |
| Präsentation im Arbeitskontext (KIS/AIS/Teams) | KI-Trainingszentrum EU/USA | KI-Insights genau dort, wo gearbeitet wird |
| Standardisierte, harmonisierte Daten | Internationales Umfeld & Skalierung | Länderübergreifende Kohorten & RWE |


## Verwandte Notizen

- [[Was ist MARE|MARE – Grundlagen]]
- [[Ergebnis – Zielbild & Vorgehen|Zielbild CGM Health BI]]
- [[CGM Health BI|Projekt-Startseite]]

_Stand: 2026-07-27_
