---
title: SSO-05 Monitoring of Compliance with Requirements
project: "[[C5 Katalog 2026]]"
c5-id: SSO-05
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-05
---

# SSO-05 · Monitoring of Compliance with Requirements

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-05 · **Unterkriterien:** 10 (7 Basic · 3 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Informationen zur Überwachung von Design und Betrieb des dienstleistungsbezogenen internen Kontrollsystems umfassen typischerweise Berichte gemäß **ISAE 3402**, **IDW PS 951**, **SOC 2**, **BSI C5**, **ANSSI SecNumCloud** oder **CSA CCM**. Second-Party-Audits auf Basis solcher Frameworks können hier nützlich sein.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie über Subservice Organisations ihres Cloud-Diensteanbieters informiert bleiben (z. B. auf Basis der Informationen im C5-Testat) und auf Basis ihres Schutzbedarfs der verarbeiteten und gespeicherten Daten entscheiden.

## Unterkriterien

### SSO-05.01B — Basic

**Kriterium (EN):**

> The cloud service provider monitors compliance with information security requirements and applicable legal and regulatory requirements in accordance with policies and procedures concerning controlling and monitoring of service organisation.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter überwacht die Einhaltung von Informationssicherheits-Anforderungen sowie anwendbaren rechtlichen und regulatorischen Anforderungen gemäß den Richtlinien und Verfahren zur Kontrolle und Überwachung von Service-Organisationen.

---

### SSO-05.02B — Basic

**Kriterium (EN):**

> Monitoring includes a regular review of the following information to the extent that such information is to be provided by service organisations in accordance with the contractual agreements:
>
> 1. Reports on the quality of the service provided;
> 2. Certificates of the management systems' compliance with international standards;
> 3. Records of the service organisations on the handling of vulnerabilities, security incidents and incidents;
> 4. Independent third party reports on the design and operation of their service-related system of internal control; and
> 5. If service organisations used by the cloud service provider themselves use subcontractors, the compliance of their subcontractors with relevant contractual, legal and regulatory requirements.

**Deutsche Übersetzung:**

Die Überwachung umfasst eine regelmäßige Überprüfung folgender Informationen — soweit diese gemäß vertraglichen Vereinbarungen von Service-Organisationen bereitgestellt werden:

1. Berichte über die Qualität der erbrachten Dienstleistung;
2. Zertifikate der Konformität der Managementsysteme mit internationalen Standards;
3. Aufzeichnungen der Service-Organisationen zum Umgang mit Schwachstellen, Sicherheitsvorfällen und Vorfällen;
4. Berichte unabhängiger Dritter über Design und Betrieb ihres dienstleistungsbezogenen internen Kontrollsystems;
5. Falls Service-Organisationen ihrerseits Subunternehmer nutzen, deren Compliance mit relevanten vertraglichen, rechtlichen und regulatorischen Anforderungen.

---

### SSO-05.03B — Basic

**Kriterium (EN):**

> The frequency of the monitoring corresponds to the classification of the service organisation based on the risk assessment conducted by the cloud service provider (cf. SSO-02).

**Deutsche Übersetzung:**

Die Häufigkeit der Überwachung entspricht der Klassifizierung der Service-Organisation basierend auf der Risikobewertung (vgl. [[SSO-02 Risk Assessment of Service Organisations|SSO-02]]).

---

### SSO-05.04B — Basic

**Kriterium (EN):**

> If a service organisation is considered to be a subservice organisation, the cloud service provider assesses this relationship and carries out appropriate procedures to ensure that the applicable C5 criteria are met. Appropriate procedures provide reasonable assurance:
>
> 1. That the subservice organisation has designed and operated relevant controls; and
> 2. That the subservice organisation's controls correspond to the expected complementary subservice organisation controls (CSOCs) assumed in the design of the cloud service providers controls.

**Deutsche Übersetzung:**

Wenn eine Service-Organisation als **Subservice Organisation** betrachtet wird, bewertet der Cloud-Diensteanbieter diese Beziehung und führt angemessene Verfahren durch, um sicherzustellen, dass die anwendbaren C5-Kriterien erfüllt werden. Angemessene Verfahren geben angemessene Sicherheit:

1. Dass die Subservice Organisation relevante Kontrollen entworfen und betrieben hat;
2. Dass die Kontrollen der Subservice Organisation den erwarteten **CSOCs** entsprechen, die im Design der Kontrollen des Cloud-Diensteanbieters angenommen werden.

---

### SSO-05.05B — Basic

**Kriterium (EN):**

> Identified deviations are subjected to analysis, evaluation and treatment in accordance with the risk assessment of service organisations (cf. SSO-02).

**Deutsche Übersetzung:**

Identifizierte Abweichungen werden gemäß der Risikobewertung von Service-Organisationen analysiert, bewertet und behandelt.

---

### SSO-05.06B — Basic

**Kriterium (EN):**

> If a service organisation contributing to the provision of the cloud service undergoes a change that has a significant adverse effect on the cloud service provider's level of security, the cloud service provider communicates this to all of its cloud service customers without undue delay.

**Deutsche Übersetzung:**

Wenn eine zur Erbringung des Cloud-Dienstes beitragende Service-Organisation eine Änderung durchläuft, die eine signifikante nachteilige Auswirkung auf das Sicherheitsniveau des Cloud-Diensteanbieters hat, kommuniziert der Cloud-Diensteanbieter dies **unverzüglich** an alle seine Cloud-Dienstkunden.

---

### SSO-05.07B — Basic

**Kriterium (EN):**

> The cloud service provider establishes and documents a procedure to regularly review non-disclosure or confidentiality requirements for all service organisations involved in providing the cloud service. This procedure is implemented in practice, and the review is conducted at least once per year.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter etabliert und dokumentiert ein Verfahren zur regelmäßigen Überprüfung von Non-Disclosure- oder Vertraulichkeitsanforderungen für alle Service-Organisationen, die an der Erbringung des Cloud-Dienstes beteiligt sind. Dieses Verfahren wird in der Praxis umgesetzt, der Review erfolgt **mindestens einmal jährlich**.

---

### SSO-05.01AC — Additional (Complementing)

**Kriterium (EN):**

> The procedures for monitoring compliance with the requirements are supplemented by automatic procedures relating to the following aspects:
>
> 1. Configuration of system components;
> 2. Performance and availability of system components;
> 3. Response time to incidents and security incidents; and
> 4. Recovery time (time until completion of error handling).

**Deutsche Übersetzung:**

Die Verfahren zur Überwachung der Anforderungs-Compliance werden durch **automatische Verfahren** ergänzt, die folgende Aspekte betreffen:

1. Konfiguration von Systemkomponenten;
2. Performance und Verfügbarkeit von Systemkomponenten;
3. Reaktionszeit auf Vorfälle und Sicherheitsvorfälle;
4. Wiederherstellungszeit (Zeit bis Abschluss der Fehlerbehandlung).

---

### SSO-05.02AC — Additional (Complementing)

**Kriterium (EN):**

> Identified violations and discrepancies are automatically reported to the responsible personnel or system components of the cloud service provider for prompt assessment and action.

**Deutsche Übersetzung:**

Identifizierte Verstöße und Abweichungen werden automatisch dem verantwortlichen Personal oder Systemkomponenten des Cloud-Diensteanbieters für zeitnahe Bewertung und Maßnahmen gemeldet.

---

### SSO-05.03AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider defines and implements a process for conducting periodic security assessments for all service organisations. The nature and scope of these security assessments correspond to the risk associated with each service organisation. These risk-based security assessments ensure that service organisations meet the required security standards and that any potential risks are identified and mitigated appropriately.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert und implementiert einen Prozess zur Durchführung **periodischer Security Assessments** für alle Service-Organisationen. Art und Umfang dieser Security Assessments entsprechen dem mit jeder Service-Organisation verbundenen Risiko. Diese risikobasierten Security Assessments stellen sicher, dass Service-Organisationen die erforderlichen Sicherheitsstandards erfüllen und potenzielle Risiken angemessen identifiziert und gemindert werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Vendor-Monitoring-Kadenz** je Klasse: Kritisch → quartalsweise Business Review + jährliches Testat, Regulär → halbjährlich, Standard → jährlich; automatisierte Erinnerung im GRC-Tool; Findings-Backlog nach jedem Review
- **Automatisiertes Vendor-Health-Monitoring** (Complementing): SLA-Erfüllung via API/Statuspage-Scraping (AWS Health Dashboard, Azure Status), automatische Tickets bei SLA-Verletzung; CloudTrail/Activity-Logs für Vendor-Config-Änderungen
- **Communications bei signifikanten Änderungen**: dedizierter Kunden-Kanal (Trust-Center, E-Mail an Sicherheits-Verantwortliche) bei Änderungen wie: neuer Sub-Vendor mit Patientendaten-Zugriff, größere Sicherheitsvorfälle, Regierungswechsel im Data-Location-Country
- **Sub-Auftragsverarbeiter-Kette**: Nachverfolgung der 2. und 3. Ebene (unser Vendor nutzt Sub-Vendor X, der wiederum Sub-Vendor Y nutzt); vollständige Kette im Kunden-Trust-Center dokumentiert; wichtig für DSGVO-Compliance und C5-Testat

## Verwandte Kriterien

- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
- [[SSO-02 Risk Assessment of Service Organisations]]
- [[SSO-04 Directory of Service Organisations]]
- [[SSO-06 Contract Termination Strategy for Service Organisations]]
- [[SSO-07 Ensuring Transparency within Service Organisations]]
- [[HR-02 Non-Disclosure Agreements]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
