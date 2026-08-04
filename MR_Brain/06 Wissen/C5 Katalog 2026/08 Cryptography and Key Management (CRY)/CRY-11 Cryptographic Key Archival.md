---
title: CRY-11 Cryptographic Key Archival
project: "[[C5 Katalog 2026]]"
c5-id: CRY-11
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-11
---

# CRY-11 · Cryptographic Key Archival

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-11 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-11.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented and implemented procedures and technical safeguards for the secure archiving of cryptographic keys. These include:
>
> 1. Storage of archived keys in a repository to prevent unauthorised access;
> 2. Restriction of access to archived keys to authorised personnel based on the principle of least privilege;
> 3. Support of later recovery of information through archived keys;
> 4. Retention of archived keys only for as long as needed and secure destruction afterwards; and
> 5. Logging of all activities related to the storage and recovery of archived keys.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren und technische Schutzmaßnahmen zur sicheren Archivierung kryptographischer Schlüssel dokumentiert und implementiert. Diese umfassen:

1. Speicherung archivierter Schlüssel in einem Repository zur Verhinderung unautorisierten Zugriffs;
2. Beschränkung des Zugriffs auf archivierte Schlüssel auf autorisiertes Personal nach dem **Least-Privilege-Prinzip**;
3. Unterstützung späterer Wiederherstellung von Informationen über archivierte Schlüssel;
4. Aufbewahrung archivierter Schlüssel nur so lange wie erforderlich, danach sichere Vernichtung;
5. Protokollierung aller mit Speicherung und Wiederherstellung archivierter Schlüssel verbundenen Aktivitäten.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Archive-KMS** separat vom operativen KMS: alte Keys nach Rotation im Archiv, nur für Entschlüsselung historischer Daten nutzbar; im HSM gesichert; besonderer Access-Prozess (4-Augen + Compliance-Approval)
- **Retention** an gesetzliche Aufbewahrungsfristen gebunden: Keys zur Entschlüsselung von Patientendaten mind. 10 Jahre (§ 630f BGB) + 5 Jahre Puffer; Aufbewahrungspflichten mit dem Datenschutz-Beauftragten abgestimmt
- **Krypto-Löschung** am Ende der Retention: Vernichtung des Archive-Keys macht historische Daten unlesbar (Crypto-Shredding); dokumentiert im Vernichtungsprotokoll; für DSGVO-Auskunftsersuchen relevant
- **Recovery-Prozess dokumentiert**: welche Fälle rechtfertigen Nutzung eines archivierten Keys (behördliche Anordnung, Kundenanfrage nach historischen Daten); mit Approval-Workflow und vollständigem Audit-Trail

## Verwandte Kriterien

- [[CRY-10 Secure Storage of Keys]]
- [[CRY-12 Cryptographic Key Transition Management]]
- [[CRY-14 Secure Deactivation of Cryptographic Keys]]
- [[CRY-17 Cryptographic Key Lifecycle Management]]
- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
