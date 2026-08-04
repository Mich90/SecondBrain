---
title: OPS-26 Managing Vulnerabilities, Incidents and Crashes - System Hardening
project: "[[C5 Katalog 2026]]"
c5-id: OPS-26
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-26
---

# OPS-26 · Managing Vulnerabilities, Incidents and Crashes — System Hardening

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-26 · **Unterkriterien:** 7 (6 Basic · 1 Sharpening)

> [!note] Gemeinsame Zusatzinformation
> Systemkomponenten im Sinne des Kriteriums sind die Objekte, die für die Informationssicherheit des Cloud-Dienstes während Erstellung, Verarbeitung, Speicherung, Übertragung, Löschung oder Vernichtung von Informationen im Verantwortungsbereich des Cloud-Diensteanbieters erforderlich sind (z. B. Firewalls, Load Balancer, Web-Server, Application Server, DB-Server).

## Unterkriterien

### OPS-26.01B — Basic

**Kriterium (EN):**

> System components in the production environment used to provide the cloud service under the cloud service provider's responsibility are hardened according to generally accepted industry standards.

**Deutsche Übersetzung:**

Systemkomponenten in der Produktivumgebung im Verantwortungsbereich des Cloud-Diensteanbieters sind gemäß allgemein anerkannten Industriestandards gehärtet.

---

### OPS-26.02B — Basic

**Kriterium (EN):**

> The hardening requirements for each system component are documented.

**Deutsche Übersetzung:**

Die Härtungsanforderungen für jede Systemkomponente sind dokumentiert.

---

### OPS-26.03B — Basic

**Kriterium (EN):**

> If non-modifiable ('immutable') images are used, compliance with the hardening specifications, as defined in the hardening requirements, is checked upon creation of the images.

**Deutsche Übersetzung:**

Werden nicht-modifizierbare („immutable") Images genutzt, wird die Einhaltung der Härtungsvorgaben — wie in den Härtungsanforderungen definiert — bei der Image-Erstellung geprüft.

---

### OPS-26.04B — Basic

**Kriterium (EN):**

> Configurations and log files (cloud service provider data) regarding the continuous availability of the aforementioned immutable images are retained.

**Deutsche Übersetzung:**

Konfigurationen und Log-Dateien (Anbieter-Daten) bezüglich der fortdauernden Verfügbarkeit der genannten immutable Images werden aufbewahrt.

**Zusatzinformation (DE):**

Die Konfigurationen und Log-Dateien für immutable Images umfassen u. a.:

1. Konfiguration der genutzten Images bezüglich implementierter Härtung;
2. Spezifikationen einschließlich Versionshistorie;
3. Logs für File Integrity Monitoring produktiv genutzter Images.

---

### OPS-26.05B — Basic

**Kriterium (EN):**

> The cloud service provider implements monitoring measures to ensure system components comply with hardening specifications.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter implementiert Überwachungsmaßnahmen, um sicherzustellen, dass Systemkomponenten die Härtungsvorgaben einhalten.

---

### OPS-26.05AS — Additional (Sharpening)

**Kriterium (EN):**

> System components in the cloud service provider's area of responsibility are automatically monitored for compliance with hardening specifications.

**Deutsche Übersetzung:**

Systemkomponenten im Verantwortungsbereich des Cloud-Diensteanbieters werden **automatisiert** auf Einhaltung der Härtungsvorgaben überwacht.

---

### OPS-26.06B — Basic

**Kriterium (EN):**

> Identified deviations from these specifications are timely reported to the appropriate departments for immediate assessment and action.

**Deutsche Übersetzung:**

Identifizierte Abweichungen von diesen Vorgaben werden zeitnah an die zuständigen Abteilungen gemeldet, um sofortige Bewertung und Maßnahmen zu veranlassen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Härtungs-Baselines** nach CIS-Benchmarks (Level 1 minimal, Level 2 für Prod mit Patientendaten): OS (Linux, Windows), Container (Docker/K8s), Cloud (AWS, Azure, GCP), Datenbanken (Postgres, MSSQL); dokumentiert als IaC (Ansible, Terraform)
- **Immutable Images** via CI/CD-Pipeline (Packer, GitHub Actions): Base-Image → Hardening-Script → Compliance-Test (Inspec, OpenSCAP) → signed und in Registry gepusht; nur signierte Images in Prod ausrollbar
- **Continuous Compliance Monitoring** (Sharpening) automatisch: SCC (Security Command Center in GCP), Config Rules (AWS), Defender for Cloud (Azure), oder Wiz/Prisma Cloud; tägliche Drift-Erkennung, automatische Tickets bei Verstößen
- **File Integrity Monitoring** auf Prod-Systemen (Falco, AIDE, Osquery); Alarme bei unautorisierten Änderungen an gehärteten Systemen; Integration in SIEM

## Verwandte Kriterien

- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[OPS-34 Container Management - Policies and Procedures]]
- [[OPS-35 Container Management - Implementation]]
- [[DEV-01 Policies for the Development of Software and Systems|DEV-01]] *(noch nicht angelegt)*
