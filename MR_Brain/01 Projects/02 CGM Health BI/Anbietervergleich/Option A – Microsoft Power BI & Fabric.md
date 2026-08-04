---
title: Option A – Microsoft Power BI & Fabric
project: "[[CGM Health BI]]"
bereich: anbietervergleich
status: entwurf
version: "0.1"
date: 2026-07-30
tags:
  - anbietervergleich
  - microsoft
  - power-bi
  - fabric
---

# Option A – Microsoft Power BI & Fabric

> [!abstract] Steckbrief
> **Typ:** Komplettplattform (Semantic Layer + Analyse-GUI aus einer Hand)
> **Semantic Layer:** Power BI Semantic Models / SSAS Tabular (XMLA)
> **Analyse-GUI:** Power BI Service (Cloud) bzw. Power BI Report Server (On-Prem)
> **Cloud:** Power BI Service / Microsoft Fabric · **On-Prem:** Power BI Report Server + SSAS

## Architektur-Mapping auf das Pflichtenheft

| Layer (Pflichtenheft) | Microsoft-Baustein |
| --- | --- |
| [[Voraussetzung – Semantische Schicht\|Semantische Schicht]] | Power BI Semantic Model (Cloud) / SSAS Tabular (On-Prem), Zugriff via XMLA, REST (ExecuteQueries), DAX/MDX |
| Analyse-GUI ([[Scope – In & Out of Scope\|In-Scope-Frontend]]) | Power BI Service (Web-Designer, Dashboards, Apps) bzw. Power BI Desktop + Report Server |
| [[Excel-Integration]] | **Referenzimplementierung**: „Analyze in Excel" via XMLA – exakt das im Pflichtenheft geforderte Muster |
| [[Rollen- & Berechtigungsmodell\|RLS/Berechtigungen]] | Row-Level-Security im Semantic Model, Enforcement serverseitig, Entra ID / SSO |

## Erfüllungsgrad (Kernkriterien)

> [!info] Legende
> ✅ erfüllt · ⚠️ teilweise / mit Einschränkung · ❌ nicht erfüllt

| Kriterium                               | Cloud | On-Prem | Anmerkung                                                                                                                            |
| --------------------------------------- | ----- | ------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| Vollständige On-Prem-Nutzung            | –     | ⚠️      | **Report Server ist stark reduziert**: keine Dashboards, kein Alerting, kein Q&A/Copilot, keine Apps, kein Web-Authoring der Modelle |
| SaaS-/Cloud-Betrieb                     | ✅     | –       | Power BI Service / Fabric                                                                                                            |
| Hybrid / BYOC                           | ⚠️    | ⚠️      | Kein echtes BYOC; Hybrid nur als Parallelbetrieb Service + Report Server                                                             |
| C5-Fähigkeit (Cloud)                    | ✅     | n/a     | Azure & Microsoft 365 mit C5-Typ-2-Testaten; Fabric-Abdeckung im Einzelfall prüfen                                                   |
| EU-/DE-Hosting                          | ✅     | ✅       | EU Data Boundary, deutsche Azure-Regionen                                                                                            |
| Zentrale, versionierte KPI-Definitionen | ✅     | ⚠️      | Semantic Models, Git-Integration in Fabric; On-Prem nur via ALM-Toolkette                                                            |
| Offene API (REST/GraphQL)               | ⚠️    | ⚠️      | XMLA + REST vorhanden, aber MS-Ökosystem-zentriert; kein GraphQL                                                                     |
| Excel-Live via XMLA                     | ✅     | ✅       | Stärkstes Kriterium dieser Option; **Cloud: XMLA erst ab PPU oder F-Kapazität**                                                      |
| Konsum durch Dritttools                 | ⚠️    | ⚠️      | XMLA-Clients ja; Nicht-MS-Tools (Tableau, Qlik) nur eingeschränkt                                                                    |
| RLS zentral enforced, kanalübergreifend | ✅     | ✅       | RLS im Modell, gilt für Web, Excel, Embedded, Export                                                                                 |
| Mandantenfähigkeit                      | ⚠️    | ⚠️      | Über Workspaces + RLS abbildbar, kein natives Multi-Tenant-Management                                                                |
| Webbasierter Designer (DES-01–03)       | ✅     | ❌       | Cloud: Web-Editing gut; volle Modellierung weiter in Desktop; On-Prem: nur Desktop                                                   |
| Drill-down bis Fallebene (FIL-02/04)    | ✅     | ✅       | Hierarchien, Drill-Through                                                                                                           |
| Berechnete Felder Anwender (CALC-01)    | ⚠️    | ⚠️      | DAX ist mächtig, aber keine „fachliche Syntax" für Standardnutzer (CALC-07)                                                          |
| Export Excel/CSV (EXP-01)               | ✅     | ✅       |                                                                                                                                      |
| PDF-Abos, Berichtsmappen (EXP-08 ff.)   | ✅     | ⚠️      | Abos + paginierte Berichte ✓; Berichtsmappen nur als Workaround; On-Prem-Abos nur paginiert                                          |
| Alerting/Push ([[Leitprinzipien]])      | ⚠️    | ❌       | Nur einfache KPI-Alerts; echtes Alerting via Power Automate (Zusatzkosten); On-Prem keins                                            |
| Embedded / White-Label                  | ⚠️    | ❌       | Power BI Embedded möglich (separate F-/A-Kapazität); White-Labeling begrenzt                                                         |
| NLQ / KI (KI-01 ff.)                    | ⚠️    | ❌       | Copilot erst ab F64-Kapazität; EU-Datenverarbeitung zu prüfen; On-Prem keine KI                                                      |
| Mehrsprachigkeit (NAV-04)               | ✅     | ✅       |                                                                                                                                      |
| Mobile App / Responsive                 | ✅     | ⚠️      | Power BI Mobile App; Report Server mobil eingeschränkt                                                                               |

## Kosten (Listenpreise, Stand Juli 2026)

> [!info] Annahmen
> Umrechnung **1 US-$ = 0,90 €** · Jahreskosten · **30 % Rabatt auf Listenpreis** · Controller = Ersteller, User = Konsument.
> Für den vollen Semantic-Layer-Umfang (XMLA, paginierte Berichte) ist in der Cloud **PPU (24 $/User/Monat)** angesetzt, nicht Pro (14 $). Verbund: **Fabric F64 reserved (5.003 $/Monat)** + Pro für 25 Controller – ab ~225 Usern günstiger und mit unbegrenzten Viewern.

### Cloud / SaaS (jährlich)

| Kundengröße | Lizenzmodell | Liste $/Jahr | Liste €/Jahr | **nach 30 % Rabatt** |
| --- | --- | --- | --- | --- |
| Klein (2 C / 5 U) | 7 × PPU | 2.016 $ | 1.814 € | **≈ 1.270 €** |
| Mittel (5 C / 20 U) | 25 × PPU | 7.200 $ | 6.480 € | **≈ 4.540 €** |
| Groß (10 C / 50 U) | 60 × PPU | 17.280 $ | 15.552 € | **≈ 10.890 €** |
| Verbund (25 C / 200 U) | F64 reserved + 25 × Pro | 64.236 $ | 57.812 € | **≈ 40.470 €** |

> [!tip] Günstigere, aber nicht Pflichtenheft-konforme Variante
> Nur Power BI Pro für alle (14 $/User/Monat): Klein ≈ 740 €, Mittel ≈ 2.650 €, Groß ≈ 6.350 €, Verbund ≈ 23.810 € p. a. nach Rabatt – **ohne XMLA-Endpoint**, d. h. die [[Excel-Integration]] (Muss) ist damit nicht erfüllt.

### On-Prem (Power BI Report Server)

| Position | Liste | **nach 30 % Rabatt** |
| --- | --- | --- |
| SQL Server 2022 Enterprise, 8 Cores (einmalig) | 60.492 $ ≈ 54.440 € | **≈ 38.110 € einmalig** |
| Software Assurance (~25 %/Jahr, Pflicht für PBIRS) | ≈ 13.610 €/Jahr | **≈ 9.530 €/Jahr** |
| Power BI Pro je Controller (Publisher-Pflicht) | 14 $/User/Monat | Klein ≈ 212 €, Mittel ≈ 530 €, Groß ≈ 1.060 €, Verbund ≈ 2.650 €/Jahr |

Serverlizenz ist größenunabhängig (unbegrenzte Viewer); Verbünde benötigen ggf. mehr Cores. Alternativ lizenziert eine F64-reserved-Kapazität den Report Server mit.

## Stärken & Schwächen

> [!success] Stärken
> - Bester Excel-/XMLA-Pfad am Markt – deckt [[Excel-Integration]] vollständig ab
> - Niedrigste Cloud-Einstiegskosten aller drei Optionen (Klein/Mittel)
> - C5, EU Data Boundary, Entra-SSO – Compliance-Story in der Cloud sehr solide
> - Riesiges Ökosystem, Fachkräfteverfügbarkeit

> [!failure] Schwächen
> - **„Vollständig on-prem" ist nicht gegeben** – Report Server ist ein Feature-Torso; die Pflichtenheft-Anforderung [[Betrieb, Performance & Compliance|On-Prem/SaaS/Hybrid aus einer Produktlogik]] wird verfehlt
> - On-Prem-Einstieg wirtschaftlich schwer für kleine Häuser (≈ 38 T€ einmalig + SA)
> - Alerting/Push, White-Label, Berichtsmappen nur mit Zusatzbausteinen/Workarounds
> - Copilot/KI an F64 gebunden – für Klein/Mittel faktisch unerreichbar

> [!warning] Premortem-Risiko
> Microsoft verschiebt Innovation vollständig Richtung Fabric/Cloud; der Report Server erhält seit Jahren kaum Funktionszuwachs. Ein On-Prem-lastiger Kundenstamm (deutsche Krankenhäuser) säße auf einer faktisch eingefrorenen Plattform – Sunset-Risiko analog eigener Altprodukte.

## Quellen

- [Microsoft Power BI Pricing](https://www.microsoft.com/en-us/power-platform/products/power-bi/pricing) (Pro 14 $, PPU 24 $ seit 04/2025)
- [Fabric-Kapazitätspreise F2–F2048](https://powerbiconsulting.com/blog/microsoft-fabric-pricing-cost-complete-guide-2026) (F64 reserved ≈ 5.003 $/Monat)
- PBIRS-Lizenzierung via SQL Server EE + SA bzw. F64 reserved

← Zurück zur [[Anbietervergleich BI-Plattformen|Übersicht]]
