---
title: SIM-01 Policy for Security Incident Management
project: "[[C5 Katalog 2026]]"
c5-id: SIM-01
c5-area: SIM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sim
aliases:
  - SIM-01
---

# SIM-01 · Policy for Security Incident Management

> [!info] Kontext
> **Bereich:** Security Incident Management (SIM) · **Kriterium-ID:** SIM-01 · **Unterkriterien:** 4 (4 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie Benachrichtigungen des Cloud-Diensteanbieters über sie betreffende Sicherheitsvorfälle erhalten und diese zeitnah an die für die Bearbeitung zuständigen Abteilungen weitergeleitet werden, damit eine angemessene Reaktion erfolgen kann.

## Unterkriterien

### SIM-01.01B — Basic

**Kriterium (EN):**

> Policies, procedures and technical safeguards are documented, communicated and provided in accordance with SP-01 to ensure a fast, effective and proper response to all known security incidents.
>
> The cloud service provider defines guidelines for the classification, prioritisation, escalation and root cause analysis of security incidents and creates interfaces to the incident management and business continuity management.

**Deutsche Übersetzung:**

Richtlinien, Verfahren und technische Schutzmaßnahmen sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt, um eine schnelle, effektive und ordnungsgemäße Reaktion auf alle bekannten Sicherheitsvorfälle sicherzustellen.

Der Cloud-Diensteanbieter definiert Leitlinien für Klassifizierung, Priorisierung, Eskalation und Ursachenanalyse von Sicherheitsvorfällen und schafft Schnittstellen zum **Incident Management** und **Business Continuity Management**.

---

### SIM-01.02B — Basic

**Kriterium (EN):**

> The cloud service provider has set up a 'Computer Security Incident Response Team' (CSIRT), which contributes to the coordinated resolution of occurring security incidents.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat ein **Computer Security Incident Response Team (CSIRT)** eingerichtet, das zur koordinierten Auflösung auftretender Sicherheitsvorfälle beiträgt.

---

### SIM-01.03B — Basic

**Kriterium (EN):**

> Communication channels with the cloud service customers are identified and defined and customers affected by security incidents are informed in a timely and appropriate manner.

**Deutsche Übersetzung:**

Kommunikationskanäle mit den Cloud-Dienstkunden sind identifiziert und definiert, und von Sicherheitsvorfällen betroffene Kunden werden zeitnah und angemessen informiert.

---

### SIM-01.04B — Basic

**Kriterium (EN):**

> There are procedures as to how the data of a suspicious system can be collected in a conclusive manner in the event of a security incident.

**Deutsche Übersetzung:**

Es gibt Verfahren, wie die Daten eines verdächtigen Systems bei einem Sicherheitsvorfall schlüssig gesammelt werden können.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **CSIRT-Struktur**: dediziertes Kernteam (CSIRT-Lead + Analysts + Forensiker + Kommunikations-Verantwortliche) + erweitertes Team (Legal, DPO, Business, PR); On-Call-Rotation 24/7; klare RACI-Matrix für Rollen im Vorfall
- **Klassifikations-Schema** (P1-P4): P1 = Bestätigter Datenabfluss von Patientendaten (Meldepflicht DSGVO 72h), P2 = Verdacht auf Datenabfluss, P3 = Service-Beeinträchtigung ohne Datenrisiko, P4 = Investigationswürdige Ereignisse
- **Customer-Communication-Playbook**: für jede Vorfall-Klasse dokumentierte Kommunikations-Template (E-Mail, Portal-Notification, Voice-Call bei kritischen Kunden); Time-to-first-notification als SLA (max 24h nach Bestätigung P1/P2)
- **Forensik-Bereitschaft**: Prozeduren für konsistente Evidenz-Sammlung (Memory-Dumps, Disk-Snapshots, Netzwerk-PCAPs); ausgebildete Forensiker; forensische Software vorbereitet (Volatility, SIFT, Autopsy); Chain-of-Custody-Dokumentation

## Verwandte Kriterien

- [[SIM-02 Security Incident Response Plans]]
- [[SIM-03 Processing of Security Incidents]]
- [[SIM-04 Documentation and Reporting of Security Incidents]]
- [[SIM-05 Duty of the Personnel to Report Security Incidents to a Central Body]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OPS-20 Managing Incidents - Communication and Involvement of Cloud Service Customers]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
