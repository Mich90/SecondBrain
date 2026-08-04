---
title: DEV-07 Testing Changes
project: "[[C5 Katalog 2026]]"
c5-id: DEV-07
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-07
---

# DEV-07 · Testing Changes

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-07 · **Unterkriterien:** 6 (5 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Es sollten Tests genutzt werden, die sowohl zur Qualitätssicherung der Softwareentwicklung als auch zur Sicherheit des Cloud-Dienstes beitragen. Die in Tests identifizierten Fehler und Schwachstellen können z. B. gemäß **CVSS** bewertet werden. Testverfahren für Software-Assets können statisch (**SAST**), dynamisch (**DAST**) oder interaktiv (**IAST**) sein.

## Unterkriterien

### DEV-07.01B — Basic

**Kriterium (EN):**

> Changes to the cloud service are subject to appropriate testing according to documented test procedures during software development and deployment.

**Deutsche Übersetzung:**

Änderungen am Cloud-Dienst unterliegen während der Softwareentwicklung und des Deployments angemessenen Tests gemäß dokumentierten Testverfahren.

---

### DEV-07.02B — Basic

**Kriterium (EN):**

> The type and scope of the tests correspond to the risk assessment. The tests are carried out by appropriately qualified personnel of the cloud service provider or by automated test procedures that comply with established rules of technology. Cloud service customers are involved into the tests in accordance with the contractual requirements.

**Deutsche Übersetzung:**

Art und Umfang der Tests entsprechen der Risikobewertung. Die Tests werden von entsprechend qualifiziertem Personal des Cloud-Diensteanbieters oder durch automatisierte Testverfahren durchgeführt, die den anerkannten Regeln der Technik entsprechen. Cloud-Dienstkunden werden gemäß den vertraglichen Anforderungen in die Tests einbezogen.

---

### DEV-07.03B — Basic

**Kriterium (EN):**

> Before using cloud service customer data for tests, the cloud service provider first obtains approval from that cloud service customer and anonymises the cloud service customer data. The cloud service provider ensures the confidentiality of the data during the whole process.

**Deutsche Übersetzung:**

Vor Nutzung von Kundendaten für Tests holt der Cloud-Diensteanbieter zunächst die Zustimmung des Cloud-Dienstkunden ein und **anonymisiert** die Kundendaten. Der Cloud-Diensteanbieter stellt die Vertraulichkeit der Daten während des gesamten Prozesses sicher.

---

### DEV-07.04B — Basic

**Kriterium (EN):**

> The security features of the cloud service are subject to tests that fully cover the security features' specification (cf. DEV-05), including all specified error conditions. The documentation of these tests covers at least the following aspects:
>
> 1. A description of the test;
> 2. The initial conditions;
> 3. The expected outcome; and
> 4. Procedures for running the test.

**Deutsche Übersetzung:**

Die Sicherheitsfunktionen des Cloud-Dienstes unterliegen Tests, die die Spezifikation der Sicherheitsfunktionen (vgl. [[DEV-05 Design Documentation for Security Features|DEV-05]]) vollständig abdecken — einschließlich aller spezifizierten Fehlerbedingungen. Die Dokumentation dieser Tests umfasst mindestens:

1. Eine Beschreibung des Tests;
2. Die Ausgangsbedingungen;
3. Das erwartete Ergebnis;
4. Verfahren zur Durchführung des Tests.

---

### DEV-07.05B — Basic

**Kriterium (EN):**

> The severity of the errors and vulnerabilities identified in the tests, which are relevant for the deployment decision, is determined according to defined criteria and actions for timely remediation or mitigation are initiated.

**Deutsche Übersetzung:**

Die Schwere der in den Tests identifizierten Fehler und Schwachstellen, die für die Deployment-Entscheidung relevant sind, wird gemäß definierten Kriterien bestimmt und Maßnahmen zur zeitnahen Behebung oder Minderung werden eingeleitet.

---

### DEV-07.01AC — Additional (Complementing)

**Kriterium (EN):**

> Pre-launch penetration tests are carried out during the test phase of the cloud service in accordance with the penetration test framework (cf. OPS-22 additional criterion). The severity of identified vulnerabilities is assessed according to defined criteria and actions for timely remediation or mitigation are initiated.

**Deutsche Übersetzung:**

**Pre-Launch-Penetration Tests** werden in der Testphase des Cloud-Dienstes gemäß dem Penetration-Test-Framework (vgl. [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests|OPS-22]] Additional Criterion) durchgeführt. Die Schwere identifizierter Schwachstellen wird gemäß definierten Kriterien bewertet und Maßnahmen zur zeitnahen Behebung oder Minderung werden eingeleitet.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Test-Pyramide**: Unit-Tests (80%+ Coverage), Integration-Tests, End-to-End-Tests, Performance-Tests, Security-Tests (SAST/DAST/SCA); in CI/CD-Pipeline automatisiert; Deployment gebrickt wenn Tests fehlschlagen
- **Synthetische Testdaten** statt echter Patientendaten: SDV (Synthetic Data Vault) oder Faker mit FHIR-Struktur; Test-Daten haben keinen Personenbezug (weder direkt noch indirekt); wichtig für DSGVO Art. 5 (Datenminimierung)
- **Security-Test-Governance**: OWASP ASVS Level 2 als Ziel; Testfälle für Auth (Session-Hijacking, Broken Access Control), Injection (SQLi, XSS, LDAP), Krypto (weak Cipher, invalid Cert); dokumentiert im Test-Plan pro Release
- **Pre-Launch-Pentest** (Complementing) für alle neuen Features mit Patientendaten-Zugriff: externer Pentest-Anbieter mit Healthcare-Expertise; Blocking-Kriterium: keine High/Critical-Findings offen; Findings-Retest verpflichtend

## Verwandte Kriterien

- [[DEV-03 Policies for Changes to System Components]]
- [[DEV-05 Design Documentation for Security Features]]
- [[DEV-06 Risk Assessment, Categorisation and Prioritisation of Changes]]
- [[DEV-10 Approvals for Provision in the Production Environment]]
- [[OPS-08 Data Backup and Recovery - Regular Testing]]
- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
