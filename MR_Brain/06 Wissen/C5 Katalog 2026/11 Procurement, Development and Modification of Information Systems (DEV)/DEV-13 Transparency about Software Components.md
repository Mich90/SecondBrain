---
title: DEV-13 Transparency about Software Components
project: "[[C5 Katalog 2026]]"
c5-id: DEV-13
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-13
---

# DEV-13 · Transparency about Software Components

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-13 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### DEV-13.01B — Basic

**Kriterium (EN):**

> The cloud service provider ensures that, as part of the software development process, a list of software components is created, maintained, and kept up-to-date for every developed or integrated software component.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt sicher, dass im Rahmen des Softwareentwicklungsprozesses für jede entwickelte oder integrierte Softwarekomponente eine Liste der Software-Komponenten erstellt, gepflegt und aktuell gehalten wird.

**Zusatzinformation (DE):**

Dieses Kriterium kann durch eine ausreichend detaillierte Liste der Software-Komponenten erfüllt werden. Ausreichend detailliert bedeutet, dass die Liste dem Cloud-Diensteanbieter erlaubt, alle vom Kriterium betroffenen Cloud-Dienste für eine gegebene bekannte Schwachstelle zu identifizieren. Das Kriterium kann auch durch eine **Software Bill of Materials (SBOM)** erfüllt werden. Anerkannte Regeln der Technik zu Erstellung, Pflege und Nutzung von SBOMs sind in den relevanten Standards definiert.

---

### DEV-13.02B — Basic

**Kriterium (EN):**

> The cloud service provider maintains a list of software components for integrated software components as well, except where such information is not available and cannot be produced with reasonable effort. The risk from these exceptions is treated according to SP-03.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter pflegt eine Liste der Software-Komponenten auch für integrierte Software-Komponenten — außer wenn solche Informationen nicht verfügbar sind und nicht mit vernünftigem Aufwand erstellt werden können. Das Risiko aus diesen Ausnahmen wird gemäß [[SP-03 Exceptions from Existing Policies and Procedures|SP-03]] behandelt.

**Zusatzinformation (DE):**

Dieses Unterkriterium gilt nur für integrierte Software-Komponenten. Wenn integrierte Software-Komponenten z. B. Open Source sind und dieses Kriterium via SBOMs erfüllt wird, kann es Fälle geben, in denen eine SBOM nicht verfügbar ist und nicht mit vernünftigem Aufwand erstellt werden kann. Vernünftig impliziert, dass ein Wechsel dieser Komponente zu einer, die eine SBOM hat, wirtschaftlich nicht durchführbar ist. Die Risiken aus diesen Ausnahmen sind jedoch gemäß SP-03 zu behandeln.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **SBOM pro Release** in CycloneDX oder SPDX-Format: automatisch generiert im CI/CD-Prozess via Syft, cdxgen oder GitHub Dependency Graph; enthält alle direkten + transitiven Dependencies mit Version, License, Hash; in Registry gespeichert
- **Vulnerability-Matching gegen SBOM**: Trivy, Grype, oder Snyk gegen CVE-Feeds; automatischer Alert bei neuen Schwachstellen in Prod-Deployments; wichtiger Nachweis für Krankenhaus-Kunden im Audit (welche Log4j-Version läuft in ihrem Cloud-Setup?)
- **VEX (Vulnerability Exploitability eXchange)** zusätzlich zur SBOM: dokumentiert für jede CVE ob und wie sie im Cloud-Kontext ausnutzbar ist; „affected/not affected/fixed/under investigation"; hilft Krankenhaus-Kunden bei Priorisierung
- **Ausnahmen dokumentiert**: proprietäre Third-Party-Komponente ohne SBOM (Legacy-Vendor) → Risikobewertung in SP-03-Ausnahmeregister; kompensierende Maßnahmen (Sandboxing, engmaschiges Monitoring); Migration auf SBOM-fähige Alternative in Roadmap

## Verwandte Kriterien

- [[DEV-08 Logging of Changes]]
- [[DEV-09 Version Control]]
- [[DEV-14 Secure Use of Third Party Hardware and Software]]
- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OPS-29 Managing Vulnerabilities, Incidents and Crashes - Externally Sourced Components]]
- [[AM-02 Asset Inventory]]
- [[SP-03 Exceptions from Existing Policies and Procedures]]
