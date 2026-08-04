---
title: SIM-06 Evaluation and Learning Process
project: "[[C5 Katalog 2026]]"
c5-id: SIM-06
c5-area: SIM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sim
aliases:
  - SIM-06
---

# SIM-06 · Evaluation and Learning Process

> [!info] Kontext
> **Bereich:** Security Incident Management (SIM) · **Kriterium-ID:** SIM-06 · **Unterkriterien:** 4 (4 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie die vom Cloud-Diensteanbieter berichteten Findings und Maßnahmen zu vorherigen Sicherheitsvorfällen in ihr ISMS aufnehmen. Die Cloud-Dienstkunden bewerten, ob und welche unterstützenden Maßnahmen sie auf ihrer Seite ergreifen.

## Unterkriterien

### SIM-06.01B — Basic

**Kriterium (EN):**

> Mechanisms are in place to measure and monitor the type and scope of security incidents and to report them to supporting bodies.

**Deutsche Übersetzung:**

Es sind Mechanismen implementiert, um Art und Umfang von Sicherheitsvorfällen zu messen und zu überwachen sowie an unterstützende Stellen zu berichten.

**Zusatzinformation (DE):**

Unterstützende Stellen können externe Dienstleister oder Behörden wie das **BSI** sein.

---

### SIM-06.02B — Basic

**Kriterium (EN):**

> The cloud service provider defines, implements and maintains a knowledge repository containing:
>
> - Security incidents;
> - Measures taken for the solution of these security incidents; and
> - Information about the assets affected by these security incidents.
>
> This information is used to supplement the classification catalogue of incidents (cf. SIM-03).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert, implementiert und pflegt ein **Knowledge Repository** mit:

- Sicherheitsvorfällen;
- Zur Lösung dieser Sicherheitsvorfälle ergriffenen Maßnahmen;
- Informationen über die von diesen Sicherheitsvorfällen betroffenen Assets.

Diese Informationen werden zur Ergänzung des Klassifizierungskatalogs von Vorfällen genutzt (vgl. [[SIM-03 Processing of Security Incidents|SIM-03]]).

---

### SIM-06.03B — Basic

**Kriterium (EN):**

> The information obtained from the security incident monitoring and the intelligence gathered in the knowledge repository is used to identify recurring security events or security incidents, or potential significant security incidents, to determine the need for advanced safeguards, and for implementing them.

**Deutsche Übersetzung:**

Die aus dem Security-Incident-Monitoring gewonnenen Informationen und die im Knowledge Repository gesammelten Intelligence-Daten werden genutzt, um wiederkehrende Sicherheits-Events oder Sicherheitsvorfälle oder potenzielle signifikante Sicherheitsvorfälle zu identifizieren, den Bedarf für erweiterte Schutzmaßnahmen zu bestimmen und diese zu implementieren.

---

### SIM-06.04B — Basic

**Kriterium (EN):**

> The evaluation and learning process includes the results of root-cause analyses conducted in accordance with SIM-03.

**Deutsche Übersetzung:**

Der Evaluations- und Lernprozess umfasst die Ergebnisse der gemäß SIM-03 durchgeführten Ursachenanalysen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Incident-KPI-Dashboard**: monatliche Metriken (MTTD, MTTR, Vorfälle pro Kategorie, wiederkehrende Muster); dazu Vergleich mit Branchen-Benchmarks (z. B. Verizon DBIR); Report an CISO + Vorstand quartalsweise
- **BSI-Meldungen**: KRITIS-relevante Vorfälle nach § 8b BSIG meldepflichtig (falls Anbieter als KRITIS-Betreiber gilt oder Kunde KRITIS ist); zusätzlich CISPE-Meldungen, NIS2-Meldungen (72h); dokumentierte Meldeschwellen und Verantwortliche
- **Knowledge Base**: strukturierte Fallsammlung in interner Wiki/Repository (Confluence, Notion) mit Filter nach IoCs, MITRE-Techniques, Assets; nach Vorfall automatische Erstellung einer Vorlage; regelmäßige Recherche durch SOC (Threat Hunting)
- **Post-Incident-Learnings-Workshop**: nach kritischen Vorfällen (P1/P2) formaler Lessons-Learned-Workshop mit CSIRT + Betroffenen + Führung; Findings → Backlog (Detection-Verbesserungen, Prozess-Anpassungen, Trainings-Bedarf); Fortschritt monatlich verfolgt

## Verwandte Kriterien

- [[SIM-01 Policy for Security Incident Management]]
- [[SIM-02 Security Incident Response Plans]]
- [[SIM-03 Processing of Security Incidents]]
- [[SIM-04 Documentation and Reporting of Security Incidents]]
- [[SIM-05 Duty of the Personnel to Report Security Incidents to a Central Body]]
- [[OPS-14 Managing Vulnerabilities, Incidents and Crashes - Detection and Recording]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OIS-05 Contact with Relevant Authorities and Interest Groups]]
- [[OIS-06 Information Security in Project Management]]
