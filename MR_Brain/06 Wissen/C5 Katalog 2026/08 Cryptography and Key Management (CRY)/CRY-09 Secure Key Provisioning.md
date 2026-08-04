---
title: CRY-09 Secure Key Provisioning
project: "[[C5 Katalog 2026]]"
c5-id: CRY-09
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-09
---

# CRY-09 · Secure Key Provisioning

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-09 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### CRY-09.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented and implemented procedures and technical safeguards to ensure that cryptographic keys are provisioned and activated securely within its area of responsibility. These procedures include the verification of identity and authorisation before provisioning and activating keys to ensure they are granted to legitimate entities.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren und technische Schutzmaßnahmen dokumentiert und implementiert, die sicherstellen, dass kryptographische Schlüssel in seinem Verantwortungsbereich sicher bereitgestellt und aktiviert werden. Diese Verfahren umfassen die Verifikation von Identität und Autorisierung vor Bereitstellung und Aktivierung von Schlüsseln, um sicherzustellen, dass sie legitimen Entitäten gewährt werden.

---

### CRY-09.02B — Basic

**Kriterium (EN):**

> Provisioned keys include activation and deactivation dates to ensure that their use is time limited.

**Deutsche Übersetzung:**

Bereitgestellte Schlüssel enthalten Aktivierungs- und Deaktivierungsdaten, um sicherzustellen, dass ihre Nutzung zeitlich begrenzt ist.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Key-Provisioning-Workflow** mit Approval: Anforderung im ITSM (mit Zweck, Zielumgebung, Nutzungsdauer), Approval durch Krypto-Verantwortlichen + Security, automatische Bereitstellung via KMS/Vault-API mit Ablaufdatum
- **Identitätsverifikation vor Provisionierung**: KMS/Vault-Zugriffe nur nach MFA + Rollen-Prüfung; für Master-Keys 2-Personen-Regel (M-of-N-Sharding); Session-Recording bei Provisionierung sensitiver Keys
- **Time-bound Keys** in KMS: alle Data-Encryption-Keys mit `NotBefore` und `NotAfter`-Timestamps; automatische Deaktivierung nach `NotAfter`; keine indefiniten Keys außer explizit dokumentiertem Master-Key
- **Bootstrap-Problem beheben**: initialer Trust via HSM-signed Attestation-Report (bei confidential computing) oder physische Auslieferung (Smart Card, Yubikey mit vorinstalliertem Key)

## Verwandte Kriterien

- [[CRY-06 Secure Key Generation]]
- [[CRY-07 Rotation of Cryptographic Keys]]
- [[CRY-10 Secure Storage of Keys]]
- [[CRY-12 Cryptographic Key Transition Management]]
- [[CRY-17 Cryptographic Key Lifecycle Management]]
- [[IAM-01 Policy for Identities and Access Rights]]
