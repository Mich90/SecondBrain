---
title: OPS-06 Data Backup and Recovery - Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-06
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-06
---

# OPS-06 · Data Backup and Recovery — Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-06 · **Unterkriterien:** 2 (1 Basic · 1 Sharpening)

> [!note] Gemeinsame Zusatzinformation
> Besonders bei IaaS- und PaaS-Modellen liegt die Verantwortung für Backup und Wiederherstellung von Kundendaten häufig beim Kunden und ist daher nicht Teil der vertraglichen Vereinbarung. Ist der Backup der Kundendaten nicht vertraglich vereinbart, ist dieses Kriterium für Kundendaten nicht anwendbar — bleibt aber für abgeleitete Daten und Anbieter-Daten anwendbar. Die Anwendbarkeit wird in der Systembeschreibung dargestellt.
>
> Die Backup-Policies legen fest, welche Art von Backup durchgeführt wird (z. B. Umfang, Frequenz, Dauer) und welche Daten in Sonderfällen zusätzlich zu sichern sind. Zu unterscheiden ist zwischen **Backups** und **Snapshots** von VMs. Snapshots ersetzen keine Backups, können aber Teil der Backup-Strategie zur Erreichung von RPO sein, wenn sie außerhalb des ursprünglichen Datenspeicherorts abgelegt werden. Die geschäftlichen Anforderungen an Umfang, Frequenz und Dauer ergeben sich aus der Business Impact Analysis (vgl. [[BCM-02 Business Impact Analysis|BCM-02]]).
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die mit dem Cloud-Diensteanbieter vereinbarten Umfang, Frequenz und Dauer der Datenaufbewahrung den Geschäftsanforderungen entsprechen. Die Anforderungen werden im Rahmen der Business Impact Analysis (vgl. [[BCM-02 Business Impact Analysis|BCM-02]]) bewertet.

## Unterkriterien

### OPS-06.01B — Basic

**Kriterium (EN):**

> Policies and procedures for regular backup or replication and regular restore of cloud service customer data, cloud service derived data and cloud service provider data according to the sensitivity of the data are documented, communicated and provided in accordance with SP-01 regarding the following aspects:
>
> 1. The extent and frequency of data backups and the duration of data retention are consistent with the contractual agreements with the cloud service customers and the cloud service provider's operational continuity requirements for Recovery Time Objective (RTO) and Recovery Point Objective (RPO);
> 2. Data is backed up in encrypted, state of the art form;
> 3. Secure storage, transfer, management and disposal of backup data;
> 4. Access to the backed-up data and the execution of restores is performed only by authorised persons;
> 5. Tests of data restore procedures by the cloud service provider (cf. OPS-08); and
> 6. If part of the contractual agreement: Execution of actual data restore requests or restore tests initiated by the cloud service customer.
>
> The policies and procedures include conditions for those parts of cloud service provider data that do not require a backup. For those parts of cloud service provider data, this subcriterion is not applicable.

**Deutsche Übersetzung:**

Richtlinien und Verfahren für regelmäßige Sicherung oder Replikation und regelmäßige Wiederherstellung von Kundendaten, abgeleiteten Daten und Anbieter-Daten entsprechend der Sensitivität der Daten sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und adressieren folgende Aspekte:

1. Umfang und Frequenz von Datensicherungen und die Dauer der Datenaufbewahrung sind konsistent mit den vertraglichen Vereinbarungen mit den Cloud-Dienstkunden und den Betriebs-Kontinuitätsanforderungen des Cloud-Diensteanbieters für Recovery Time Objective (RTO) und Recovery Point Objective (RPO);
2. Daten werden in verschlüsselter, dem Stand der Technik entsprechender Form gesichert;
3. Sichere Aufbewahrung, Übertragung, Verwaltung und Entsorgung der Sicherungsdaten;
4. Zugriff auf die gesicherten Daten und Durchführung von Wiederherstellungen erfolgt nur durch autorisierte Personen;
5. Tests der Datenwiederherstellungsverfahren durch den Cloud-Diensteanbieter (vgl. [[OPS-08 Data Backup and Recovery - Regular Testing|OPS-08]]);
6. Falls Bestandteil der vertraglichen Vereinbarung: Durchführung tatsächlicher Wiederherstellungsanfragen oder vom Cloud-Dienstkunden initiierter Wiederherstellungstests.

Die Richtlinien und Verfahren beschreiben Bedingungen für jene Teile der Anbieter-Daten, für die kein Backup erforderlich ist. Für diese Teile ist das Unterkriterium nicht anwendbar.

---

### OPS-06.01AS — Additional (Sharpening)

**Kriterium (EN):**

> Policies and procedures for at least daily backup or replication and at least daily restore of cloud service customer data, cloud service derived data and cloud service provider data according to the sensitivity of the data are documented, communicated and provided in accordance with SP-01 regarding the following aspects: [wie OPS-06.01B]

**Deutsche Übersetzung:**

Richtlinien und Verfahren für **mindestens tägliche** Sicherung oder Replikation und **mindestens tägliche** Wiederherstellung von Kundendaten, abgeleiteten Daten und Anbieter-Daten entsprechend der Sensitivität der Daten. Inhaltliche Anforderungen wie in OPS-06.01B.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Backup-Policy** mit differenzierten Klassen: Patientendaten (produktiv) → RPO 15 min via kontinuierliche Replikation + tägliches Point-in-Time-Backup + wöchentliches Vollbackup, Aufbewahrung 30 Tage aktiv + 7 Jahre Archive; Anbieter-Daten (Config, Logs) täglich, 90 Tage
- **Verschlüsselung** aller Backups mit AES-256 (kundenverwaltete Schlüssel für Kundendaten) + integrität mit HMAC-SHA-256; Schlüsselverwaltung in HSM (getrennt von Backup-Speicher)
- **Access-Control** mit Vier-Augen-Prinzip für Restore: Approval von Ops-Manager + Datenschutz-Beauftragter für Restore von Patientendaten; alle Restore-Aktivitäten in Audit-Log; Session-Recording
- **Immutable Backups** (WORM-Storage, S3 Object Lock, Backup Vault) als Ransomware-Schutz: Backups können 7+ Tage nicht verändert oder gelöscht werden — kritisch für DSGVO-Meldepflicht bei Ransomware-Angriffen

## Verwandte Kriterien

- [[OPS-07 Data Backup and Recovery - Monitoring]]
- [[OPS-08 Data Backup and Recovery - Regular Testing]]
- [[OPS-09 Data Backup and Recovery - Storage]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
- [[BCM-02 Business Impact Analysis|BCM-02]] *(noch nicht angelegt)*
- [[GC-03 Information on recovery parameters in emergency operation|GC-03 · Recovery-Parameter Notbetrieb]]
