---
title: OPS-07 Data Backup and Recovery - Monitoring
project: "[[C5 Katalog 2026]]"
c5-id: OPS-07
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-07
---

# OPS-07 · Data Backup and Recovery — Monitoring

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-07 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

> [!note] Complementary Customer Criteria
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass das Backup von Daten in ihrem Verantwortungsbereich durch technische und organisatorische Maßnahmen überwacht wird.

## Unterkriterien

### OPS-07.01B — Basic

**Kriterium (EN):**

> The execution of backups of cloud service customer data, cloud service derived data and cloud service provider data is monitored by technical and organisational measures documented and implemented in accordance with the policies and procedures for data backup and recovery (cf. OPS-06).

**Deutsche Übersetzung:**

Die Durchführung der Sicherung von Kundendaten, abgeleiteten Daten und Anbieter-Daten wird durch technische und organisatorische Maßnahmen überwacht, die gemäß den Richtlinien und Verfahren zu Datensicherung und -wiederherstellung (vgl. [[OPS-06 Data Backup and Recovery - Policies and Procedures|OPS-06]]) dokumentiert und implementiert sind.

---

### OPS-07.02B — Basic

**Kriterium (EN):**

> Incidents are investigated by qualified personnel and rectified timely to ensure compliance with contractual obligations to cloud service customers or the cloud service provider's business requirements regarding the scope and frequency of data backup and the duration of storage.

**Deutsche Übersetzung:**

Vorfälle werden von qualifiziertem Personal untersucht und zeitnah behoben, um die Einhaltung vertraglicher Pflichten gegenüber Cloud-Dienstkunden bzw. der Geschäftsanforderungen des Cloud-Diensteanbieters hinsichtlich Umfang, Frequenz und Speicherdauer der Datensicherung sicherzustellen.

---

### OPS-07.01AC — Additional (Complementing)

**Kriterium (EN):**

> The relevant logs or summarised results are available to the cloud service customer in a self-service portal for monitoring the data backup.

**Deutsche Übersetzung:**

Die relevanten Logs bzw. zusammengefasste Ergebnisse werden dem Cloud-Dienstkunden in einem Self-Service-Portal zur Überwachung der Datensicherung zur Verfügung gestellt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Backup-Monitoring** mit Metriken: erfolgreiche Backups (%), Backup-Dauer, Größe, RPO-Compliance; Alarme bei Fehl-Backups (2 aufeinanderfolgende Fehler = P1-Ticket); Backup-Verify-Prozesse (Checksums, Test-Restores)
- **24×7-Ops-Rotation** mit Runbook „Backup Fail": Sofortmaßnahmen (Retry, Alternate Path), Root-Cause-Analyse, Kunden-Kommunikation bei RPO-Verletzung, Post-Mortem
- **Kunden-Backup-Dashboard**: pro Krankenhaus letzte Backup-Zeit (Grün < 24 h, Gelb 24–48 h, Rot > 48 h), RPO-Status, letzter erfolgreicher Restore-Test; DSGVO-relevanter Nachweis für die Kundenauditoren
- **Metrics-Alerts** in Prometheus/Datadog + Backup-Tool (Veeam, Commvault, native Cloud-Backup) → PagerDuty → On-Call Engineer

## Verwandte Kriterien

- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[OPS-08 Data Backup and Recovery - Regular Testing]]
- [[OPS-09 Data Backup and Recovery - Storage]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
