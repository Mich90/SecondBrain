---
title: DEV-14 Secure Use of Third Party Hardware and Software
project: "[[C5 Katalog 2026]]"
c5-id: DEV-14
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-14
---

# DEV-14 · Secure Use of Third Party Hardware and Software

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-14 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

## Unterkriterien

### DEV-14.01B — Basic

**Kriterium (EN):**

> Policies and procedures for the use of third party and open source software are documented, communicated and provided in accordance with SP-01.

**Deutsche Übersetzung:**

Richtlinien und Verfahren für die Nutzung von Drittanbieter- und Open-Source-Software sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt.

**Zusatzinformation (DE):**

Die Policy sollte — wo anwendbar — dieselben Aspekte wie die Policy zur ordnungsgemäßen und sicheren Nutzung von Assets (vgl. [[AM-05 Policy for the Use of Assets|AM-05]] *(noch nicht angelegt)*) berücksichtigen.

---

### DEV-14.02B — Basic

**Kriterium (EN):**

> For the hardware and software products (cf. DEV-13) used in the development of the cloud service, a list of dependencies to those products is maintained.

**Deutsche Übersetzung:**

Für die in der Entwicklung des Cloud-Dienstes genutzten Hardware- und Software-Produkte (vgl. [[DEV-13 Transparency about Software Components|DEV-13]]) wird eine Liste der Abhängigkeiten zu diesen Produkten geführt.

---

### DEV-14.03B — Basic

**Kriterium (EN):**

> Only trusted sources are used to retrieve third party software. Whenever possible, the authenticity of the software is verified.

**Deutsche Übersetzung:**

Nur vertrauenswürdige Quellen werden zum Abruf von Drittanbieter-Software genutzt. Wann immer möglich, wird die Authentizität der Software verifiziert.

---

### DEV-14.01AC — Additional (Complementing)

**Kriterium (EN):**

> In procurement for the development of the cloud service, the cloud service provider performs a risk assessment in accordance with OIS-07 for every hardware and software product.

**Deutsche Übersetzung:**

Bei der Beschaffung für die Entwicklung des Cloud-Dienstes führt der Cloud-Diensteanbieter für jedes Hardware- und Software-Produkt eine Risikobewertung gemäß [[OIS-07 Risk Management Policy|OIS-07]] durch.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Third-Party-Software-Policy**: dokumentierter Prozess für Auswahl (Bevorzugung von wartungsstarker OSS mit aktivem Contributor-Base, Enterprise-Support-Optionen); Verbot bekannt problematischer Libraries; Genehmigungspflicht für neue Dependencies durch Architektur-Board
- **Trusted Sources Only**: keine Downloads aus zufälligen GitHub-Forks oder ungeprüften Registries; interne Artifact-Registry (Nexus, Artifactory, ECR) als Proxy zu offiziellen Registries; Signatur-Verifikation via Sigstore/Cosign, GPG-Signaturen; Package-Signing verpflichtend
- **Dependency-Register**: pro Software-Komponente eine Liste der externen Abhängigkeiten (Hersteller, Version, Lizenz, Support-Status, Owner im internen Team); Reviewed halbjährlich; abandoned Dependencies auf Migrations-Backlog
- **Vendor Risk Assessment** (Complementing): für signifikante Hardware/Software vor Beschaffung: Anbieter-Reputation, Sicherheits-Zertifizierungen (CC, ISO 27001, C5), Supply-Chain-Risiken (Ursprungsland, Sanktions-Compliance), Support-Lebensdauer; Ergebnis fließt in Auswahl-Entscheidung

## Verwandte Kriterien

- [[DEV-01 Policies for the Development/Procurement of System Components]]
- [[DEV-02 Outsourcing of the Development]]
- [[DEV-13 Transparency about Software Components]]
- [[AM-05 Policy for the Use of Assets|AM-05]] *(noch nicht angelegt)*
- [[OPS-29 Managing Vulnerabilities, Incidents and Crashes - Externally Sourced Components]]
- [[OPS-34 Container Management - Policies and Procedures]]
- [[SSO-01 Policies and Procedures for Controlling and Monitoring Third-Parties|SSO-01]] *(noch nicht angelegt)*
- [[OIS-07 Risk Management Policy]]
