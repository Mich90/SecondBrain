---
title: CRY-08 Public-Key Certificate Issuance
project: "[[C5 Katalog 2026]]"
c5-id: CRY-08
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-08
---

# CRY-08 · Public-Key Certificate Issuance

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-08 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-08.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented and implemented procedures to securely issue and obtain public-key certificates, ensuring the integrity and authenticity of cryptographic keys. These procedures include:
>
> 1. Verification of identity before issuing public-key certificates that are issued by or on behalf of the cloud service provider for its own system components or personnel to ensure they are granted to legitimate entities;
> 2. Secure methods for issuing certificates that are issued by or on behalf of the cloud service provider for its own system components or personnel to prevent unauthorised access; and
> 3. Procedures for obtaining public-key certificates from trusted Certificate Authorities to ensure the authenticity of the certificates used by the cloud service provider.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren zur sicheren Ausstellung und zum Bezug von **Public-Key-Zertifikaten** dokumentiert und implementiert, um Integrität und Authentizität kryptographischer Schlüssel sicherzustellen. Diese umfassen:

1. Identitätsverifikation vor Ausstellung von Public-Key-Zertifikaten, die vom Cloud-Diensteanbieter oder in seinem Auftrag für eigene Systemkomponenten oder Personal ausgestellt werden;
2. Sichere Methoden zur Ausstellung solcher Zertifikate zur Verhinderung unautorisierten Zugriffs;
3. Verfahren zum Bezug von Public-Key-Zertifikaten von vertrauenswürdigen Certificate Authorities zur Sicherstellung der Authentizität der vom Cloud-Diensteanbieter genutzten Zertifikate.

**Zusatzinformation (DE):**

Die ersten beiden Punkte gelten für Zertifikate, die vom Cloud-Diensteanbieter oder in seinem Auftrag für eigene Systemkomponenten oder Personal ausgestellt werden. Bietet der Cloud-Diensteanbieter Certificate-Authority-Dienste für Kunden an, gilt das Shared-Responsibility-Prinzip.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Interne PKI** für Service-to-Service-mTLS: Root-CA offline (HSM, air-gapped), Intermediate-CAs online, Service-Zertifikate 90 Tage via SPIFFE/SPIRE oder cert-manager (K8s); Auto-Renewal
- **Externe Zertifikate** von etablierten CAs (Let's Encrypt für öffentliche Endpoints, DigiCert für EV-Zertifikate); Certificate Transparency Monitoring gegen Missbrauch; ACME-Automation
- **Personal-Zertifikate** (S/MIME für Signieren + Verschlüsseln von E-Mails mit sensitiven Inhalten): Ausstellung nur nach persönlicher Identifikation (Video-Ident oder Vor-Ort); Smartcard-Speicherung; Rechte-Widerruf bei Off-Boarding
- **CA-Governance**: dokumentiertes Certificate Practice Statement (CPS), regelmäßige externe Audits (WebTrust, ETSI); Trust-Store-Management (welche Root-CAs vertrauen wir?); jährliches Review

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-04 Protection of Data for Transmission (Transport Protection)]]
- [[CRY-06 Secure Key Generation]]
- [[CRY-09 Secure Key Provisioning]]
- [[IAM-08 Authentication Mechanisms]]
