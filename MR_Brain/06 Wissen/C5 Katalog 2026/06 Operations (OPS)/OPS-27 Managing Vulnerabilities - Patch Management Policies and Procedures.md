---
title: OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-27
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-27
---

# OPS-27 · Managing Vulnerabilities — Patch Management Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-27 · **Unterkriterien:** 5 (4 Basic · 1 Sharpening)

> [!note] Gemeinsame Zusatzinformation
> Patches sind Software-Updates für Systemkomponenten mit dem Ziel, die Sicherheit durch Adressierung von Problemen, Schwachstellen oder Exploits zu erhöhen. Was „zeitnah" bedeutet, hängt von der Kritikalität der zu patchenden Angelegenheit ab.

## Unterkriterien

### OPS-27.01B — Basic

**Kriterium (EN):**

> Policies and procedures with technical and organisational measures are documented, communicated and provided in accordance with SP-01 to ensure system components under the responsibility of the cloud service provider are patched within a suitable time frame depending on contractual agreements and identified vulnerabilities or exploits. These policies and procedures contain specifications regarding the following aspects:
>
> 1. Software is kept up-to-date, including timely deployment of security patches;
> 2. Patches are scheduled within maintenance windows, where applicable, to minimise service disruption; and
> 3. Patches are tested in non-production environments before they are rolled out into the production environment, provided testing was successful. Mechanisms are in place to revert to previous software versions in case of unexpected issues.

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit technischen und organisatorischen Maßnahmen sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt, um sicherzustellen, dass Systemkomponenten im Verantwortungsbereich des Cloud-Diensteanbieters innerhalb angemessener Zeitrahmen — abhängig von vertraglichen Vereinbarungen und identifizierten Schwachstellen oder Exploits — gepatcht werden. Sie enthalten Vorgaben zu:

1. Software wird aktuell gehalten, einschließlich zeitnaher Bereitstellung von Sicherheits-Patches;
2. Patches werden — wo anwendbar — in Wartungsfenstern eingeplant, um Service-Störungen zu minimieren;
3. Patches werden in Nicht-Produktivumgebungen getestet, bevor sie in die Produktivumgebung ausgerollt werden — vorausgesetzt der Test war erfolgreich. Mechanismen zum Zurücksetzen auf vorherige Softwareversionen bei unerwarteten Problemen sind vorhanden.

---

### OPS-27.02B — Basic

**Kriterium (EN):**

> Patch management procedures are harmonised with the cloud service provider's overall software change management process (cf. DEV-03).

**Deutsche Übersetzung:**

Patch-Management-Verfahren sind mit dem übergreifenden Software-Change-Management-Prozess des Cloud-Diensteanbieters harmonisiert (vgl. [[DEV-03 Policies for Changes to System Components|DEV-03]]).

---

### OPS-27.03B — Basic

**Kriterium (EN):**

> According to the measures and procedures of the overall change management, patches provided by third parties are identified, tested and deployed.

**Deutsche Übersetzung:**

Gemäß den Maßnahmen und Verfahren des übergreifenden Change Managements werden von Dritten bereitgestellte Patches identifiziert, getestet und eingesetzt.

---

### OPS-27.03AS — Additional (Sharpening)

**Kriterium (EN):**

> According to the measures and procedures of the overall change management, patches provided by third parties are identified, tested and deployed in an automated manner. In case of patches where manual intervention is required, an exception handling process for manual patching is defined.

**Deutsche Übersetzung:**

Patches von Dritten werden **automatisiert** identifiziert, getestet und eingesetzt. Für Patches, die manuelle Intervention erfordern, ist ein Ausnahme-Handling-Prozess definiert.

---

### OPS-27.04B — Basic

**Kriterium (EN):**

> Systems are scanned after application of patches to ensure vulnerabilities and exploits are remediated and no known or unmitigated vulnerabilities or exploits were deployed.

**Deutsche Übersetzung:**

Systeme werden nach Anwendung von Patches gescannt, um sicherzustellen, dass Schwachstellen und Exploits behoben sind und keine bekannten oder nicht gemitigierten Schwachstellen/Exploits eingeführt wurden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Automatisiertes Patch-Management** (Sharpening) via Cloud-native Tools (AWS Systems Manager Patch Manager, Azure Update Management) + GitOps für Container-Images; automatisches Rollout in Dev/Staging/Prod-Sequenz mit Gates
- **Wartungsfenster**: mit Krankenhaus-Kunden abgestimmte Windows (typisch 02:00–04:00 CET; Ausnahme: Notaufnahme-relevante Kunden bekommen 24×7-Coverage via A/B-Deployment)
- **Rollback-Fähigkeit**: Blue/Green oder Canary Deployment für alle Services; ImmutableInfra: neue Images statt In-Place-Patching; Auto-Rollback bei Health-Check-Fehler
- **Post-Patch-Verifikation**: automatischer Vulnerability-Scan direkt nach Patch-Deployment; Compliance-Report an CISO; alle Änderungen im Change-Ticket dokumentiert

## Verwandte Kriterien

- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OPS-26 Managing Vulnerabilities, Incidents and Crashes - System Hardening]]
- [[OPS-28 Managing Vulnerabilities - Patch Management Implementation]]
- [[OPS-29 Managing Vulnerabilities, Incidents and Crashes - Externally Sourced Components]]
- [[DEV-03 Policies for Changes to System Components|DEV-03]] *(noch nicht angelegt)*
