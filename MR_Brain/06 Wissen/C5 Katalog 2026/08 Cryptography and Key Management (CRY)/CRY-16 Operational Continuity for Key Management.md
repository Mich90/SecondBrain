---
title: CRY-16 Operational Continuity for Key Management
project: "[[C5 Katalog 2026]]"
c5-id: CRY-16
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-16
---

# CRY-16 · Operational Continuity for Key Management

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-16 · **Unterkriterien:** 2 (2 Basic)

> [!note] Gemeinsame Zusatzinformation
> Der Cloud-Diensteanbieter sollte folgende Optionen zur Sicherung von Schlüsselmaterial in Betracht ziehen:
>
> 1. **Backup von Schlüsseln**: Verschlüsselte Backups werden sicher außerhalb des HSM gespeichert. Der Backup-Prozess stellt sicher, dass die Schlüssel während Speicherung und Transit verschlüsselt bleiben, um unautorisierten Zugriff zu verhindern. Regelmäßige Tests der Backup- und Recovery-Verfahren sollten durchgeführt werden;
> 2. **Redundanz**: Aufbau von HSM-Cluster mit synchronisiertem Key-Material zur Ausfallsicherheit;
> 3. **Key Sharing / Splitting**: Aufteilung des Schlüsselmaterials in mehrere Fragmente (M-of-N-Sharding).

## Unterkriterien

### CRY-16.01B — Basic

**Kriterium (EN):**

> The cloud service provider has assessed the balance between conducting backups of key material stored in a Hardware Security Module (HSM) for key restoration and building redundancy or comparable measures for securing keys to ensure operational continuity. This assessment includes evaluating the risk of key exposure if control over the key material is lost. Decisions regarding whether to use the backups of keys or to establish redundancy are documented, and the chosen measures are reviewed for their effectiveness and compliance with contractual, legal and regulatory requirements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat die Abwägung zwischen der Durchführung von Backups von im HSM gespeichertem Schlüsselmaterial (zur Wiederherstellung) und dem Aufbau von Redundanz oder vergleichbaren Maßnahmen zur Sicherstellung der Betriebs-Kontinuität bewertet. Diese Bewertung umfasst die Beurteilung des Risikos der Schlüssel-Offenlegung bei Verlust der Kontrolle über das Schlüsselmaterial. Entscheidungen über Backup vs. Redundanz sind dokumentiert; die gewählten Maßnahmen werden auf Wirksamkeit und Compliance mit vertraglichen, rechtlichen und regulatorischen Anforderungen überprüft.

---

### CRY-16.02B — Basic

**Kriterium (EN):**

> Procedures for the recovery of lost or corrupted keys are in place.

**Deutsche Übersetzung:**

Verfahren zur Wiederherstellung verlorener oder beschädigter Schlüssel sind vorhanden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **HSM-Cluster mit Multi-AZ-Replikation**: 3+ HSMs in verschiedenen Availability Zones, synchronisiert; Ausfall eines HSMs führt nicht zu Verlust; Wartung ohne Downtime möglich
- **M-of-N-Key-Sharding für Master-Keys** (z. B. Shamir Secret Sharing, 3-of-5): Root-Keys aufgeteilt auf mehrere physisch getrennte Locations + Verantwortliche; kein einzelner Point of Failure, aber auch kein einzelner Point of Compromise
- **Encrypted Off-Site-Backup**: HSM-exportierte Key-Backups (in Cloud-KMS als „Cross-Region Backup" oder physisch in Bank-Safe) verschlüsselt mit Master-Password; Wiederherstellung nur unter 4-Augen-Prinzip mit Legal-Approval
- **Jährliche Recovery-Übung**: dokumentierter Test der Key-Recovery aus Backup in isolierter Umgebung; Verifikation dass Keys korrekt wiederhergestellt (Round-Trip-Test); Aktualisierung des Runbooks

## Verwandte Kriterien

- [[CRY-10 Secure Storage of Keys]]
- [[CRY-11 Cryptographic Key Archival]]
- [[CRY-13 Handling of Compromised Keys]]
- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
- [[BCM-04 Business Continuity Tests and Exercises|BCM-04]] *(noch nicht angelegt)*
