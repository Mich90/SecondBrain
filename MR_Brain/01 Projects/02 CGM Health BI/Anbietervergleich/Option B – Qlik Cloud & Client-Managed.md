---
title: Option B – Qlik Cloud & Client-Managed
project: "[[CGM Health BI]]"
bereich: anbietervergleich
status: entwurf
version: "0.1"
date: 2026-07-30
tags:
  - anbietervergleich
  - qlik
---

# Option B – Qlik Cloud & Client-Managed

> [!abstract] Steckbrief
> **Typ:** Komplettplattform (Associative Engine + Analyse-GUI aus einer Hand)
> **Semantic Layer:** Assoziatives Datenmodell + Master Items (je App), geschlossene Engine
> **Analyse-GUI:** Qlik Sense (vollständig webbasiert)
> **Cloud:** Qlik Cloud Analytics (Kapazitätsmodell) · **On-Prem:** Qlik Sense Client-Managed

## Architektur-Mapping auf das Pflichtenheft

| Layer (Pflichtenheft) | Qlik-Baustein |
| --- | --- |
| [[Voraussetzung – Semantische Schicht\|Semantische Schicht]] | Assoziatives Modell + Master Items – mächtig, aber **app-gebunden und proprietär**, kein offener Layer für Dritttools |
| Analyse-GUI | Qlik Sense Hub + Sheets, vollständig webbasierter Designer, Insight Advisor |
| [[Excel-Integration]] | ❌ Kein XMLA; Excel-Add-in & Reporting nur als Export, kein Live-Pivot gegen die Semantik |
| [[Rollen- & Berechtigungsmodell\|RLS/Berechtigungen]] | Section Access (zeilen-/spaltenbasiert), greift kanalübergreifend innerhalb von Qlik |

> [!important] C5-Testat vorhanden
> Qlik hat 2026 ein **deutsches C5-Testat (BSI)** erhalten – explizit mit Fokus auf deutsche Gesundheitsdaten. Damit erfüllt Qlik Cloud die zentrale Voraussetzung aus [[Datenschutz & Rechtliche Vorgaben]] (§ 393 SGB V verlangt seit 07/2025 C5 Typ 2 für Cloud im Gesundheitswesen). Das Pflichtenheft nennt Qlik-Cloud hier sogar namentlich als Beispiel.

## Erfüllungsgrad (Kernkriterien)

| Kriterium | Cloud | On-Prem | Anmerkung |
| --- | --- | --- | --- |
| Vollständige On-Prem-Nutzung | – | ✅ | Client-Managed voll funktionsfähig; **KI-Features (Qlik Answers, AutoML) sind Cloud-only** ⚠️ |
| SaaS-/Cloud-Betrieb | ✅ | – | Qlik Cloud, EU-Region (Frankfurt) |
| Hybrid / BYOC | ⚠️ | ⚠️ | Hybrid als Parallelbetrieb; kein BYOC des Cloud-Stacks |
| C5-Fähigkeit (Cloud) | ✅ | n/a | **C5-Testat 2026 – Alleinstellungsmerkmal in diesem Vergleich** |
| EU-/DE-Hosting | ✅ | ✅ | |
| Zentrale, versionierte KPI-Definitionen | ⚠️ | ⚠️ | Master Items je App; kein app-übergreifender, versionierter Single Point of Truth |
| Offene API (REST/GraphQL) | ⚠️ | ⚠️ | Umfangreiche APIs (Automation, Embedding), aber Engine bleibt geschlossen |
| Excel-Live via XMLA | ❌ | ❌ | Hartes Gap gegen [[Excel-Integration]] (Muss) |
| Konsum durch Dritttools (Power BI etc.) | ❌ | ❌ | Qlik ist als Semantic Layer für fremde Frontends nicht vorgesehen – Konflikt mit „Shared Semantic Infrastructure" |
| RLS zentral enforced, kanalübergreifend | ✅ | ✅ | Section Access – aber nur innerhalb des Qlik-Orbits |
| Mandantenfähigkeit | ⚠️ | ⚠️ | Multi-Tenant-Management erst ab Premium/Enterprise; Client-Managed über Streams/Spaces |
| Webbasierter Designer (DES-01–03) | ✅ | ✅ | Vollständig webbasiert – stärkste GUI-Erfüllung im Vergleich |
| Drill-down bis Fallebene (FIL-02/04) | ✅ | ✅ | Assoziative Exploration ohne vordefinierte Pfade – Paradedisziplin |
| Berechnete Felder Anwender (CALC-01) | ✅ | ✅ | Master Items / Expressions |
| Export Excel/CSV (EXP-01) | ✅ | ✅ | |
| PDF-Abos, Berichtsmappen (EXP-08 ff.) | ✅ | ⚠️ | Qlik Reporting in Cloud; On-Prem: NPrinting mit **End-of-Life-Thematik** |
| Alerting/Push | ✅ | ⚠️ | Qlik Alerting (Cloud stark); On-Prem als Add-on |
| Embedded / White-Label | ✅ | ✅ | qlik-embed, OEM-Programm; White-Label ab Premium |
| NLQ / KI (KI-01 ff.) | ✅ | ❌ | Insight Advisor, Qlik Answers (Premium); **nicht on-prem** |
| Mehrsprachigkeit (NAV-04) | ✅ | ✅ | |
| Mobile App / Responsive | ✅ | ✅ | |

## Kosten (Listenpreise/Schätzungen, Stand Juli 2026)

> [!info] Annahmen
> Umrechnung **1 US-$ = 0,90 €** · Jahreskosten · **30 % Rabatt auf Listenpreis**.
> Qlik Cloud ist seit 03/2025 **kapazitätsbasiert** (unbegrenzte User, Abrechnung nach Datenvolumen/Analyzer-Minuten): Starter ab ~900 $/Monat (userbasiert, 10 GB), Standard ab ~2.700 $/Monat, Premium (inkl. KI) ab ~5.500 $/Monat. Client-Managed wird nur individuell angeboten – Preise dort sind **Schätzungen** auf Basis der Legacy-Listen (Professional ~70 $, Analyzer ~40 $/User/Monat).

### Cloud / SaaS (jährlich)

| Kundengröße | Tier | Liste $/Jahr | Liste €/Jahr | **nach 30 % Rabatt** |
| --- | --- | --- | --- | --- |
| Klein (2 C / 5 U) | Starter (ab) | 10.800 $ | 9.720 € | **≈ 6.800 €** |
| Mittel (5 C / 20 U) | Standard (ab) | 32.400 $ | 29.160 € | **≈ 20.410 €** |
| Groß (10 C / 50 U) | Standard + Kapazität *(Schätzung)* | ~45.600 $ | ~41.040 € | **≈ 28.730 €** |
| Verbund (25 C / 200 U) | Premium (ab, inkl. KI) | 66.000 $ | 59.400 € | **≈ 41.580 €** |

Kapazitätspreise sind nutzerunabhängig – Mittel/Groß zahlen ähnlich viel; der Preis skaliert mit Datenvolumen, nicht mit Köpfen.

### On-Prem / Client-Managed (jährlich, **Schätzung**)

| Kundengröße | Modell | Liste $/Jahr | Liste €/Jahr | **nach 30 % Rabatt** |
| --- | --- | --- | --- | --- |
| Klein (2 C / 5 U) | 2 Prof. + 5 Analyzer | ~4.080 $ | ~3.670 € | **≈ 2.570 €** |
| Mittel (5 C / 20 U) | 5 Prof. + 20 Analyzer | ~13.800 $ | ~12.420 € | **≈ 8.690 €** |
| Groß (10 C / 50 U) | 10 Prof. + 50 Analyzer | ~32.400 $ | ~29.160 € | **≈ 20.410 €** |
| Verbund (25 C / 200 U) | 25 Prof. + 200 Analyzer | ~117.000 $ | ~105.300 € | **≈ 73.710 €** |

> [!warning] Schätzcharakter
> Client-Managed-Neuverträge sind seit 2025 Verhandlungssache (Custom Deals); die Legacy-Preisspannen liegen bei 77–165 $ (Professional) bzw. 33–55 $ (Analyzer). Für Verbünde wäre real ein Enterprise-Bundle zu verhandeln – die lineare Hochrechnung überzeichnet dort.

## Stärken & Schwächen

> [!success] Stärken
> - **Einzige Komplettplattform mit echter On-Prem/Cloud-Parität der GUI** – Client-Managed ist ein vollwertiges Produkt
> - **C5-Testat** für die Cloud – regulatorisch der stärkste Kandidat für deutsche Krankenhäuser
> - Beste Analyse-GUI-Erfüllung (webbasierter Designer, assoziatives Drill, Alerting, Embedding)
> - Kapazitätsmodell entkoppelt Kosten von Nutzerzahlen – passt zur „alle Rollen im Krankenhaus"-Strategie ([[Zielgruppen & Nutzerrollen]])

> [!failure] Schwächen
> - **Kein offener Semantic Layer**: geschlossene Engine, kein XMLA, kein Konsum durch Power BI/Excel-Live – verfehlt [[Excel-Integration]] (Muss) und die Positionierung „Shared Semantic Infrastructure" aus [[Geschäftsmodell – Plattform statt Projekt]]
> - KPI-Definitionen app-gebunden statt zentral versioniert
> - KI-Funktionen Cloud-only → On-Prem-Kunden (Mehrheit im deutschen Markt) ohne NLQ
> - Hoher Cloud-Einstiegspreis für kleine Häuser (~6.800 €/Jahr nach Rabatt vs. ~1.270 € bei Microsoft)

> [!warning] Premortem-Risiko
> Qliks Kapazitätsmodell wird bei wachsendem Datenvolumen (klinikweites Jahres-Reporting, [[Performance & Antwortzeiten|reale Datenvolumina]]) teurer als kalkuliert; Overage-Abrechnung bis 10× des gebuchten Volumens kann Budgets unkontrolliert sprengen. Zudem: NPrinting-EOL zeigt, dass On-Prem-Bausteine abgekündigt werden können.

## Quellen

- [Qlik C5-Pressemitteilung](https://www.qlik.com/us/news/company/press-room/press-releases/qlik-achieves-german-c5-attestation-advancing-secure-cloud-compliance-for-regulated-industries)
- [Qlik Trust & Privacy (C5)](https://www.qlik.com/us/trust/privacy)
- [Qlik Cloud Pricing 2026 (Tiers & Legacy-Preise)](https://klarmetrics.com/qlik-cloud-pricing-2026/)
- [Qlik Pricing (offiziell)](https://www.qlik.com/us/pricing)

← Zurück zur [[Anbietervergleich BI-Plattformen|Übersicht]]
