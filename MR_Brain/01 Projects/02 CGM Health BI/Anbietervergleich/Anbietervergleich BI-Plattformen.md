---
title: Anbietervergleich BI-Plattformen
project: "[[CGM Health BI]]"
bereich: anbietervergleich
status: entwurf
version: "0.1"
date: 2026-07-30
tags:
  - anbietervergleich
  - moc
  - make-or-buy
aliases:
  - BI-Anbietervergleich
cssclasses:
  - moc
---

# Anbietervergleich BI-Plattformen

> [!abstract] Zweck
> Vergleich dreier Buy-Optionen gegen die Muss-Anforderungen des [[Pflichtenheft CGM Health BI|Pflichtenhefts]]: **Cloudfähigkeit + vollständige On-Prem-Nutzung**, **Semantic Layer** ([[Voraussetzung – Semantische Schicht]]) und **Analyse-GUI** (Bereich 06). Input für die Make-or-Buy-Analyse (Teamentscheidung September, vgl. [[CGM Health BI – Projektsteuerung]]).

> [!info] Kalkulationsannahmen (gelten für alle Optionen)
> Listenpreise Stand **Juli 2026** · Umrechnung **1 US-$ = 0,90 €** · Jahreskosten · **30 % Rabatt auf Listenpreis** · Controller = Ersteller-Lizenz, User = Konsumenten-Lizenz · Schätzungen sind als *(Schätzung)* markiert. Implementierung, Training und Betrieb sind **nicht** enthalten.

---

## Die drei Optionen

1. [[Option A – Microsoft Power BI & Fabric]] – Komplettplattform; stärkster Excel-/XMLA-Pfad, günstigster Cloud-Einstieg, aber On-Prem nur als Feature-Torso (Report Server)
2. [[Option B – Qlik Cloud & Client-Managed]] – Komplettplattform; beste GUI- und On-Prem-Parität **plus C5-Testat**, aber geschlossene Engine ohne offenen Semantic Layer
3. [[Option C – Cube + Apache Superset (Preset)]] – Kombination; beste Semantic-Layer-Erfüllung und 0-€-On-Prem-Lizenz, aber GUI-Lücken bei Fachanwendern und kein C5 für die SaaS-Route

**Geprüft, nicht gewählt:** Strategy One (MicroStrategy) und Pyramid Analytics (starke On-Prem-Parität, aber intransparente Preise und kleiner DACH-Healthcare-Footprint); Tableau (schwacher Semantic Layer); Looker, ThoughtSpot, Sigma, SAP Analytics Cloud (keine vollständige On-Prem-Fähigkeit).

---

## Erfüllungsmatrix (Muss-Kriterien verdichtet)

> [!info] Legende
> ✅ erfüllt · ⚠️ teilweise · ❌ nicht erfüllt · Bewertung jeweils „bestes verfügbares Deployment"

| Kriterium (Pflichtenheft) | A · Microsoft | B · Qlik | C · Cube+Superset |
| --- | --- | --- | --- |
| **Vollständig on-prem nutzbar** | ⚠️ Report Server stark reduziert | ✅ Client-Managed vollwertig (KI cloud-only) | ✅ funktionsgleich self-hosted |
| **Cloud-/SaaS-fähig** | ✅ | ✅ | ✅ |
| **C5 für Cloud-Betrieb** ([[Datenschutz & Rechtliche Vorgaben]]) | ✅ | ✅ **Testat 2026** | ❌ nur On-Prem-Route compliant |
| EU-/DE-Hosting | ✅ | ✅ | ⚠️ (self-hosted ✅) |
| **Semantic Layer: versionierte KPI-Objekte via API** | ✅ | ⚠️ app-gebunden | ✅ **Best-in-Class (Code + Git)** |
| **Excel-Live (XMLA)** ([[Excel-Integration]]) | ✅ **Referenz** | ❌ | ⚠️ DAX-/SQL-API |
| Konsum durch Dritttools („Shared Semantic Infrastructure") | ⚠️ | ❌ | ✅ |
| **RLS zentral enforced, kanalübergreifend** | ✅ | ✅ (nur Qlik-Kanäle) | ✅ |
| Mandantenfähigkeit | ⚠️ | ⚠️ | ✅ |
| **Webbasierter Designer (DES-01–03)** | ✅ (Modellierung: Desktop) | ✅ | ✅ (technikaffin) |
| Drill-down bis Fallebene (FIL-02/04) | ✅ | ✅ | ⚠️ |
| Berechnete Felder für Anwender (CALC-01) | ⚠️ DAX | ✅ | ⚠️ SQL |
| Export Excel/CSV (EXP-01) | ✅ | ✅ | ✅ |
| PDF-Abos & Berichtsmappen | ✅/⚠️ | ✅ | ⚠️ |
| Alerting/Push ([[Leitprinzipien]]) | ⚠️ | ✅ | ✅ (einfach) |
| Embedded / White-Label | ⚠️ | ✅ | ✅ |
| NLQ / KI (KI-01 ff.) | ⚠️ ab F64 | ✅ (cloud-only) | ⚠️ |
| Mehrsprachigkeit (NAV-04) | ✅ | ✅ | ⚠️ |
| Mobile App ([[Endgeräte, Browser & Betriebsumgebung]]) | ✅ | ✅ | ❌ |

> [!important] Kernbefund
> **Keine der drei Optionen erfüllt beide Muss-Layer vollständig.** Microsoft scheitert an „vollständig on-prem", Qlik am offenen Semantic Layer (XMLA/Dritttool-Konsum), Cube+Superset an der fachanwendertauglichen Analyse-GUI und am C5 für SaaS. Die Kombination aus offenem Semantic Layer **und** krankenhaustauglicher GUI **und** On-Prem/Cloud-Parität existiert am Markt nicht als Kaufprodukt – das ist exakt die Lücke, die [[CGM Health BI]] besetzen will, und stützt die Make-Richtung (Cube Core + eigenes Angular-Frontend).

---

## Kostenübersicht – Cloud/SaaS (€ p. a. nach 30 % Rabatt)

| Kundengröße | A · Microsoft | B · Qlik | C · Cube+Preset |
| --- | --- | --- | --- |
| Klein (2 C / 5 U) | **≈ 1.270 €** | ≈ 6.800 € *(Starter, ab)* | ≈ 7.360 € *(Schätzung)* |
| Mittel (5 C / 20 U) | **≈ 4.540 €** | ≈ 20.410 € *(Standard, ab)* | ≈ 10.080 € |
| Groß (10 C / 50 U) | **≈ 10.890 €** | ≈ 28.730 € *(Schätzung)* | ≈ 18.520 € |
| Verbund (25 C / 200 U) | **≈ 40.470 €** *(F64 + Pro)* | ≈ 41.580 € *(Premium, ab)* | ≈ 49.770 € *(Embedded-Variante: ≈ 34.650 €)* |

Effektiv pro User/Monat konvergieren die Optionen im Verbund auf **15–18 €**; im kleinen Haus liegt Microsoft (≈ 15 €) um Faktor 5–6 unter Qlik/Cube+Preset (≈ 80–88 €), da deren Sockel-/Kapazitätsmodelle kleine Nutzerzahlen nicht abbilden.

## Kostenübersicht – On-Prem (€ p. a. nach 30 % Rabatt)

| Kundengröße | A · Microsoft (PBIRS) | B · Qlik Client-Managed *(Schätzung)* | C · Cube Core + Superset |
| --- | --- | --- | --- |
| Klein (2 C / 5 U) | ≈ 38.110 € einmalig + ≈ 9.740 €/Jahr | **≈ 2.570 €** | **0 € Lizenz** (+ Betrieb) |
| Mittel (5 C / 20 U) | ≈ 38.110 € einmalig + ≈ 10.060 €/Jahr | ≈ 8.690 € | 0 € Lizenz (+ Betrieb) |
| Groß (10 C / 50 U) | ≈ 38.110 € einmalig + ≈ 10.590 €/Jahr | ≈ 20.410 € | 0 € Lizenz (+ Betrieb) |
| Verbund (25 C / 200 U) | ≈ 38.110 € einmalig + ≈ 12.180 €/Jahr | ≈ 73.710 € | 0 € Lizenz (+ Betrieb) |

Microsoft on-prem = SQL Server EE (8 Cores) einmalig + Software Assurance + Pro je Controller; funktional aber stark reduziert. Cube+Superset on-prem: Betriebs-/Supportkosten (Infra ~5–10 T€, optional Cube-Support ~36–72 T€/Jahr, 0,25–0,5 FTE) sind der eigentliche Kostenblock.

---

## Einordnung & Empfehlung

> [!tip] Lesart für die Make-or-Buy-Entscheidung
> - **Wenn „Buy komplett"**: Qlik ist der einzige Kandidat, der GUI-Anspruch, On-Prem-Parität und C5 gleichzeitig liefert – um den Preis, die Plattform-Strategie „offene semantische Infrastruktur" ([[Vision & Produktkategorie]]) aufzugeben.
> - **Wenn „Buy Semantic Layer, Make GUI"**: Cube bestätigt die getroffene Architekturentscheidung (Ansatz A); Superset/Preset taugt als Übergangs- oder Power-User-Frontend, nicht als Endprodukt für alle Rollen.
> - **Microsoft** bleibt als **Konsum-Kanal** relevant (Power BI dockt via XMLA/DAX an die eigene Semantik an – „wir sind die Infrastruktur, auf der Power BI läuft"), nicht als Plattformbasis: die On-Prem-Lücke ist für den deutschen Krankenhausmarkt disqualifizierend.
> - Preislich setzt Microsoft den Cloud-Anker (≈ 15 €/User/Monat effektiv); ein CGM-Health-BI-Preismodell muss seinen Mehrwert (Fachmodell, C5, On-Prem, Push) gegen diesen Anker argumentieren.

> [!todo] Offene Punkte
> - Qlik-Client-Managed- und Cube-Enterprise-Preise per Anbieteranfrage validieren (aktuell Schätzungen)
> - C5-Abdeckung von Microsoft Fabric (nicht nur Power BI/M365) im Detail prüfen
> - Kapazitätsbedarf Qlik (GB „Data for Analysis") gegen reale Referenzdaten aus dem geplanten PoC schätzen
> - Bei ernsthafter Buy-Prüfung: Strategy One & Pyramid Analytics als RFI-Kandidaten nachziehen

## Detailnotizen

- [[Option A – Microsoft Power BI & Fabric]]
- [[Option B – Qlik Cloud & Client-Managed]]
- [[Option C – Cube + Apache Superset (Preset)]]

## Änderungshistorie

| Version | Datum | Änderung |
| --- | --- | --- |
| 0.1 | 2026-07-30 | Erstfassung: 3 Optionen, Erfüllungsmatrix, Kostenmodelle (4 Kundengrößen, 30 % Rabatt) |
