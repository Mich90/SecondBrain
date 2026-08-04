---
title: OPS-12 Logging and Monitoring - Access, Retention and Deletion
project: "[[C5 Katalog 2026]]"
c5-id: OPS-12
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-12
---

# OPS-12 · Logging and Monitoring — Access, Retention and Deletion

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-12 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-12.01B — Basic

**Kriterium (EN):**

> The requirements for the logging and monitoring of events and for the secure handling of cloud service derived data and cloud service provider data (cf. OPS-10, OPS-11) are implemented by technically supported procedures with regard to the following restrictions:
>
> 1. Access only for authorised users and systems;
> 2. Retention for the specified period; and
> 3. Deletion when further retention is no longer necessary for the purpose of collection.

**Deutsche Übersetzung:**

Die Anforderungen zum Logging und Monitoring von Ereignissen sowie zum sicheren Umgang mit abgeleiteten Daten und Anbieter-Daten (vgl. [[OPS-10 Logging and Monitoring - Policies and Procedures|OPS-10]], [[OPS-11 Logging and Monitoring - Policies and Procedures for Handling Cloud Service Derived Data and Account Data|OPS-11]]) werden durch technisch unterstützte Verfahren umgesetzt hinsichtlich folgender Einschränkungen:

1. Zugriff nur für autorisierte Nutzer und Systeme;
2. Aufbewahrung für den festgelegten Zeitraum;
3. Löschung, wenn eine weitere Aufbewahrung für den Erhebungszweck nicht mehr erforderlich ist.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **RBAC im Log-System** (SIEM/ELK/Splunk): fein granulare Access-Rollen (SOC-Analyst = Read alle Logs, DevOps = nur eigenes Team, Compliance = nur Audit-Logs); alle Log-Zugriffe wiederum in Audit-Log protokolliert
- **Lifecycle-Management** in Log-Storage: automatische Löschung nach Retention-Ablauf via ILM-Policies (Elastic) oder S3-Lifecycle-Rules; keine manuellen Löschungen ohne Freigabe (4-Augen-Prinzip) und Dokumentation
- **Isolierter Log-Store**: separate Cloud-Ressourcen für Log-Storage mit eigenem Netzwerksegment; Schreibrechte nur für Ingestion-Pipeline, keine Modifikation möglich (Append-Only); Backup separat verschlüsselt
- **Compliance-Reporting**: automatischer monatlicher Report „Log Compliance": welche Systeme loggen korrekt, Coverage-Gaps, Retention-Compliance, Access-Anomalien; Übersicht an CISO

## Verwandte Kriterien

- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-11 Logging and Monitoring - Policies and Procedures for Handling Cloud Service Derived Data and Account Data]]
- [[OPS-14 Logging and Monitoring - Retention of the Logging Data]]
- [[OPS-16 Logging and Monitoring - Configuration]]
- [[IAM-01 Policy for Identities and Access Rights|IAM-01]] *(noch nicht angelegt)*
