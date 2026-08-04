---
title: OPS-14 Logging and Monitoring - Retention of the Logging Data
project: "[[C5 Katalog 2026]]"
c5-id: OPS-14
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-14
---

# OPS-14 · Logging and Monitoring — Retention of the Logging Data

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-14 · **Unterkriterien:** 3 (3 Basic)

## Unterkriterien

### OPS-14.01B — Basic

**Kriterium (EN):**

> The cloud service provider retains the generated log data, including SIEM log data, and keeps it in an appropriate, unchangeable and aggregated form, regardless of the source of such data, so that a central, authorised evaluation of the data is possible.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter bewahrt die erzeugten Log-Daten — einschließlich SIEM-Log-Daten — in angemessener, unveränderbarer und aggregierter Form auf, unabhängig von der Quelle, sodass eine zentrale, autorisierte Auswertung möglich ist.

---

### OPS-14.02B — Basic

**Kriterium (EN):**

> Log data is deleted if it is no longer required for the purpose for which it was collected.

**Deutsche Übersetzung:**

Log-Daten werden gelöscht, wenn sie für den Zweck ihrer Erhebung nicht mehr erforderlich sind.

---

### OPS-14.03B — Basic

**Kriterium (EN):**

> Between logging servers and the assets to be logged, authentication measures are in place to protect the integrity and authenticity of the information transmitted and stored. The transfer uses state of the art encryption or a dedicated administration network (out-of-band management).

**Deutsche Übersetzung:**

Zwischen Logging-Servern und den zu loggenden Assets sind Authentifizierungsmaßnahmen implementiert, um Integrität und Authentizität der übertragenen und gespeicherten Informationen zu schützen. Die Übertragung erfolgt mittels dem Stand der Technik entsprechender Verschlüsselung oder über ein dediziertes Administrationsnetz (Out-of-Band Management).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Immutable Log Storage**: WORM-Storage (S3 Object Lock, Azure Immutable Blob) mit Legal Hold-Funktion; kein Delete/Modify möglich in Retention-Periode; Hash-Chains für nachweisbare Integrität
- **Zentrale Aggregation**: alle Systeme → Log-Shipper (Fluent Bit, Vector) → Kafka-Bus → SIEM + Cold Storage; keine Blackspots im Logging (Coverage-Check via Compliance-Monitoring)
- **Automatische Lifecycle-Löschung** je Datenklasse: Access-Logs 12 Monate, Debug 30 Tage, Audit 10 Jahre; Ausnahmen (z. B. laufende Rechtsstreit-Fälle) via dokumentiertem Legal-Hold-Prozess
- **mTLS + Zertifikatsauthentifizierung** für Log-Ingestion; separate Management-VLAN für Log-System; Prüfung auf abgesetzte Systeme (Cross-Tenant-Logging in Multi-Region-Deployment)

## Verwandte Kriterien

- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-12 Logging and Monitoring - Access, Retention and Deletion]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[OPS-15 Logging and Monitoring - Accountability]]
- [[CRY-04 Encryption of Data in Transit|CRY-04]] *(noch nicht angelegt)*
- [[COS-01 Technical Safeguards|COS-01]] *(noch nicht angelegt)*
