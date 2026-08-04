---
title: OPS-09 Data Backup and Recovery - Storage
project: "[[C5 Katalog 2026]]"
c5-id: OPS-09
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-09
---

# OPS-09 · Data Backup and Recovery — Storage

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-09 · **Unterkriterien:** 5 (5 Basic)

> [!note] Gemeinsame Zusatzinformation
> Wurde die Datensicherung nicht vertraglich zwischen Cloud-Diensteanbieter und Cloud-Dienstkunde vereinbart, ist dieses Kriterium nicht anwendbar. Der Cloud-Diensteanbieter stellt diese Situation in der Systembeschreibung transparent dar. Ein „entfernter Standort" kann z. B. ein anderes Rechenzentrum des Cloud-Diensteanbieters sein.

## Unterkriterien

### OPS-09.01B — Basic

**Kriterium (EN):**

> The cloud service provider transfers cloud service provider data and, if contractually agreed upon, cloud service customer data and cloud service derived data to be backed up to a remote location or transports these on backup media to a remote location.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter überträgt Anbieter-Daten und — sofern vertraglich vereinbart — Kundendaten und abgeleitete Daten, die zu sichern sind, an einen entfernten Standort oder transportiert diese auf Sicherungsmedien dorthin.

---

### OPS-09.02B — Basic

**Kriterium (EN):**

> The protection needs resulting from the data classification of the original data (e.g., encryption, access control) are also applied to backups.

**Deutsche Übersetzung:**

Die aus der Datenklassifizierung der Originaldaten resultierenden Schutzbedarfe (z. B. Verschlüsselung, Zugriffskontrolle) werden auch auf Backups angewendet.

---

### OPS-09.03B — Basic

**Kriterium (EN):**

> If the data backup is transmitted to the remote location via a network, the data backup or the transmission of the data takes place in an encrypted form that corresponds to the state of the art (cf. CRY-04).

**Deutsche Übersetzung:**

Wenn die Datensicherung über ein Netzwerk zum entfernten Standort übertragen wird, erfolgt die Datensicherung oder die Übertragung der Daten in verschlüsselter Form entsprechend dem Stand der Technik (vgl. [[CRY-04 Encryption of Data in Transit|CRY-04]]).

---

### OPS-09.04B — Basic

**Kriterium (EN):**

> The distance to the main site is chosen after sufficient consideration of the factors recovery times and impact of disasters on both sites.

**Deutsche Übersetzung:**

Die Entfernung zum Hauptstandort wird nach ausreichender Berücksichtigung der Faktoren Wiederherstellungszeiten und Auswirkung von Katastrophen auf beide Standorte gewählt.

---

### OPS-09.05B — Basic

**Kriterium (EN):**

> The physical and environmental security measures at the remote site are equivalent to those at the main site.

**Deutsche Übersetzung:**

Die physischen und Umgebungs-Sicherheitsmaßnahmen am entfernten Standort sind gleichwertig zu denen am Hauptstandort.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Remote-Backup-Site**: mindestens 200 km entfernt vom Primär-RZ, mit gleicher Sicherheitsklasse (EN 50600 gleiches Tier, ISO/IEC 27001-Zertifizierung, gleiches physisches Access-Regime); für KRITIS-Kunden Georedundanz zwingend
- **Verschlüsselte Übertragung** via IPsec-Tunnel oder TLS 1.3 zwischen Primär- und Backup-Site; Client-Side-Encryption vor Upload zusätzlich (Zero-Trust); Schlüsselverwaltung mit BYOK für Kundendaten
- **Klassifizierungs-Vererbung**: Backup-System kennt Data-Classification aus CMDB und wendet entsprechende Access-Policies an (z. B. Patientendaten → Zugriff nur mit MFA + Approval; Anbieter-Config → Standard-Access)
- **Air-gapped Immutable Copy**: zusätzliche Backup-Kopie in offline/immutable Storage (Tape oder Object Lock in separater Cloud-Region) als Ransomware-Schutz; kritisch für Wiederherstellung nach Angriffen auf primäre + sekundäre Systeme

## Verwandte Kriterien

- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[OPS-07 Data Backup and Recovery - Monitoring]]
- [[OPS-08 Data Backup and Recovery - Regular Testing]]
- [[PS-02 Redundancy Model]]
- [[CRY-04 Encryption of Data in Transit|CRY-04]] *(noch nicht angelegt)*
- [[AM-09 Asset Classification and Labelling]]
