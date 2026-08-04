---
title: OPS-15 Logging and Monitoring - Accountability
project: "[[C5 Katalog 2026]]"
c5-id: OPS-15
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-15
---

# OPS-15 · Logging and Monitoring — Accountability

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-15 · **Unterkriterien:** 5 (3 Basic · 2 Complementing)

## Unterkriterien

### OPS-15.01B — Basic

**Kriterium (EN):**

> The log data generated - compromising both cloud service derived data and cloud service provider data - enables unambiguous identification of user access at the tenant level, supporting effective forensic analysis in the event of a security incident.

**Deutsche Übersetzung:**

Die erzeugten Log-Daten — sowohl abgeleitete Daten als auch Anbieter-Daten — ermöglichen eine eindeutige Identifikation von Nutzerzugriffen auf Tenant-Ebene und unterstützen eine wirksame forensische Analyse im Fall eines Sicherheitsvorfalls.

---

### OPS-15.02B — Basic

**Kriterium (EN):**

> Each logged event includes a time/date stamp to ensure accurate and traceable records.

**Deutsche Übersetzung:**

Jedes protokollierte Ereignis enthält einen Zeit-/Datumsstempel, um exakte und nachvollziehbare Aufzeichnungen sicherzustellen.

---

### OPS-15.03B — Basic

**Kriterium (EN):**

> The cloud service provider is able to support forensic analysis of incidents and to retain a chain of evidence. This implies that the cloud service provider capture the state of hardware objects and network communication during security events.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter ist in der Lage, forensische Analysen von Vorfällen zu unterstützen und eine Beweiskette (Chain of Evidence) zu wahren. Dies impliziert, dass der Cloud-Diensteanbieter den Zustand von Hardware-Objekten und der Netzwerkkommunikation während Sicherheitsereignissen erfasst.

---

### OPS-15.01AC — Additional (Complementing)

**Kriterium (EN):**

> On request of the cloud service customer, the cloud service provider provides the logs relating to the cloud service customer in an appropriate form and in a timely manner so that the cloud service customer can investigate any incidents relating to them.

**Deutsche Übersetzung:**

Auf Anfrage des Cloud-Dienstkunden stellt der Cloud-Diensteanbieter die den Cloud-Dienstkunden betreffenden Logs in angemessener Form und zeitnah zur Verfügung, sodass der Cloud-Dienstkunde Vorfälle, die ihn betreffen, untersuchen kann.

**Zusatzinformation (DE):**

Das zusätzliche Kriterium bezieht sich auch auf Logs von Systemkomponenten im Verantwortungsbereich des Cloud-Diensteanbieters, auf die der Cloud-Dienstkunde in der Regel keinen Zugriff hat — sofern diese Logs für die Analyse von Sicherheitsvorfällen und zur Identifikation von Zugriffen auf Kundendaten relevant sind (vgl. [[IAM-07 Access to Customer Data by Personnel of the Cloud Service Provider|IAM-07]] und [[INQ-03 Technical Support in Investigation Requests|INQ-03]]). Für Logs von Systemkomponenten im Verantwortungsbereich des Cloud-Diensteanbieters vgl. [[PSS-04 Communication of Log Information|PSS-04]].

---

### OPS-15.02AC — Additional (Complementing)

**Kriterium (EN):**

> The aforementioned logs are collected and maintained using controls and processes that preserve their integrity and reliability for security monitoring and incident investigation purposes. This implies, but is not limited to:
>
> 1. Records are complete and have not been tampered with in any way;
> 2. Logging systems are clock synchronised, logs include accurate timestamps;
> 3. Copies of electronic evidence are provably identical to the originals; and
> 4. Any information system from which evidence has been gathered was operating correctly at the time the evidence was recorded.

**Deutsche Übersetzung:**

Die genannten Logs werden mit Kontrollen und Prozessen erhoben und gepflegt, die deren Integrität und Zuverlässigkeit für Security-Monitoring und Vorfall-Untersuchungen bewahren. Dies umfasst u. a.:

1. Aufzeichnungen sind vollständig und in keiner Weise manipuliert;
2. Logging-Systeme sind zeitsynchronisiert; Logs enthalten exakte Zeitstempel;
3. Kopien elektronischer Beweise sind nachweislich identisch mit den Originalen;
4. Jedes Informationssystem, aus dem Beweise erhoben wurden, arbeitete zum Zeitpunkt der Aufzeichnung korrekt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Tenant-scoped Logging**: jedes Event enthält Tenant-ID + User-ID + Session-ID + Correlation-ID; forensische Anfragen können pro Krankenhaus gezielt beantwortet werden (Frage: „Wer hat am Datum X auf Patient Y zugegriffen?")
- **RFC-5424-konforme Timestamps** mit Millisekunden-Präzision und Zeitzone; NTP-basiert (max. Drift 100 ms); Zeitzone Standard UTC im Storage, Konvertierung nur bei Anzeige
- **Chain of Evidence** dokumentiert: forensisches Runbook mit Prozess für Beweissicherung, Hash-Verifikation (SHA-256 pro Log-File), Übergabeprotokoll, chain-of-custody für Übergabe an Behörden bei Ermittlungsanfragen
- **Kunden-Log-Anfragen** über Support-Portal: dokumentierter Prozess mit definierter SLA (24 h Erstantwort, 5 Werktage Bereitstellung); Krankenhaus fordert Logs für eigene forensische Analyse (z. B. bei Verdacht auf unbefugten Zugriff auf VIP-Patient) an

## Verwandte Kriterien

- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[OPS-14 Logging and Monitoring - Retention of the Logging Data]]
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
- [[IAM-07 Access to Customer Data by Personnel of the Cloud Service Provider|IAM-07]] *(noch nicht angelegt)*
- [[INQ-03 Technical Support in Investigation Requests|INQ-03]] *(noch nicht angelegt)*
- [[PSS-04 Communication of Log Information|PSS-04]] *(noch nicht angelegt)*
