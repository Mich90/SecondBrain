---
title: CRY-10 Secure Storage of Keys
project: "[[C5 Katalog 2026]]"
c5-id: CRY-10
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-10
---

# CRY-10 · Secure Storage of Keys

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-10 · **Unterkriterien:** 2 (1 Basic · 1 Complementing)

## Unterkriterien

### CRY-10.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented and implemented technical safeguards for the secure storage of cryptographic keys. This includes ensuring separation of the key management system from the application and middleware layers, defining how authorised users gain access and addressing the geographic residency of keys to comply with contractual, legal, regulatory, and security requirements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat technische Schutzmaßnahmen zur sicheren Speicherung kryptographischer Schlüssel dokumentiert und implementiert. Dies umfasst die Sicherstellung der Trennung des Key-Management-Systems von den Application- und Middleware-Layern, die Definition wie autorisierte Nutzer Zugriff erhalten sowie die Adressierung der geografischen Residenz der Schlüssel zur Einhaltung vertraglicher, rechtlicher, regulatorischer und Sicherheitsanforderungen.

---

### CRY-10.01AC — Additional (Complementing)

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07), the cloud service provider uses a suitable software or hardware security module for the secure storage of cryptographic keys.

**Deutsche Übersetzung:**

Basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) nutzt der Cloud-Diensteanbieter ein geeignetes **Software- oder Hardware-Security-Module (HSM)** zur sicheren Speicherung kryptographischer Schlüssel.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **HSM-Nutzung** (Complementing) für alle Master-Keys: FIPS 140-2 Level 3 oder Common Criteria EAL 4+; Cloud-HSM (AWS CloudHSM, Azure Managed HSM) oder Enterprise-HSM (Thales, Entrust nShield); Backup-HSM in getrenntem RZ
- **Trennung von App und KMS**: Anwendungen holen Keys nie direkt, sondern nutzen KMS-APIs (Envelope Encryption); Key-Material verlässt HSM nie im Klartext; Anwendungen verschlüsseln/entschlüsseln nur Data-Encryption-Keys via HSM
- **Geografische Residenz**: Kundendaten-Keys ausschließlich in DE/EU-Regionen (AWS eu-central-1 / eu-west-1, Azure Germany / West Europe); KMS-Region-Locking; Multi-Region-Replication nur mit expliziter Kunden-Zustimmung
- **Fein-granulare Access-Policy**: KMS-Rollen (Encryptor, Decryptor, Admin) getrennt; Key-Nutzung wird geloggt und an SIEM gesendet; Admin-Zugriffe auf KMS nur via PAM mit MFA und 4-Augen-Prinzip

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-05 Encryption of Sensitive Data at Rest]]
- [[CRY-06 Secure Key Generation]]
- [[CRY-11 Cryptographic Key Archival]]
- [[CRY-16 Operational Continuity for Key Management]]
- [[CRY-18 Usage of External Key Management Systems]]
- [[OIS-07 Risk Management Policy]]
