---
title: OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests
project: "[[C5 Katalog 2026]]"
c5-id: OPS-22
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-22
---

# OPS-22 · Managing Vulnerabilities, Incidents and Crashes — Penetration Tests

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-22 · **Unterkriterien:** 16 (8 Basic · 3 Sharpening · 5 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Siehe Abschnitt 1.2 des Katalogs für die Definitionen von „Penetration Test" und „Significant Change". Im Gegensatz zu Vulnerability-Scans (die Code analysieren) zielen Penetration Tests im Sinne dieses Kriteriums primär darauf ab, das Live-System zu testen, um reale Schwachstellen oder Schwachpunkte zu entdecken, die sich nur bei Ausführung zeigen.

## Unterkriterien

### OPS-22.01B — Basic

**Kriterium (EN):**

> The cloud service provider performs penetration tests by qualified internal personnel or external penetration testers at least once a year and in case of significant changes to the cloud service in accordance with the policies for managing vulnerabilities (cf. OPS-18).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter führt mindestens einmal jährlich sowie bei wesentlichen Änderungen am Cloud-Dienst Penetration Tests durch qualifiziertes internes Personal oder externe Penetration Tester gemäß den Richtlinien für das Vulnerability Management (vgl. [[OPS-18 Managing Vulnerabilities - Policies and Procedures|OPS-18]]) durch.

---

### OPS-22.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider performs penetration tests at least every six months and in case of significant changes to the cloud service by independent external penetration testers in accordance with the policies for managing vulnerabilities (cf. OPS-18). The external penetration testers are engaged only if the personnel supposed to perform the test verifiably meets the cloud service provider's qualification and competence requirements. Internal personnel for penetration tests may support the external personnel.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter führt **mindestens alle sechs Monate** sowie bei wesentlichen Änderungen am Cloud-Dienst Penetration Tests durch **unabhängige externe** Penetration Tester gemäß den Richtlinien für das Vulnerability Management (vgl. OPS-18) durch. Die externen Tester werden nur beauftragt, wenn das für den Test vorgesehene Personal die Qualifikations- und Kompetenzanforderungen des Cloud-Diensteanbieters nachweislich erfüllt. Internes Personal darf die externen Tester unterstützen.

---

### OPS-22.02B — Basic

**Kriterium (EN):**

> Penetration tests are carried out in accordance with a documented framework for penetration tests that outlines the number and types of penetration tests to be performed and the requirements for the qualification and competence of the personnel to perform such tests. The number and types of penetration tests to be performed are determined based on a risk assessment (cf. OIS-07).

**Deutsche Übersetzung:**

Penetration Tests werden gemäß einem dokumentierten Framework durchgeführt, das Anzahl und Arten der durchzuführenden Tests sowie die Anforderungen an Qualifikation und Kompetenz des durchführenden Personals beschreibt. Anzahl und Arten werden auf Basis einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) festgelegt.

---

### OPS-22.02AS — Additional (Sharpening)

**Kriterium (EN):**

> Pre-launch and post-launch penetration tests are performed in accordance with a documented framework for penetration tests that outlines the number and types of penetration tests to be performed and the requirements for the qualification and competence of the personnel to perform such tests. The number and types of penetration tests to be performed are determined based on a risk assessment (cf. OIS-07).

**Deutsche Übersetzung:**

**Pre-Launch- und Post-Launch-Penetration Tests** werden gemäß einem dokumentierten Framework durchgeführt. Anzahl und Arten werden auf Basis einer Risikobewertung (vgl. OIS-07) festgelegt.

---

### OPS-22.03B — Basic

**Kriterium (EN):**

> Penetration tests target the system components relevant to the provision of the cloud service in the area of responsibility of the cloud service provider. System components to be targeted are identified in a risk assessment.

**Deutsche Übersetzung:**

Penetration Tests zielen auf die Systemkomponenten, die für die Erbringung des Cloud-Dienstes im Verantwortungsbereich des Cloud-Diensteanbieters relevant sind. Die zu adressierenden Systemkomponenten werden in einer Risikobewertung identifiziert.

---

### OPS-22.03AS — Additional (Sharpening)

**Kriterium (EN):**

> Penetration tests target system components relevant to the provision of the cloud service in the area of responsibility of the cloud service provider. System components to be targeted are identified in a risk assessment incorporating, where applicable, threat modelling.

**Deutsche Übersetzung:**

Penetration Tests zielen auf die relevanten Systemkomponenten. Die zu adressierenden Systemkomponenten werden in einer Risikobewertung identifiziert, die — wo anwendbar — **Threat Modelling** einbezieht.

---

### OPS-22.04B — Basic

**Kriterium (EN):**

> Penetration tests are carried out in accordance with test plans that cover all relevant system components and specify which system components are to be tested.

**Deutsche Übersetzung:**

Penetration Tests erfolgen gemäß Testplänen, die alle relevanten Systemkomponenten abdecken und angeben, welche Komponenten getestet werden.

---

### OPS-22.05B — Basic

**Kriterium (EN):**

> If penetration tests follow multi-year test plans, each relevant system component is subjected to at least one penetration test within a maximum period of three years.

**Deutsche Übersetzung:**

Folgen Penetration Tests mehrjährigen Testplänen, wird jede relevante Systemkomponente innerhalb eines **maximalen Zeitraums von drei Jahren** mindestens einem Penetration Test unterzogen.

---

### OPS-22.06B — Basic

**Kriterium (EN):**

> The cloud service provider assesses the severity of identified vulnerabilities in accordance with the Common Vulnerability Scoring System (CVSS), in the latest version valid at the time of the assessment.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter bewertet die Schwere identifizierter Schwachstellen gemäß **CVSS** in der zur Bewertungszeit gültigen aktuellen Version.

---

### OPS-22.07B — Basic

**Kriterium (EN):**

> Actions for remediation or mitigation are taken in accordance with the time frames as defined in the policies for managing vulnerabilities (cf. OPS-18).

**Deutsche Übersetzung:**

Maßnahmen zur Behebung oder Minderung werden gemäß den in den Vulnerability-Management-Richtlinien definierten Zeitrahmen (vgl. OPS-18) ergriffen.

---

### OPS-22.08B — Basic

**Kriterium (EN):**

> The vulnerabilities discovered through penetration testing are subject to a root cause analysis. The root cause analysis enables an assessment of the extent to which similar vulnerabilities may be present in the cloud service.

**Deutsche Übersetzung:**

Die durch Penetration Tests entdeckten Schwachstellen werden einer **Root-Cause-Analyse** unterzogen. Diese ermöglicht eine Bewertung, in welchem Umfang ähnliche Schwachstellen im Cloud-Dienst vorhanden sein können.

---

### OPS-22.01AC — Additional (Complementing)

**Kriterium (EN):**

> Penetration tests are performed based on reviews of the architecture and configuration of the system components, and of the cloud service provider's source code.

**Deutsche Übersetzung:**

Penetration Tests erfolgen auf Basis von Reviews der Architektur und Konfiguration der Systemkomponenten sowie des Quellcodes des Cloud-Diensteanbieters.

---

### OPS-22.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider designs a multi-year test plan for its penetration testing activities.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter erstellt einen mehrjährigen Testplan für seine Penetration-Test-Aktivitäten.

---

### OPS-22.03AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider reviews the effectiveness of penetration tests on system components at least annually, and in case of significant changes to the cloud service.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter überprüft mindestens jährlich sowie bei wesentlichen Änderungen am Cloud-Dienst die Wirksamkeit der Penetration Tests auf Systemkomponenten.

---

### OPS-22.04AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider uses the threat modelling process to prioritise system components with the highest risk exposure for penetration testing by systematically analysing cloud components, services, data flows, trust boundaries and assets critical to the cloud service to enumerate potential threats, vulnerabilities, and attack vectors.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter nutzt den **Threat-Modelling-Prozess**, um Systemkomponenten mit höchster Risikoexposition für Penetration Tests zu priorisieren — durch systematische Analyse von Cloud-Komponenten, Diensten, Datenflüssen, Trust Boundaries und kritischen Assets, um potenzielle Bedrohungen, Schwachstellen und Angriffsvektoren zu enumerieren.

---

### OPS-22.05AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider correlates the possible exploits of discovered vulnerabilities with previous information security incidents to identify if the vulnerability may have been exploited before its discovery.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter korreliert mögliche Exploits entdeckter Schwachstellen mit früheren Sicherheitsvorfällen, um zu identifizieren, ob die Schwachstelle bereits vor ihrer Entdeckung ausgenutzt worden sein könnte.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Externes Pentest-Programm** halbjährlich (Sharpening) durch akkreditierten Anbieter (BSI-anerkannte Prüfer): Web-App, API, Auth-System, Infrastructure; Fokus auf Angriffe gegen Multi-Tenant-Isolierung und Patientendaten-Ex­filtration
- **Framework nach PTES/OSSTMM**: dokumentierte Test-Methodik, Scope, Anti-Rules-of-Engagement; Pentest-Team-Qualifikation (OSCP, OSCE, CEH); NDA + Verpflichtung auf § 203 StGB
- **Threat-Modelling-basierte Priorisierung**: STRIDE/LINDDUN-Modelle je Komponente, Angreifer-Motivation berücksichtigt (Krankenhausdaten = wertvoll für Ransomware-Gruppen); High-Value-Targets zuerst pentesten
- **Pre-Launch-Tests**: kein Prod-Release ohne Pentest-Freigabe für Features mit Patientendaten-Zugriff; Korrelation mit SIEM (retrospektive Suche nach möglicher früher Ausnutzung entdeckter Schwachstellen)

## Verwandte Kriterien

- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OPS-26 Managing Vulnerabilities, Incidents and Crashes - System Hardening]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[OIS-05 Threat Intelligence]]
- [[OIS-07 Risk Management Policy]]
- [[DEV-08 Testing System Components|DEV-08]] *(noch nicht angelegt)*
