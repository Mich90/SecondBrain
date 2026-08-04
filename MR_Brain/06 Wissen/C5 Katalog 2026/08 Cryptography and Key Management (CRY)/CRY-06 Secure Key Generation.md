---
title: CRY-06 Secure Key Generation
project: "[[C5 Katalog 2026]]"
c5-id: CRY-06
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-06
---

# CRY-06 · Secure Key Generation

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-06 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-06.01B — Basic

**Kriterium (EN):**

> Procedures and technical safeguards for the secure generation of keys for different cryptographic systems and applications are documented and implemented. These safeguards require the use of secure random bit generators or generation based on keys that were created in this fashion.

**Deutsche Übersetzung:**

Verfahren und technische Schutzmaßnahmen für die sichere Erzeugung von Schlüsseln für verschiedene kryptographische Systeme und Anwendungen sind dokumentiert und implementiert. Diese Schutzmaßnahmen erfordern die Nutzung **sicherer Zufallszahlengeneratoren** oder eine Erzeugung basierend auf Schlüsseln, die auf diese Weise erzeugt wurden.

**Zusatzinformation (DE):**

Zur Definition sicherer Zufallszahlengeneratoren wird auf **BSI TR-02102-1 (Kapitel 8)** verwiesen. Der Cloud-Diensteanbieter schützt die vom Cloud-Dienstkunden erzeugten und in den Cloud-Dienst eingebrachten Schlüssel gemäß denselben Kriterien wie die vom Cloud-Diensteanbieter erzeugten Schlüssel.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Hardware Security Module (HSM)** oder **Cloud-KMS** (AWS CloudHSM, Azure Managed HSM, GCP Cloud HSM) für Key Generation; FIPS-140-2/3 Level 3 zertifiziert; alle Kunden-Master-Keys ausschließlich hier erzeugt
- **CSPRNG-Nutzung** in Anwendungscode: `/dev/urandom` unter Linux, `getrandom()` API; keine `Math.random()` oder unseeded PRNG; Peer Review von Krypto-Code inkl. Random-Nutzung
- **Session Keys** über TLS 1.3 Key-Derivation (HKDF-SHA-256); temporäre Signing Keys via KMS-generierte Keys; kein Hard-Coding von Keys in Config-Files (auch nicht encrypted)
- **BYOK-Validation**: bei Import kundenseitig erzeugter Schlüssel Prüfung auf Entropie und BSI-TR-02102-Konformität; Ablehnung schwacher Schlüssel; Dokumentation im Kunden-Portal

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-08 Public-Key Certificate Issuance]]
- [[CRY-09 Secure Key Provisioning]]
- [[CRY-10 Secure Storage of Keys]]
- [[CRY-17 Cryptographic Key Lifecycle Management]]
- [[CRY-19 Secure Handling of Customer Managed Keys]]
