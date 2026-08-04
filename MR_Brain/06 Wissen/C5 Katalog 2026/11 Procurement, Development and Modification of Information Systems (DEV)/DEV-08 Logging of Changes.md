---
title: DEV-08 Logging of Changes
project: "[[C5 Katalog 2026]]"
c5-id: DEV-08
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-08
---

# DEV-08 · Logging of Changes

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-08 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

## Unterkriterien

### DEV-08.01B — Basic

**Kriterium (EN):**

> System components for version control and software deployment that are used to manage changes to system components of the cloud service in the production environment are subject to a role and rights framework according to IAM-01 and authorisation mechanisms.

**Deutsche Übersetzung:**

Systemkomponenten für Versionskontrolle und Software-Deployment, die zur Verwaltung von Änderungen an Systemkomponenten des Cloud-Dienstes in der Produktivumgebung genutzt werden, unterliegen einem Rollen- und Rechte-Framework gemäß [[IAM-01 Policy for Identities and Access Rights|IAM-01]] und Autorisierungsmechanismen.

---

### DEV-08.02B — Basic

**Kriterium (EN):**

> The configuration of these system components ensures that all changes performed by the cloud service provider to system components in the production environment are recorded and can be traced back to the individuals or system components contributing to their development, deployment or implementation.

**Deutsche Übersetzung:**

Die Konfiguration dieser Systemkomponenten stellt sicher, dass alle vom Cloud-Diensteanbieter an Systemkomponenten in der Produktivumgebung durchgeführten Änderungen aufgezeichnet werden und auf die Personen oder Systemkomponenten zurückgeführt werden können, die zu deren Entwicklung, Deployment oder Umsetzung beigetragen haben.

**Zusatzinformation (DE):**

Wenn eine Änderung externe Beiträge enthält (z. B. Nutzung von Drittanbieter-Produkten, -Bibliotheken), ist eine individuelle Rückverfolgung in der Entwicklung oft nicht möglich. In diesem Fall reicht es aus, den externen Beitrag in der Software-Komponenten-Liste oder **SBOM** (vgl. [[DEV-13 Transparency about Software Components|DEV-13]]) zu erfassen.

---

### DEV-08.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider enforces the role and rights framework by monitoring the changes made to system components of the cloud service in the production environment. Timely and appropriate remediation measures address any deviations identified during monitoring.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter setzt das Rollen- und Rechte-Framework durch, indem er die an Systemkomponenten des Cloud-Dienstes in der Produktivumgebung durchgeführten Änderungen überwacht. Zeitnahe und angemessene Behebungsmaßnahmen adressieren im Rahmen des Monitorings festgestellte Abweichungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Git-Commit-Signing**: alle Commits mit GPG oder SSH-Signaturen; Branch Protection Rules (kein Force-Push auf main, Approval-Regel, CI-Erfolg vor Merge); jeder Change nachverfolgbar zum Author
- **CI/CD-Audit-Log**: alle Builds, Deployments, Rollbacks im Log-System (z. B. GitHub Actions Log, Jenkins Audit, ArgoCD History); wer hat wann was deployed?; SIEM-Integration
- **RBAC in Deployment-Tools**: Developer haben nur Zugriff auf Dev/Staging; Deploy auf Prod nur durch Release Manager (getrennt vom Developer); Emergency-Access via Break-Glass mit Alert
- **Monitoring von Prod-Änderungen** (Complementing): Config-Drift-Erkennung (ArgoCD, Terraform Plan als Cronjob); ungeplante Änderungen an Prod-Systemen (z. B. manuelles kubectl edit) triggern Alarm; Investigation binnen 24 h

## Verwandte Kriterien

- [[DEV-03 Policies for Changes to System Components]]
- [[DEV-09 Version Control]]
- [[DEV-10 Approvals for Provision in the Production Environment]]
- [[DEV-13 Transparency about Software Components]]
- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-06 Privileged Access Rights]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-16 Logging and Monitoring - Configuration]]
