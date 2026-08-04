---
title: CRY-14 Secure Deactivation of Cryptographic Keys
project: "[[C5 Katalog 2026]]"
c5-id: CRY-14
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-14
---

# CRY-14 · Secure Deactivation of Cryptographic Keys

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-14 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-14.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented and implemented procedures to deactivate cryptographic keys. These procedures ensure that:
>
> 1. Expired keys are no longer used for encryption purposes, but may still be used for decryption if necessary;
> 2. Expired keys are no longer used for signature creation, but may still be used for signature verification;
> 3. Deactivated keys are eventually destroyed when they are no longer required, with relevant metadata retained for auditing; and
> 4. All actions related to key deactivation and destruction are recorded in the key management system to maintain a detailed audit log.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren zur Deaktivierung kryptographischer Schlüssel dokumentiert und implementiert. Diese stellen sicher:

1. Abgelaufene Schlüssel werden nicht mehr zu **Verschlüsselungszwecken** genutzt, können aber bei Bedarf weiterhin zur Entschlüsselung eingesetzt werden;
2. Abgelaufene Schlüssel werden nicht mehr zur **Signatur-Erzeugung** genutzt, können aber weiterhin zur Signatur-Verifikation eingesetzt werden;
3. Deaktivierte Schlüssel werden schließlich vernichtet, wenn sie nicht mehr benötigt werden — relevante Metadaten werden für Audit-Zwecke aufbewahrt;
4. Alle Aktionen im Zusammenhang mit Schlüssel-Deaktivierung und -Vernichtung werden im Key-Management-System aufgezeichnet, um ein detailliertes Audit-Log zu wahren.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Automatische Deaktivierung** durch KMS bei Erreichen des `NotAfter`-Datums: Encrypt/Sign-Operationen werden vom KMS abgewiesen, Decrypt/Verify weiterhin erlaubt; automatisches Alerting an Ops-Team 30 Tage vor Deaktivierung zur Rotation-Planung
- **Post-Deaktivierungs-Retention**: deaktivierte Keys bleiben mind. 1 Jahr archiviert für nachträgliche Entschlüsselung (z. B. bei Kunden-Datenrekonstruktion aus altem Backup); nach Retention Vernichtung via Crypto-Shredding
- **Audit-Log** für Key-Lifecycle: alle State-Änderungen (Create, Rotate, Suspend, Deactivate, Destroy) im KMS-Audit-Log mit User, Zeitstempel, IP, Reason; Aufbewahrung 10 Jahre wegen § 630f BGB-Analogie
- **Metadata-Retention**: nach Key-Vernichtung Metadaten (Fingerprint, Erzeugungsdatum, letzte Nutzung, Deaktivierungsgrund) weiter aufbewahrt für Nachweise; wichtige forensische Grundlage bei Streitfällen

## Verwandte Kriterien

- [[CRY-07 Rotation of Cryptographic Keys]]
- [[CRY-11 Cryptographic Key Archival]]
- [[CRY-12 Cryptographic Key Transition Management]]
- [[CRY-13 Handling of Compromised Keys]]
- [[CRY-17 Cryptographic Key Lifecycle Management]]
