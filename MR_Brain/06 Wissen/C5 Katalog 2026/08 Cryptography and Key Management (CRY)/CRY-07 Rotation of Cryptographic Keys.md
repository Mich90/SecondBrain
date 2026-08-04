---
title: CRY-07 Rotation of Cryptographic Keys
project: "[[C5 Katalog 2026]]"
c5-id: CRY-07
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-07
---

# CRY-07 · Rotation of Cryptographic Keys

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-07 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-07.01B — Basic

**Kriterium (EN):**

> The cloud service provider has established a schedule for rotating cryptographic keys that aligns with the requirements for cryptographic key rotation established in CRY-01. If, based on the results of a risk assessment, the cloud service provider does not perform key rotation, this decision is transparently communicated to the customer.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat einen Zeitplan für die Rotation kryptographischer Schlüssel etabliert, der den in [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] festgelegten Anforderungen entspricht. Wenn der Cloud-Diensteanbieter aufgrund einer Risikobewertung keine Schlüsselrotation durchführt, wird diese Entscheidung dem Kunden transparent kommuniziert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Rotations-Schedule differenziert**: Master-Keys jährlich, Data-Encryption-Keys quartalsweise, Session-Keys pro Session, TLS-Zertifikate 90-365 Tage; Rotation-Kalender im KMS als Grundlage
- **Automatische Rotation** via Cloud-KMS: AWS KMS unterstützt Auto-Rotation für symmetrische Keys; Rotation transparent für Anwendungen (alter Key bleibt für Entschlüsselung aktiv, neuer für Verschlüsselung)
- **Anwendungs-Secrets** via HashiCorp Vault oder AWS Secrets Manager mit Rotation-Lambdas: DB-Passwörter, API-Keys, Service-Account-Credentials rotieren automatisch alle 30-90 Tage
- **Ausnahmen-Dokumentation**: manche Keys (z. B. Root-CA-Keys) nicht rotierbar aus operativen Gründen; Risiko-Assessment dokumentiert kompensierende Maßnahmen (HSM-Schutz, minimale Nutzung, Monitoring); Kunden im Trust-Report informiert

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-08 Public-Key Certificate Issuance]]
- [[CRY-12 Cryptographic Key Transition Management]]
- [[CRY-17 Cryptographic Key Lifecycle Management]]
- [[OIS-07 Risk Management Policy]]
