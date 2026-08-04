---
title: COM-03 Internal Audits of the Information Security Management System
project: "[[C5 Katalog 2026]]"
c5-id: COM-03
c5-area: COM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/com
aliases:
  - COM-03
---

# COM-03 · Internal Audits of the Information Security Management System

> [!info] Kontext
> **Bereich:** Compliance (COM) · **Kriterium-ID:** COM-03 · **Unterkriterien:** 6 (3 Basic · 3 Complementing)

## Unterkriterien

### COM-03.01B — Basic

**Kriterium (EN):**

> Subject matter experts check the compliance of the information security management system at regular intervals, at least annually, with the relevant and applicable legal, regulatory, self-imposed or contractual requirements (cf. COM-01) through internal audits. This includes checks regarding:
>
> 1. Compliance with the policies and procedures (cf. SP-01) within their scope of responsibility (cf. OIS-01); and
> 2. Effectiveness of organisational and operational measures to manage the risks posed to the security of network and information systems (cf. OIS-07).

**Deutsche Übersetzung:**

Fachexperten prüfen die Konformität des Informationssicherheits-Managementsystems in regelmäßigen Abständen — **mindestens jährlich** — mit den relevanten und anwendbaren rechtlichen, regulatorischen, selbst-auferlegten oder vertraglichen Anforderungen (vgl. [[COM-01 Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements|COM-01]]) durch **interne Audits**. Dies umfasst Prüfungen bezüglich:

1. Konformität mit den Richtlinien und Verfahren (vgl. SP-01) im jeweiligen Verantwortungsbereich (vgl. [[OIS-01 Information Security Management System (ISMS)|OIS-01]]);
2. Wirksamkeit organisatorischer und operativer Maßnahmen zum Management der Risiken für die Sicherheit von Netzwerk- und Informationssystemen (vgl. [[OIS-07 Risk Management Policy|OIS-07]]).

**Zusatzinformation (DE):**

Fachexperten arbeiten z. B. in der internen Revisionsabteilung des Cloud-Diensteanbieters oder als beauftragte externe Experten (z. B. Wirtschaftsprüfungsgesellschaften) und können relevante Zertifizierungen wie **„Certified Internal Auditor (CIA)"** halten. Bezüglich ISMS-Konformität vgl. Abschnitt 9.2 der ISO/IEC 27001.

---

### COM-03.02B — Basic

**Kriterium (EN):**

> Subject matter experts conducting internal audits are not in the line of authority of the personnel of the area under review. If the size of the cloud service provider does not allow such separation of line of authority, alternative measures to guarantee the impartiality of compliance checks are put in place.

**Deutsche Übersetzung:**

Fachexperten, die interne Audits durchführen, sind nicht in der Weisungslinie des Personals des zu prüfenden Bereichs. Falls die Größe des Cloud-Diensteanbieters eine solche Trennung der Weisungslinie nicht zulässt, werden alternative Maßnahmen zur Gewährleistung der **Unparteilichkeit** der Konformitätsprüfungen implementiert.

---

### COM-03.03B — Basic

**Kriterium (EN):**

> Identified vulnerabilities and deviations as well as non-conformities from the applicable legal, regulatory, self-imposed and contractual requirements relevant to the information security of the cloud service, are subjected to a risk assessment in accordance with the risk management procedure (cf. OIS-07). Follow-up measures are defined and tracked (cf. OPS-18).

**Deutsche Übersetzung:**

Identifizierte Schwachstellen und Abweichungen sowie Non-Conformities von den anwendbaren rechtlichen, regulatorischen, selbst-auferlegten und vertraglichen Anforderungen unterliegen einer Risikobewertung gemäß dem Risikomanagement-Verfahren. Follow-up-Maßnahmen werden definiert und verfolgt (vgl. [[OPS-18 Managing Vulnerabilities - Policies and Procedures|OPS-18]]).

---

### COM-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07) and technical feasibility, the cloud service provider decides to which extent internal audits are supplemented by procedures to automatically monitor applicable requirements of policies and procedures with regard to the following aspects:
>
> 1. Configuration of system components to provide the cloud service within the cloud service provider's area of responsibility;
> 2. Performance and availability of these system components;
> 3. Response time to incidents and security incidents; and
> 4. Recovery time (time to completion of error handling).

**Deutsche Übersetzung:**

Basierend auf einer Risikobewertung und technischer Machbarkeit entscheidet der Cloud-Diensteanbieter, in welchem Umfang interne Audits durch Verfahren zur **automatischen Überwachung** der anwendbaren Anforderungen von Richtlinien und Verfahren ergänzt werden — bezüglich:

1. Konfiguration von Systemkomponenten zur Erbringung des Cloud-Dienstes im Verantwortungsbereich des Cloud-Diensteanbieters;
2. Performance und Verfügbarkeit dieser Systemkomponenten;
3. Reaktionszeit auf Vorfälle und Sicherheitsvorfälle;
4. Wiederherstellungszeit.

---

### COM-03.02AC — Additional (Complementing)

**Kriterium (EN):**

> Identified vulnerabilities and deviations are automatically reported to the appropriate cloud service provider's subject matter experts for immediate assessment and action.

**Deutsche Übersetzung:**

Identifizierte Schwachstellen und Abweichungen werden automatisch an die zuständigen Fachexperten des Cloud-Diensteanbieters für sofortige Bewertung und Maßnahmen gemeldet.

---

### COM-03.03AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider provides interfaces to cloud service customers so that they can check compliance with selected contractual agreements in real time.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt Schnittstellen für Cloud-Dienstkunden bereit, damit diese die Einhaltung ausgewählter vertraglicher Vereinbarungen in **Echtzeit** überprüfen können.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Interne Revision** unabhängig vom operativen Bereich: Reporting-Line direkt an CEO oder Vorstand (nicht CISO); dedizierte, CIA-zertifizierte Auditoren; jährliches Audit-Plan mit Rotation der geprüften Bereiche; Zusammenarbeit mit externen Auditoren (z. B. für C5-Testat)
- **Continuous-Compliance-Monitoring** (Complementing): AWS Config Rules, Azure Policy, GCP Security Command Center für automatisches Config-Drift-Monitoring; SIEM-Rules für Access-Anomalien; Compliance-Scoring in Dashboard sichtbar; Deviations lösen automatische Tickets aus
- **Findings-Tracking**: alle Audit-Findings in GRC-Tool mit CVSS-basierter Priorisierung, Owner, Zieltermin, kompensierenden Maßnahmen; jährlicher Root-Cause-Analyse für wiederkehrende Findings; Reporting an CISO monatlich
- **Real-Time-Compliance-API für Kunden** (Complementing): Kunden-Portal zeigt aktuellen Status von SLA-Erfüllung, aktive Sicherheitsvorfälle mit Impact, aktuelle Certificates-Downloads; Machine-readable API für automatisierte Compliance-Checks in Kunden-GRC-Systemen

## Verwandte Kriterien

- [[COM-01 Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements]]
- [[COM-02 Policy for Planning and Conducting Audits]]
- [[COM-04 Information on Information Security Performance and Management Assessment of the ISMS]]
- [[OIS-01 Information Security Management System (ISMS)]]
- [[OIS-07 Risk Management Policy]]
- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
