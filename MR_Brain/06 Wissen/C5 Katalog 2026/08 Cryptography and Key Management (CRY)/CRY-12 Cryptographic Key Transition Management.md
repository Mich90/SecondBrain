---
title: CRY-12 Cryptographic Key Transition Management
project: "[[C5 Katalog 2026]]"
c5-id: CRY-12
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-12
---

# CRY-12 · Cryptographic Key Transition Management

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-12 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-12.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented and implemented procedures to oversee the transition of cryptographic keys, including their movement into and out of suspension. These procedures ensure that all key transitions are thoroughly monitored, reviewed, and approved to maintain security and comply with applicable laws and regulations.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren zur Überwachung der Übergänge kryptographischer Schlüssel dokumentiert und implementiert — einschließlich deren Übergang in und aus Suspendierung. Diese stellen sicher, dass alle Schlüssel-Übergänge umfassend überwacht, geprüft und genehmigt werden, um Sicherheit zu wahren und anwendbare Gesetze und Vorschriften einzuhalten.

**Zusatzinformation (DE):**

**Suspendierung** eines kryptographischen Schlüssels bezeichnet einen temporären Zustand, in dem der Schlüssel deaktiviert ist und nicht für kryptographische Operationen genutzt werden kann, jedoch später reaktiviert werden kann. **Deaktivierung** eines kryptographischen Schlüssels stellt hingegen einen permanenten Zustand dar, in dem der Schlüssel aus der Nutzung entfernt und nicht reaktiviert werden kann.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Key-States** klar definiert: Preactive → Active → Suspended → Deactivated → Destroyed; Übergänge nur mit Approval (Suspend bei Verdacht auf Kompromittierung, Deactivate nach Krypto-Aging, Destroy nach Retention-Ablauf)
- **Suspend-Prozess**: bei Verdacht auf Key-Kompromittierung sofortiges Suspend (kein Encrypt mehr möglich, Decrypt weiter für Investigation); Alarm an CISO + Kunden-Benachrichtigung (falls Kunden-Key); Untersuchung binnen 24 h
- **Approval-Chain** für State-Transitions: Suspend → Ops-Manager (schnell), Deactivate → Security + Compliance (nach Prüfung), Destroy → CISO + Legal (endgültig); alle Transitions im KMS-Audit-Log
- **Reaktivierung aus Suspension** nur nach dokumentierter Investigation mit Ergebnis „nicht kompromittiert"; ansonsten Übergang zu Deactivate + Key-Rotation für Neu-Verschlüsselung der betroffenen Daten

## Verwandte Kriterien

- [[CRY-07 Rotation of Cryptographic Keys]]
- [[CRY-11 Cryptographic Key Archival]]
- [[CRY-13 Handling of Compromised Keys]]
- [[CRY-14 Secure Deactivation of Cryptographic Keys]]
- [[CRY-17 Cryptographic Key Lifecycle Management]]
