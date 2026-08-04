---
title: OPS-23 Managing Vulnerabilities, Incidents and Crashes - Measurements, Analyses and Assessments of Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-23
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-23
---

# OPS-23 · Managing Vulnerabilities, Incidents and Crashes — Measurements, Analyses and Assessments of Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-23 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### OPS-23.01B — Basic

**Kriterium (EN):**

> The cloud service provider regularly measures, analyses and assesses the procedures with which vulnerabilities and incidents are handled to verify their continued suitability, appropriateness and effectiveness.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter misst, analysiert und bewertet regelmäßig die Verfahren, mit denen Schwachstellen und Incidents behandelt werden, um deren fortdauernde Eignung, Angemessenheit und Wirksamkeit zu überprüfen.

**Zusatzinformation (DE):**

Die Bewertung von Eignung, Angemessenheit und Wirksamkeit kann auf folgenden Informationen basieren: regelmäßige Berichterstattung von KPIs (volumen-, zeit- oder qualitätsbasiert), Kunden-Kommunikation, Lessons Learned aus Post-Mortems, Trend-Analysen.

---

### OPS-23.02B — Basic

**Kriterium (EN):**

> Results are evaluated at least quarterly in a documented form by responsible individuals or groups of the cloud service provider to initiate continuous improvement actions and to verify their effectiveness.

**Deutsche Übersetzung:**

Die Ergebnisse werden **mindestens quartalsweise** in dokumentierter Form durch die verantwortlichen Personen oder Gremien des Cloud-Diensteanbieters bewertet, um kontinuierliche Verbesserungsmaßnahmen einzuleiten und deren Wirksamkeit zu verifizieren.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **KPI-Dashboard** für Vuln/Incident-Management: MTTA/MTTR, Anzahl offener Critical/High-Vulns > SLA, Wiederholungsfehler-Rate, Anzahl S1/S2-Incidents pro Monat, Success-Rate von Playbooks
- **Quartals-Review-Board** mit CISO, CTO, Head of SOC: strukturierte Auswertung, Trend-Analyse, Ableitung von Verbesserungsmaßnahmen; Dokumentation im ISMS als „Ergebnis Wirksamkeitskontrolle"
- **Continuous-Improvement-Backlog**: aus Lessons Learned und KPI-Analyse resultierende Maßnahmen als Tickets mit Owner und Deadline; Nachverfolgung im nächsten Review
- **Benchmarking**: Vergleich mit Branchen-Metriken (z. B. FIRST, SANS Reports); anonyme Teilnahme an Peer-Groups im Healthcare-Cloud-Umfeld; Referenz für Verbesserungspotenzial

## Verwandte Kriterien

- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OPS-20 Managing Incidents - Implementation]]
- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
- [[OIS-09 Continuous Improvement of the ISMS|OIS-09]] *(noch nicht angelegt)*
