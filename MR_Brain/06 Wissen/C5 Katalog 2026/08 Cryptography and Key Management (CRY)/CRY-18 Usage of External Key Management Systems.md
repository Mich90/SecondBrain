---
title: CRY-18 Usage of External Key Management Systems
project: "[[C5 Katalog 2026]]"
c5-id: CRY-18
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-18
---

# CRY-18 · Usage of External Key Management Systems

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-18 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-18.01B — Basic

**Kriterium (EN):**

> In the case that external key management systems (KMS) are integrated into the service, the cloud service provider ensures that the procedures and technical safeguards for the usage of external key management systems (KMS) are established. The following aspects are taken into account:
>
> 1. The external KMS have recognised security certifications that reflect the state of the art to comply with legal, regulatory and contractual requirements;
> 2. The integration of the external KMS into the cloud infrastructure is secure to ensure the confidentiality, integrity, and availability of the keys;
> 3. Strict access control are implemented to ensure that only authorised users and systems can access the keys (cf. IAM-01);
> 4. Procedures for the regular rotation and renewal of keys are defined and implemented to ensure the security of the keys (cf. CRY-07);
> 5. All accesses and operations on the external KMS are logged and monitored to detect and respond to suspicious activities; and
> 6. The cloud service provider ensures that the external KMS is regularly checked for vulnerabilities (cf. OPS-25) and updated (cf. OPS-28) to meet current threats and technological developments.

**Deutsche Übersetzung:**

Wenn externe Key-Management-Systeme (KMS) in den Dienst integriert werden, stellt der Cloud-Diensteanbieter sicher, dass Verfahren und technische Schutzmaßnahmen für die Nutzung etabliert sind. Folgende Aspekte werden berücksichtigt:

1. Die externen KMS verfügen über anerkannte Sicherheitszertifizierungen, die dem Stand der Technik entsprechen, um rechtliche, regulatorische und vertragliche Anforderungen einzuhalten;
2. Die Integration des externen KMS in die Cloud-Infrastruktur ist sicher gestaltet, um Vertraulichkeit, Integrität und Verfügbarkeit der Schlüssel sicherzustellen;
3. Strikte Zugangskontrollen sind implementiert (vgl. [[IAM-01 Policy for Identities and Access Rights|IAM-01]]);
4. Verfahren für regelmäßige Rotation und Erneuerung der Schlüssel sind definiert und implementiert (vgl. [[CRY-07 Rotation of Cryptographic Keys|CRY-07]]);
5. Alle Zugriffe und Operationen auf dem externen KMS werden geloggt und überwacht;
6. Der Cloud-Diensteanbieter stellt sicher, dass das externe KMS regelmäßig auf Schwachstellen geprüft (vgl. [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans|OPS-25]]) und aktualisiert wird (vgl. [[OPS-28 Managing Vulnerabilities - Patch Management Implementation|OPS-28]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Externe KMS-Auswahl**: nur FIPS 140-2 Level 3 oder Common Criteria EAL 4+ zertifizierte Systeme (AWS CloudHSM, Azure Managed HSM, Thales Luna, Utimaco); ETSI/BSI-Zertifizierung für DE-Betrieb bevorzugt
- **Integration via KMIP oder PKCS#11**: standardisierte Interfaces, keine proprietären Protokolle; mTLS zwischen App und externem KMS; alle Verbindungen im dedizierten Netzwerksegment
- **Access-Governance**: IAM-Policy für externes KMS analog zu internen Systemen; separate Approval-Chain für KMS-Admin-Rechte; Rotation der KMS-Zugangs-Credentials in Vault; keine Personal-Accounts für Automation
- **Vendor-Management**: jährliche Bewertung des externen KMS-Anbieters (Zertifizierungen aktuell? Sicherheits-Incidents? Support-Qualität?); Exit-Strategie dokumentiert (wie Migration zu Alternative im Notfall?)

## Verwandte Kriterien

- [[CRY-06 Secure Key Generation]]
- [[CRY-07 Rotation of Cryptographic Keys]]
- [[CRY-10 Secure Storage of Keys]]
- [[CRY-19 Secure Handling of Customer Managed Keys]]
- [[IAM-01 Policy for Identities and Access Rights]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[SSO-01 Policies and Procedures for Controlling and Monitoring Third-Parties|SSO-01]] *(noch nicht angelegt)*
