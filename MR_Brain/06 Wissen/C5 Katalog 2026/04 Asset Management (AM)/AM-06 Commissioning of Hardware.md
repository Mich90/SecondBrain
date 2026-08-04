---
title: AM-06 Commissioning of Hardware
project: "[[C5 Katalog 2026]]"
c5-id: AM-06
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-06
---

# AM-06 · Commissioning of Hardware

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-06 · **Unterkriterien:** 2 (2 Basic)

> [!note] Gemeinsame Zusatzinformation
> Das Kriterium gilt nur für physische Hardware-Objekte wie Server, Storage-Systeme und Netzwerkkomponenten. Virtuelle Hardware und Software-Objekte werden in den Kriterienbereichen [[C5 Katalog 2026#06. Operations (OPS) · 35 Kriterien|OPS]] und [[C5 Katalog 2026#11. Procurement, Development and Modification of Information Systems (DEV) · 15 Kriterien|DEV]] betrachtet.
>
> Der Genehmigungsprozess berücksichtigt typischerweise sowohl die grundsätzliche Freigabe zur Nutzung der Hardware als auch die finale Freigabe der konfigurierten Assets.

## Unterkriterien

### AM-06.01B — Basic

**Kriterium (EN):**

> The cloud service provider has implemented an approval process for commissioning hardware used to provide the cloud service in the production environment. This process involves identifying, analysing, and mitigating any risks (cf. OIS-07) associated with the commissioning.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat einen Genehmigungsprozess für die Inbetriebnahme von Hardware implementiert, die zur produktiven Bereitstellung des Cloud-Dienstes genutzt wird. Dieser Prozess umfasst die Identifikation, Analyse und Behandlung aller mit der Inbetriebnahme verbundenen Risiken (vgl. [[OIS-07 Risk Management Policy|OIS-07]]).

---

### AM-06.02B — Basic

**Kriterium (EN):**

> Approval is granted after verification of the secure configuration of the mechanisms for error handling, logging, encryption, authentication and authorisation according to the intended use and based on the applicable policies.

**Deutsche Übersetzung:**

Die Freigabe wird erteilt, nachdem die sichere Konfiguration der Mechanismen für Fehlerbehandlung, Logging, Verschlüsselung, Authentifizierung und Autorisierung entsprechend dem beabsichtigten Einsatzzweck und auf Basis der geltenden Richtlinien verifiziert wurde.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Hardware-Onboarding-Runbook** mit Checkliste: Wareneingang mit Seriennummer-Erfassung, Firmware-Update auf getestete Version, Hardening-Konfiguration nach CIS-Benchmark oder BSI-Grundschutz, TPM-Konfiguration, Secure Boot aktiviert, iLO/iDRAC gehärtet
- **Zwei-stufige Freigabe**: Prüfung durch Netzwerk-/Ops-Team (Konfiguration, Konnektivität), dann Sign-off durch Security-Team (Hardening-Check, VA-Scan clean, Compliance-Nachweis) — beide Nachweise in CMDB verlinkt
- **Vor Produktions-Aufnahme**: Vulnerability-Scan clean, Log-Forwarding zum SIEM verifiziert, Backup-Job konfiguriert; kein Deployment ohne dokumentierten Sign-off
- **Kryptografie-Verifikation**: bei Servern für Gesundheitsdaten Nachweis über Konfiguration Full-Disk-Encryption (LUKS/BitLocker), TLS-Version, Key-Management-Anbindung (HSM/KMS); Foto/Screenshot als Nachweis in CMDB

## Verwandte Kriterien

- [[AM-05 Policy for the Proper and Secure Use of Assets]]
- [[AM-07 Decommissioning of Hardware]]
- [[OIS-07 Risk Management Policy]]
- [[OPS-17 Managing Vulnerabilities - Baseline Configuration|OPS-17]] *(noch nicht angelegt)*
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
