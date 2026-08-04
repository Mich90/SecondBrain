---
title: DEV-09 Version Control
project: "[[C5 Katalog 2026]]"
c5-id: DEV-09
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-09
---

# DEV-09 · Version Control

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-09 · **Unterkriterien:** 5 (3 Basic · 2 Complementing)

## Unterkriterien

### DEV-09.01B — Basic

**Kriterium (EN):**

> The cloud service provider uses a version control system that adequately ensures the confidentiality, integrity and authenticity of the source code during all development stages.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter nutzt ein Versionskontrollsystem, das Vertraulichkeit, Integrität und Authentizität des Quellcodes während aller Entwicklungsstadien angemessen sicherstellt.

---

### DEV-09.02B — Basic

**Kriterium (EN):**

> Version control procedures track dependencies of individual changes and attribute each change to individual contributors. The version control procedures are capable of restoring affected system components back to a previous state.

**Deutsche Übersetzung:**

Versionskontroll-Verfahren verfolgen Abhängigkeiten einzelner Änderungen und ordnen jede Änderung einzelnen Contributors zu. Die Versionskontroll-Verfahren sind in der Lage, betroffene Systemkomponenten in einen früheren Zustand zurückzusetzen.

---

### DEV-09.03B — Basic

**Kriterium (EN):**

> Version control covers all internally and externally developed software, configurations and third party commercial products under the responsibility of the cloud service provider.

**Deutsche Übersetzung:**

Die Versionskontrolle umfasst alle intern und extern entwickelte Software, Konfigurationen und Drittanbieter-Kommerz-Produkte im Verantwortungsbereich des Cloud-Diensteanbieters.

---

### DEV-09.01AC — Additional (Complementing)

**Kriterium (EN):**

> Version control procedures provide appropriate safeguards to ensure that the integrity and availability of cloud service customer data is not compromised when system components are restored back to their previous state.

**Deutsche Übersetzung:**

Versionskontroll-Verfahren bieten angemessene Schutzmaßnahmen, um sicherzustellen, dass die Integrität und Verfügbarkeit von Kundendaten nicht beeinträchtigt wird, wenn Systemkomponenten in einen früheren Zustand zurückgesetzt werden.

---

### DEV-09.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider keeps a record of all deployed software versions and system configurations. This record enables the recreation of a previously implemented environment in a test environment.
>
> The retention time for this history is risk-based (cf. OIS-07), defined in the policy for version control and aligned to the support life cycle of the cloud service.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter führt Aufzeichnungen aller deployeten Software-Versionen und Systemkonfigurationen. Diese Aufzeichnungen ermöglichen die Wiederherstellung einer zuvor implementierten Umgebung in einer Testumgebung.

Die Aufbewahrungsdauer dieser Historie ist risikobasiert (vgl. [[OIS-07 Risk Management Policy|OIS-07]]), in der Versionskontroll-Policy definiert und auf den Support-Lebenszyklus des Cloud-Dienstes abgestimmt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Git als zentrales VCS**: Enterprise-Version (GitHub Enterprise, GitLab Self-Managed) im EU-RZ; Signed Commits, Branch Protection, MFA für Push-Berechtigung; regelmäßige Backups der Repos; Retention 10+ Jahre
- **IaC unter Versionskontrolle**: alle Terraform-Files, Kubernetes-Manifeste, Ansible-Playbooks in Git; Configuration Drift-Detection; Cross-Referenz zwischen Code-Change und Infra-Change
- **Third-Party-Dependencies** in Lockfiles versioniert: `package-lock.json`, `Cargo.lock`, `go.sum`; SBOM pro Release; keine unversionierten Dependencies in Prod; Renovate für kontrollierte Updates
- **Data-Migration-Safety bei Rollback** (Complementing): Datenbank-Schema-Changes rückwärtskompatibel gestaltet (Expand-Contract-Pattern); bei kritischen Migrations Snapshot vor + Test-Rollback im Staging; Rollback-Runbook pro Release

## Verwandte Kriterien

- [[DEV-03 Policies for Changes to System Components]]
- [[DEV-08 Logging of Changes]]
- [[DEV-13 Transparency about Software Components]]
- [[DEV-14 Secure Use of Third Party Hardware and Software]]
- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[OIS-07 Risk Management Policy]]
