---
title: DEV-01 Policies for the Development/Procurement of System Components
project: "[[C5 Katalog 2026]]"
c5-id: DEV-01
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-01
---

# DEV-01 · Policies for the Development/Procurement of System Components

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-01 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Software-Bereitstellung kann z. B. mit **Continuous Delivery**-Methoden erfolgen. Anerkannte Standards und Methoden für sichere Entwicklung sind u. a.: **ISO/IEC 27034** sowie **OWASP Secure Software Development Lifecycle (S-SDLC)**.
>
> Die Minimierung von Kundendaten-Zugriff während des Betriebs kann durch robuste Sicherheitsmodelle wie **Zero Trust** während der Cloud-Architektur-Entwicklung unterstützt werden. Aspekte wie Begrenzung von Datenschnittstellen, API-Calls und Zugriffen sowie Sicherstellung minimaler Nutzung sensibler Daten sollten berücksichtigt werden.

## Unterkriterien

### DEV-01.01B — Basic

**Kriterium (EN):**

> Policies and procedures with technical and organisational measures for the secure development of system components of the cloud service are documented, communicated and provided in accordance with SP-01.
>
> The policies and procedures contain guidelines for the entire life cycle of the cloud service and are based on recognised standards and methods with regard to the following aspects:
>
> 1. Security and quality in software development (requirements, design, implementation, testing and verification), including the existence of a security by design principle, enforcing the consideration of information security requirements in the software development phase;
> 2. Security and quality in software deployment (including continuous delivery);
> 3. Security and quality in operation (reaction to identified faults and vulnerabilities); and
> 4. Secure coding standards and practices (reduction of vulnerabilities being introduced to the code).

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit technischen und organisatorischen Maßnahmen für die sichere Entwicklung von Systemkomponenten des Cloud-Dienstes sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt.

Die Richtlinien und Verfahren enthalten Leitlinien für den gesamten Lebenszyklus des Cloud-Dienstes und basieren auf anerkannten Standards und Methoden bezüglich folgender Aspekte:

1. Sicherheit und Qualität in der Softwareentwicklung (Anforderungen, Design, Implementierung, Test und Verifikation), einschließlich eines **Security-by-Design**-Prinzips zur Erzwingung der Berücksichtigung von Informationssicherheitsanforderungen in der Entwicklungsphase;
2. Sicherheit und Qualität im Software-Deployment (einschließlich Continuous Delivery);
3. Sicherheit und Qualität im Betrieb (Reaktion auf identifizierte Fehler und Schwachstellen);
4. **Secure Coding Standards** und Praktiken (Reduktion der Einführung von Schwachstellen in den Code).

---

### DEV-01.02B — Basic

**Kriterium (EN):**

> Guidelines for the secure development of the cloud service define principles to ensure the system architecture and software operated by the cloud service provider within the production environment are designed in such a way that access to cloud service customer data by the cloud service provider is minimised wherever possible.

**Deutsche Übersetzung:**

Leitlinien für die sichere Entwicklung des Cloud-Dienstes definieren Prinzipien, die sicherstellen, dass die vom Cloud-Diensteanbieter in der Produktivumgebung betriebene Systemarchitektur und Software so gestaltet sind, dass der **Zugriff auf Kundendaten** durch den Cloud-Diensteanbieter — wo immer möglich — **minimiert** wird.

---

### DEV-01.03B — Basic

**Kriterium (EN):**

> The cloud service provider defines measures to enforce the specified standards and guidelines as part of the policies and procedures for the secure development of system components of the cloud service.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert Maßnahmen zur Durchsetzung der spezifizierten Standards und Leitlinien als Teil der Richtlinien und Verfahren für die sichere Entwicklung.

---

### DEV-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> In procurement, products are preferred which have been certified according to the 'Common Criteria for Information Technology Security Evaluation' (short: Common Criteria - CC) Evaluation Assurance Level EAL 4. If non-certified products are to be procured instead of available certified products, a risk assessment is carried out in accordance with OIS-07.

**Deutsche Übersetzung:**

Bei der Beschaffung werden Produkte bevorzugt, die gemäß **Common Criteria (CC)** Evaluation Assurance Level **EAL 4** zertifiziert sind. Sollen anstelle verfügbarer zertifizierter Produkte nicht-zertifizierte Produkte beschafft werden, wird eine Risikobewertung gemäß [[OIS-07 Risk Management Policy|OIS-07]] durchgeführt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Secure-SDLC-Policy** nach OWASP S-SDLC + ISO/IEC 27034: Threat Modelling in Design-Phase, SAST + DAST + IAST in CI/CD, Peer-Review (2-Personen-Prinzip für sicherheitsrelevante Änderungen), Security-Gate vor Prod-Deployment
- **Zero-Trust in Architektur**: Anwendungen so designen, dass Anbieter-Personal keinen direkten Zugriff auf Klartext-Patientendaten braucht (durch BYOK-Encryption, TEE für Berechnungen, Audit-Logging aller Zugriffe); Data-Minimization by Design
- **Coding Guidelines** dokumentiert (OWASP Top 10, CWE-Top-25, healthcare-spezifisch: FHIR-Best-Practices, HIPAA-analoge Controls); Enforcement via Linter (Semgrep, SonarQube), Pre-Commit-Hooks, Peer-Review-Checklist
- **CC-EAL4-Bevorzugung**: bei Auswahl von HSMs, IAM-Systemen, Firewalls — CC-EAL4+ zertifizierte Produkte bevorzugt (z. B. Thales Luna HSM, Netgate Firewall); bei nicht-zertifizierten Produkten dokumentierte Risikobewertung mit CISO-Approval

## Verwandte Kriterien

- [[DEV-02 Outsourcing of the Development]]
- [[DEV-03 Policies for Changes to System Components]]
- [[DEV-04 Safety Training and Awareness Programme]]
- [[DEV-05 Design Documentation for Security Features]]
- [[DEV-14 Secure Use of Third Party Hardware and Software]]
- [[OIS-07 Risk Management Policy]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
