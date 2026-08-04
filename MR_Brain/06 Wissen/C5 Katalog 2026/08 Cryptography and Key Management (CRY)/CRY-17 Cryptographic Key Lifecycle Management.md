---
title: CRY-17 Cryptographic Key Lifecycle Management
project: "[[C5 Katalog 2026]]"
c5-id: CRY-17
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-17
---

# CRY-17 · Cryptographic Key Lifecycle Management

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-17 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### CRY-17.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented and implemented procedures and technical safeguards to monitor and document the lifecycle of cryptographic keys and materials.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren und technische Schutzmaßnahmen zur Überwachung und Dokumentation des Lebenszyklus kryptographischer Schlüssel und Materialien dokumentiert und implementiert.

---

### CRY-17.02B — Basic

**Kriterium (EN):**

> For all keys except for ephemeral keys, the aforementioned safeguards ensure detailed records of each key from creation to destruction, including any status changes.

**Deutsche Übersetzung:**

Für alle Schlüssel — außer **Ephemeral Keys** — stellen die genannten Schutzmaßnahmen detaillierte Aufzeichnungen jedes Schlüssels von Erzeugung bis Vernichtung sicher, einschließlich aller Status-Änderungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zentrales Key-Inventory** im KMS: pro Key ID, Typ, Algorithmus, Länge, Owner, Zweck, Erzeugungsdatum, Rotation-Datum, Ablaufdatum, aktueller Status; über Anlagen und Systeme hinweg konsolidiert
- **Lifecycle-Events geloggt**: Create, Activate, Use (aggregiert bei hohem Volumen), Rotate, Suspend, Reactivate, Deactivate, Archive, Destroy — alle mit Timestamp, User, Reason, System-Context; retention 10 Jahre
- **Dashboard für Krypto-Compliance**: Anzahl Keys pro Zustand, Anzahl bald ablaufender Keys (Rotation-Fällig), Compliance-Rate der Rotation-SLAs, Anomalien (unerwartete Deletions oder Reactivations); wöchentlicher Report an CISO
- **Ephemeral-Ausnahme klar definiert**: Session-Keys aus TLS-Handshakes werden nicht individuell tracked (technisch nicht sinnvoll), aber die Nutzung der Kryptoschicht (welche Cipher-Suite, welche Frequenz) wird aggregiert protokolliert

## Verwandte Kriterien

- [[CRY-06 Secure Key Generation]]
- [[CRY-07 Rotation of Cryptographic Keys]]
- [[CRY-09 Secure Key Provisioning]]
- [[CRY-11 Cryptographic Key Archival]]
- [[CRY-12 Cryptographic Key Transition Management]]
- [[CRY-14 Secure Deactivation of Cryptographic Keys]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
