---
title: Option C – Cube + Apache Superset (Preset)
project: "[[CGM Health BI]]"
bereich: anbietervergleich
status: entwurf
version: "0.1"
date: 2026-07-30
tags:
  - anbietervergleich
  - cube
  - superset
  - preset
  - kombination
---

# Option C – Cube (Semantic Layer) + Apache Superset / Preset (Analyse-GUI)

> [!abstract] Steckbrief
> **Typ:** Kombination – Semantic-Layer-Spezialist + BI-Frontend
> **Semantic Layer:** Cube (Cube Core self-hosted / Cube Cloud SaaS, BYOC)
> **Analyse-GUI:** Apache Superset (self-hosted) / Preset (Managed SaaS)
> **Besonderheit:** Deckungsgleich mit der eigenen Make-Architektur (Cube Core ist in [[CGM Health BI]] Ansatz A gesetzt) – diese Option ist damit zugleich der **Buy-Benchmark gegen den Eigenbau des Frontends**.

## Architektur-Mapping auf das Pflichtenheft

| Layer (Pflichtenheft) | Baustein |
| --- | --- |
| [[Voraussetzung – Semantische Schicht\|Semantische Schicht]] | Cube: Kennzahlen/Dimensionen als **Code, Git-versioniert** – die wörtlich beste Erfüllung von „versionierte, definierte Objekte über eine API" |
| Analyse-GUI | Superset/Preset: Web-Designer, 40+ Charttypen, Dashboards, Alerts & Reports |
| [[Excel-Integration]] | ⚠️ Cube: SQL-API (Postgres-Protokoll) + DAX-API (Enterprise); kein vollwertiger XMLA-Endpoint |
| [[Rollen- & Berechtigungsmodell\|RLS/Berechtigungen]] | Cube Security Context (RLS, Mandanten-Trennung) – Enforcement unterhalb aller Frontends, exakt das Pflichtenheft-Muster |

## Erfüllungsgrad (Kernkriterien)

| Kriterium | Cloud (Cube Cloud + Preset) | On-Prem (Cube Core + Superset) | Anmerkung |
| --- | --- | --- | --- |
| Vollständige On-Prem-Nutzung | – | ✅ | Beide Komponenten self-hosted **funktionsgleich** – beste On-Prem-Parität im Vergleich |
| SaaS-/Cloud-Betrieb | ✅ | – | Cube Cloud (AWS/GCP/Azure, EU-Regionen), Preset Cloud |
| Hybrid / BYOC | ✅ | ✅ | Cube Cloud BYOC (Enterprise) – einzige Option mit echtem BYOC |
| C5-Fähigkeit (Cloud) | ❌ | n/a | **Weder Cube Cloud noch Preset haben ein C5-Testat** → SaaS mit Gesundheitsdaten in DE nicht zulässig (§ 393 SGB V); nur die On-Prem-/BYOC-Route ist compliant |
| EU-/DE-Hosting | ⚠️ | ✅ | EU-Regionen verfügbar, aber ohne C5 irrelevant für Patientendaten |
| Zentrale, versionierte KPI-Definitionen | ✅ | ✅ | Data Model as Code, Git – **Best-in-Class** |
| Offene API (REST/GraphQL/SQL) | ✅ | ✅ | REST + GraphQL + SQL – deckt [[API, Semantic Layer & Schnittstellen]] wörtlich ab |
| Excel-Live via XMLA | ⚠️ | ⚠️ | DAX-API (Power BI) im Enterprise-Tier; Excel-Pivot nur über Umwege (ODBC/SQL) |
| Konsum durch Dritttools | ✅ | ✅ | Kernzweck („universal semantic layer"): Power BI, Tableau, Excel, LLMs, eigene Apps |
| RLS zentral enforced, kanalübergreifend | ✅ | ✅ | Security Context gilt für jedes andockende Frontend |
| Mandantenfähigkeit | ✅ | ✅ | Multi-Tenancy nativ in Cube; Preset Workspaces |
| Webbasierter Designer (DES-01–03) | ✅ | ✅ | Vorhanden, aber SQL-/technikaffin – Fachanwender-Hürde ⚠️ |
| Drill-down bis Fallebene (FIL-02/04) | ⚠️ | ⚠️ | Drill-by/Drill-to-Detail vorhanden, Hierarchie-Drill schwächer als Qlik/Power BI |
| Berechnete Felder Anwender (CALC-01) | ⚠️ | ⚠️ | Metriken SQL-basiert; keine fachliche Formelsyntax (CALC-07) |
| Export Excel/CSV (EXP-01) | ✅ | ✅ | |
| PDF-Abos, Berichtsmappen (EXP-08 ff.) | ⚠️ | ⚠️ | Alerts & Reports (zeitgesteuerte PDF/PNG-Mails) ✓; keine Berichtsmappen, kein Pixel-Perfect |
| Alerting/Push | ✅ | ✅ | Schwellwert-Alerts nativ (E-Mail/Slack); einfacher als Qlik Alerting |
| Embedded / White-Label | ✅ | ✅ | Embedded SDK (Preset, 500 $/Monat je 50 Viewer), Superset Embedded; Theming offen anpassbar |
| NLQ / KI (KI-01 ff.) | ⚠️ | ❌ | Preset AI Assist / Cube AI-APIs in der Cloud; on-prem Eigenintegration nötig |
| Mehrsprachigkeit (NAV-04) | ⚠️ | ⚠️ | i18n vorhanden, deutsche Übersetzung unvollständig |
| Mobile App / Responsive | ❌ | ❌ | Keine native App, responsives Verhalten begrenzt – Gap zu [[Endgeräte, Browser & Betriebsumgebung]] |

## Kosten (Listenpreise/Schätzungen, Stand Juli 2026)

> [!info] Annahmen
> Umrechnung **1 US-$ = 0,90 €** · Jahreskosten · **30 % Rabatt auf Listenpreis**.
> Cube Cloud: Premium-Tier 80 $/Developer/Monat + Verbrauch (CCU, ~0,25 $/CCU) mit **10.000 $/Jahr Mindest-Commit** – Produktionsansatz je Größe als **Schätzung**. Preset Professional: **20 $/User/Monat** (jährlich), Enterprise ab Verbundgröße individuell.

### Cloud / SaaS (jährlich)

| Kundengröße | Zusammensetzung | Liste $/Jahr | Liste €/Jahr | **nach 30 % Rabatt** |
| --- | --- | --- | --- | --- |
| Klein (2 C / 5 U) | Cube ~10.000 *(Commit)* + Preset 7 × 20 $ | 11.680 $ | 10.512 € | **≈ 7.360 €** |
| Mittel (5 C / 20 U) | Cube ~10.000 + Preset 25 × 20 $ | 16.000 $ | 14.400 € | **≈ 10.080 €** |
| Groß (10 C / 50 U) | Cube ~15.000 *(Schätzung)* + Preset 60 × 20 $ | 29.400 $ | 26.460 € | **≈ 18.520 €** |
| Verbund (25 C / 200 U) | Cube ~25.000 *(Enterprise, Schätzung)* + Preset 225 × 20 $ | 79.000 $ | 71.100 € | **≈ 49.770 €** |

> [!tip] Embedded-Variante für Verbünde
> 25 Creator-Lizenzen + 200 Viewer über Embedded-Viewer-Pakete (500 $/Monat je 50): ≈ 55.000 $/Jahr Liste → **≈ 34.650 € nach Rabatt** – relevant, wenn Konsumenten ohnehin über Portale/KIS-Embedding zugreifen ([[Architektur – Widgets, Kanäle & Integration|Headless-Ansatz]]).

### On-Prem (Cube Core + Apache Superset, self-hosted)

| Position | Kosten |
| --- | --- |
| Software-Lizenzen | **0 €** (Open Source) |
| Infrastruktur (VMs, DB, Redis) | ~5–10 T€/Jahr *(Schätzung)* |
| Betrieb/Eigenleistung | 0,25–0,5 FTE (~30–75 T€/Jahr, Marktschätzung Preset) |
| Optional: Cube-Enterprise-Support self-hosted | ~36–72 T€/Jahr *(Schätzung lt. Marktdaten Vendr: 40–80 T$)* |

Im CGM-Kontext würde der Betrieb zentral erfolgen – die 0-€-Lizenz macht diese Option zur Basis eines eigenen, margengetriebenen Preismodells statt eines Durchleitungsmodells.

## Stärken & Schwächen

> [!success] Stärken
> - **Beste Semantic-Layer-Erfüllung**: versioniert, offen, headless, RLS zentral – deckt [[Voraussetzung – Semantische Schicht]] und [[API, Semantic Layer & Schnittstellen]] nahezu wörtlich ab
> - Volle On-Prem/Cloud/BYOC-Parität – als einzige Option konform zu „On-Prem, SaaS und Cloud aus einer Produktlogik"
> - Keine Lizenzkosten on-prem → wirtschaftliches Einstiegsprofil für kleine Häuser ([[Geschäftsmodell – Plattform statt Projekt]])
> - Direkt anschlussfähig an die eigene Architektur (Cube Core bereits gesetzt)

> [!failure] Schwächen
> - **Analyse-GUI erfüllt die Anwendersicht nur teilweise**: keine Berichtsmappen, kein Pixel-Perfect, schwächeres Drill, keine Mobile App, deutsche Lokalisierung lückenhaft – genau die Lücken, die das Pflichtenheft-Frontend schließen soll
> - **Kein C5** → SaaS-Route für Patientendaten in DE gesperrt
> - Zwei Vertragspartner bzw. Community-Software – Support-/Roadmap-Risiko
> - Excel-Live (Muss) nur über Umwege

> [!warning] Premortem-Risiko
> Superset bleibt ein Werkzeug für datenaffine Nutzer; Medizincontroller ja, Pflegedirektion und Chefärzte nein. Ohne erhebliche Eigenentwicklung an der GUI scheitert die Adoption jenseits der Power-User – womit man faktisch wieder beim Eigenbau-Frontend landet. **Diese Option beweist eher die Make-These für die GUI, als sie zu widerlegen.**

## Quellen

- [Cube Pricing](https://cube.dev/pricing) (Starter 40 $/Dev, Premium 80 $/Dev + CCU; DAX-API, BYOC Enterprise)
- [Cube Cloud Pricing-Doku](https://cube.dev/docs/product/deployment/cloud/pricing)
- [Preset Pricing](https://preset.io/pricing/) (Professional 20 $/User/Monat, Embedded 500 $/Monat je 50 Viewer)
- [Marktdaten Cube-Verträge (Vendr)](https://www.vendr.com/marketplace/cube-dev)

← Zurück zur [[Anbietervergleich BI-Plattformen|Übersicht]]
