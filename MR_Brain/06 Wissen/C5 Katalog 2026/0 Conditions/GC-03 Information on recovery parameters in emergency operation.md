---
title: GC-03 Information on recovery parameters in emergency operation
project: "[[C5 Katalog 2026]]"
c5-id: GC-03
c5-type: Condition
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/condition
  - c5/gc
aliases:
  - GC-03
---

# GC-03 · Information on recovery parameters in emergency operation

> [!info] General Condition (BSI C5:2026)
> **ID:** GC-03 · **Titel (DE):** Informationen zu Wiederherstellungsparametern im Notbetrieb

## Original (EN)

### Information on the General Conditions of the Cloud service

> Upon request by subject matter experts of the cloud service customers, the cloud service provider shares comprehensible and transparent information about the following recovery parameters of the cloud service:
>
> 1. Maximum tolerable period of downtime (MTPD) and Recovery Time Objective (RTO);
> 2. Maximum allowable data loss / Recovery Point Objective (RPO);
> 3. Recovery time to start emergency operation;
> 4. Minimum business continuity objective (MBCO) (capacity related to regular operation); and
> 5. Restore time until normal operation.
>
> The information enables cloud service customers to evaluate the cloud service as part of their own business impact analysis.
>
> The description of the cloud service provider's system of internal control relevant to the development and operation of the cloud service indicates where this information can be found. References relate precisely to the individual aspects specified above, allowing these subject matter experts to find the information in a timely manner.
>
> If information on availability and remediation of disruptions represent average values that are not binding in individual cases, this is highlighted separately.

### Supplementary Information — Notes on the General Conditions

> In addition to the reference in the description of the cloud service provider, the information itself may also be an optional part of the report, e.g. in a section 'Other information provided by the Cloud Service Provider'. Only in the latter case, this information is not subject to the auditor's procedures, and, accordingly, the auditor does not issue an opinion on it.

## Deutsche Übersetzung

### Informationen zu den Allgemeinen Bedingungen des Cloud-Dienstes

Auf Anfrage von Fachexperten der Cloud-Dienstkunden stellt der Cloud-Diensteanbieter nachvollziehbare und transparente Informationen zu folgenden Wiederherstellungsparametern des Cloud-Dienstes bereit:

1. Maximale tolerierbare Ausfallzeit (MTPD, Maximum Tolerable Period of Downtime) und Wiederanlaufzeit (RTO, Recovery Time Objective);
2. Maximal akzeptabler Datenverlust / Wiederherstellungspunkt (RPO, Recovery Point Objective);
3. Wiederherstellungszeit bis zum Beginn des Notbetriebs;
4. Mindest-Geschäftskontinuitätsziel (MBCO, Minimum Business Continuity Objective) — bezogen auf die Kapazität im Regelbetrieb;
5. Wiederherstellungszeit bis zur Rückkehr in den Normalbetrieb.

Die Informationen ermöglichen es den Cloud-Dienstkunden, den Cloud-Dienst im Rahmen ihrer eigenen Business Impact Analysis (BIA) zu bewerten.

In der Beschreibung des internen Kontrollsystems des Cloud-Diensteanbieters ist angegeben, wo diese Informationen zu finden sind. Verweise beziehen sich präzise auf die genannten Einzelaspekte und ermöglichen es Fachexperten, die Informationen zeitnah zu finden.

Sofern Angaben zu Verfügbarkeit und Behebung von Störungen als Durchschnittswerte dargestellt werden, die im Einzelfall nicht verbindlich sind, ist dies gesondert hervorzuheben.

### Ergänzende Hinweise

Zusätzlich zum Verweis in der Beschreibung des Cloud-Diensteanbieters können die Informationen selbst optional Bestandteil des Prüfberichts sein, z. B. in einem Abschnitt „Sonstige Informationen des Cloud-Diensteanbieters". Nur in diesem Fall unterliegen die Informationen nicht den Prüfhandlungen des Auditors, und dieser gibt entsprechend auch kein Prüfurteil dazu ab.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **RTO/RPO differenziert nach Kritikalität** dokumentieren: für den klinischen Live-Zugriff auf Patientendaten (z. B. Notaufnahme, OP) sehr strikte Ziele (RTO ≤ 30 min, RPO ≤ 5 min); für BI-/Reporting-Services deutlich toleranter (RTO ≤ 4 h, RPO ≤ 24 h)
- **MBCO im Notbetrieb** klar spezifizieren: „Im Notbetrieb steht Read-Only-Zugriff auf aktuelle Patientendaten mit reduzierter Response-Zeit zur Verfügung, Schreibvorgänge werden gepuffert" — mit dem Kunden abgestimmt und im BCM-Plan verankert
- **BC-/DR-Konzept** als Kunden-Dokument bereitstellen mit Notbetrieb-Szenarien, Georedundanz-Setup (Aktiv/Aktiv oder Aktiv/Passiv) und Failover-Testergebnissen
- **Restore-Zeit von Backups** aus Tests dokumentieren, z. B. „Vollständige Wiederherstellung aller Patientendaten aus letztem täglichen Backup in ≤ 6 h nachgewiesen (Test 2026-Q1)"

## Verwandte Kriterien

- [[GC-02 Information on availability and incident handling during regular operation|GC-02 · SLA Regelbetrieb]]
- [[GC-04 Information on the approach to ensuring service availability|GC-04 · Verfügbarkeits-Konzept]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
- [[BCM-02 Business Impact Analysis|BCM-02]] *(noch nicht angelegt)*
- [[OPS-06 Data Backup and Recovery - Policies and Procedures|OPS-06]] *(noch nicht angelegt)*
