---
title: OPS-18 Managing Vulnerabilities - Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-18
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-18
---

# OPS-18 · Managing Vulnerabilities — Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-18 · **Unterkriterien:** 5 (5 Basic)

## Unterkriterien

### OPS-18.01B — Basic

**Kriterium (EN):**

> Policies and procedures with technical and organisational measures are documented, communicated and provided in accordance with SP-01 to govern the timely identification and addressing of vulnerabilities in the system components used to provide the cloud service. These policies and procedures contain specifications regarding the following aspects:
>
> 1. Regular (proactive) identification of vulnerabilities through suitable measures, including vulnerability scans and penetration tests, considering typical vulnerability classes and Common Weaknesses (CWEs);
> 2. Assessing the severity of identified vulnerabilities using the Common Vulnerability Scoring System (CVSS);
> 3. Prioritising and implementing measures considering existing standards for timely remediation and/or mitigation of identified vulnerabilities based on severity according to defined time frames and with reference to commonly used scoring systems like the Exploit Prediction Scoring System (EPSS) and the Stakeholder-Specific Vulnerability Categorisation (SSVC);
> 4. Deployment of Security Patches;
> 5. Handling system components for which no measures for timely remediation or mitigation of vulnerabilities are initiated based on a risk assessment;
> 6. Interfaces to incident management in case vulnerabilites become incidents;
> 7. If AI-based tools are used for performing vulnerability scans or penetration tests, requirements for the comprehensible (traceable, transparent) documentation on the use of such tools and that these tools shall be used to support the cloud service provider's subject matter experts, not to replace them; and
> 8. Providing information on the configuration of system components and cloud services, the existing vulnerabilities, and the available patches and/or mitigation measures, using widely adopted, preferably automated, formats.

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit technischen und organisatorischen Maßnahmen sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt, um die zeitnahe Identifikation und Behandlung von Schwachstellen in den Systemkomponenten des Cloud-Dienstes zu regeln. Diese enthalten Vorgaben zu folgenden Aspekten:

1. Regelmäßige (proaktive) Identifikation von Schwachstellen durch geeignete Maßnahmen, einschließlich Vulnerability-Scans und Penetrationstests, unter Berücksichtigung typischer Schwachstellenklassen und Common Weaknesses (**CWEs**);
2. Bewertung der Schwere identifizierter Schwachstellen mittels **Common Vulnerability Scoring System (CVSS)**;
3. Priorisierung und Umsetzung von Maßnahmen unter Berücksichtigung bestehender Standards zur zeitnahen Behebung und/oder Minderung identifizierter Schwachstellen basierend auf der Schwere gemäß definierter Zeitrahmen und mit Bezug auf gängige Scoring-Systeme wie **EPSS** (Exploit Prediction Scoring System) und **SSVC** (Stakeholder-Specific Vulnerability Categorisation);
4. Einsatz von Sicherheits-Patches;
5. Umgang mit Systemkomponenten, für die basierend auf einer Risikobewertung keine Maßnahmen zur zeitnahen Behebung oder Minderung eingeleitet werden;
6. Schnittstellen zum Incident Management, falls Schwachstellen zu Vorfällen werden;
7. Falls KI-basierte Tools für Vulnerability-Scans oder Penetrationstests genutzt werden: Anforderungen an nachvollziehbare (traceable, transparent) Dokumentation des Tool-Einsatzes; diese Tools sollen die Fachexperten des Cloud-Diensteanbieters unterstützen, **nicht ersetzen**;
8. Bereitstellung von Informationen zur Konfiguration von Systemkomponenten und Cloud-Diensten, den bestehenden Schwachstellen und verfügbaren Patches und/oder Minderungsmaßnahmen in gängigen, möglichst automatisierten Formaten.

**Zusatzinformation (DE):**

Geeignete Maßnahmen zur Identifikation von Schwachstellen umfassen die Implementierung von **RFC 9116** in Verbindung mit einer **Coordinated Vulnerability Disclosure (CVD)** Policy nach etablierten Leitlinien wie **ISO/IEC TR 5895:2022** und **ISO/IEC 29147:2018** sowie Community-Standards wie Google Project Zero.

Das **CVSS** kann zur Bewertung der Schwere identifizierter Schwachstellen genutzt werden. Scores werden auf Basis einer Formel mit mehreren Metriken berechnet, die Ausnutzbarkeit und Auswirkung eines Exploits annähern. In CVSS Version 4.0 können Scores auf qualitative Bewertungen abgebildet werden:

1. **Low**: 0,1 – 3,9;
2. **Medium**: 4,0 – 6,9;
3. **High**: 7,0 – 8,9;
4. **Critical**: 9,0 – 10,0.

Gängige Formate umfassen u. a.: **SBOM** (Software Bill of Materials), **CVE** oder **EUVD** (European Vulnerability Database), **VEX** (Vulnerability Exploitability eXchange), **CSAF** (Common Security Advisory Frameworks).

**ISO/IEC 30111:2019** liefert Anforderungen und Empfehlungen zur Priorisierung und Umsetzung von Maßnahmen zur zeitnahen Behebung oder Minderung identifizierter Schwachstellen.

---

### OPS-18.02B — Basic

**Kriterium (EN):**

> The policies and procedures for the timely identification and addressing of vulnerabilities define that for vulnerabilities assessed to be 'critical', engagement has to begin in a timely manner after identification, even if this occurs outside regular working hours. They also define how such a vulnerability is engaged with.

**Deutsche Übersetzung:**

Die Richtlinien und Verfahren legen fest, dass bei als „**kritisch**" bewerteten Schwachstellen die Bearbeitung zeitnah nach Identifikation begonnen werden muss — auch außerhalb der regulären Arbeitszeiten. Sie legen zudem fest, wie mit einer solchen Schwachstelle umgegangen wird.

---

### OPS-18.03B — Basic

**Kriterium (EN):**

> The policies and procedures for the timely identification and addressing of vulnerabilities also define that for vulnerabilities assessed to be 'high', engagement has to begin within one working day after their identification. They also define how such a vulnerability is engaged with.

**Deutsche Übersetzung:**

Die Richtlinien und Verfahren legen zudem fest, dass bei als „**hoch**" bewerteten Schwachstellen die Bearbeitung innerhalb **eines Arbeitstages** nach Identifikation begonnen werden muss. Sie legen zudem fest, wie mit einer solchen Schwachstelle umgegangen wird.

---

### OPS-18.04B — Basic

**Kriterium (EN):**

> The engagement with a vulnerability according to the policies and procedures for the timely identification and addressing of vulnerabilities includes regular follow-up of the vulnerability until its remediation.

**Deutsche Übersetzung:**

Die Bearbeitung einer Schwachstelle umfasst gemäß den Richtlinien und Verfahren regelmäßiges Nachverfolgen der Schwachstelle bis zu deren Behebung.

---

### OPS-18.05B — Basic

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07), the cloud service provider can decide not to remediate or mitigate identified vulnerabilities. Such a risk assessment and the compensating or mitigating measures are reviewed regularly and in case of significant changes to the cloud service.

**Deutsche Übersetzung:**

Basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) kann der Cloud-Diensteanbieter entscheiden, identifizierte Schwachstellen nicht zu beheben oder zu mindern. Eine solche Risikobewertung sowie die kompensierenden oder mindernden Maßnahmen werden regelmäßig und bei wesentlichen Änderungen am Cloud-Dienst überprüft.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Vulnerability Management Policy** mit SLAs pro Severity: Critical (CVSS ≥ 9,0) → Reaktion 4 h, Fix 7 Tage; High (7,0-8,9) → Reaktion 1 Werktag, Fix 30 Tage; Medium → 90 Tage; Low → nach Priorisierung. Kürzere SLAs für Systeme mit Patientendaten-Zugriff
- **CVD-Prozess mit RFC 9116**: `security.txt` auf allen kunden-facing Endpoints, security@example.com für externe Meldungen, Bug-Bounty (z. B. via HackerOne, Intigriti); Coordinated Disclosure nach ISO/IEC 29147
- **AI-Tool-Governance**: KI-basierte Vulnerability-Analyzer (z. B. Snyk mit AI, GitHub Copilot Security) sind zulässig, Ergebnisse jedoch stets von Security-Analyst validiert; Prompt und Output geloggt; kein autonomes Auto-Fix in Prod
- **SBOM + CVE-Feed**: SBOMs pro Release (CycloneDX-Format), automatischer Abgleich mit NVD/EUVD/CVE-Feeds über SCA-Tools (Snyk, Dependabot, Trivy); wöchentliches Reporting; Risikoakzeptanz für nicht-behebbare Schwachstellen dokumentiert

## Verwandte Kriterien

- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[OPS-28 Managing Vulnerabilities - Patch Management Implementation]]
- [[OIS-07 Risk Management Policy]]
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
