---
title: CRY-05 Encryption of Sensitive Data at Rest
project: "[[C5 Katalog 2026]]"
c5-id: CRY-05
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-05
---

# CRY-05 · Encryption of Sensitive Data at Rest

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-05 · **Unterkriterien:** 6 (5 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> „Nur vom Cloud-Dienstkunden zugänglich" bedeutet, dass Verschlüsselungsschlüssel ausschließlich in Kenntnis und Kontrolle des Eigentümers bleiben. Dies kann durch die Implementierung eines sicheren Key-Management-Systems adressiert werden. Bei Nutzung eines Key-Management-Systems müssen die Schlüssel vor Nutzung geschützt werden, die nicht ausdrücklich vom Eigentümer autorisiert wurde, und bleiben im Klartext unzugänglich.
>
> Dieses Kriterium gilt nicht für Daten, die aus funktionalen Gründen für die Erbringung des Cloud-Dienstes nicht verschlüsselt werden können.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen für die von ihnen verantworteten Teile des Cloud-Dienstes (z. B. VMs in IaaS) durch geeignete Kontrollen sicher, dass ihre Daten während der Speicherung entsprechend den jeweiligen Schutzbedarfen verschlüsselt sind.

## Unterkriterien

### CRY-05.01B — Basic

**Kriterium (EN):**

> The cloud service provider has established procedures and technical safeguards to encrypt cloud service customer data during storage (i.e. at rest).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren und technische Schutzmaßnahmen zur Verschlüsselung von Kundendaten während der Speicherung (d. h. **at rest**) etabliert.

---

### CRY-05.02B — Basic

**Kriterium (EN):**

> In general, the private keys (for asymmetric algorithms) or secret keys (for symmetric algorithms) used for encryption are accessible only by the cloud service customer in accordance with applicable legal and regulatory obligations and requirements. If due to the nature of the cloud service, the cloud service provider has to access the private or secret keys of the customer in order to provide the cloud service, this access is performed in accordance with IAM-07. Exceptions follow a specified procedure.

**Deutsche Übersetzung:**

Grundsätzlich sind die für die Verschlüsselung genutzten privaten Schlüssel (asymmetrisch) oder geheimen Schlüssel (symmetrisch) **nur vom Cloud-Dienstkunden** zugänglich, gemäß den anwendbaren rechtlichen und regulatorischen Anforderungen. Muss der Cloud-Diensteanbieter aufgrund der Art des Cloud-Dienstes auf die privaten oder geheimen Schlüssel des Kunden zugreifen, um den Dienst zu erbringen, erfolgt dieser Zugriff gemäß [[IAM-07 Access to Cloud Service Customer Data|IAM-07]]. Ausnahmen folgen einem festgelegten Verfahren.

---

### CRY-05.03B — Basic

**Kriterium (EN):**

> The procedures for the use of private keys, including any exceptions, are agreed with the cloud service customer.

**Deutsche Übersetzung:**

Die Verfahren zur Nutzung privater Schlüssel — einschließlich etwaiger Ausnahmen — werden mit dem Cloud-Dienstkunden vereinbart.

---

### CRY-05.04B — Basic

**Kriterium (EN):**

> If any changes of these procedures and technical safeguards may affect the confidentiality of the cloud service customer data, the cloud service provider communicates these changes to the cloud service customers.

**Deutsche Übersetzung:**

Wenn Änderungen an diesen Verfahren und technischen Schutzmaßnahmen die Vertraulichkeit der Kundendaten beeinträchtigen können, kommuniziert der Cloud-Diensteanbieter diese Änderungen an die Cloud-Dienstkunden.

---

### CRY-05.05B — Basic

**Kriterium (EN):**

> If the cloud service provider uses a master key, the cloud service provider regularly tests the suitability of the design and operating effectiveness of the respective controls.

**Deutsche Übersetzung:**

Wenn der Cloud-Diensteanbieter einen Master-Key nutzt, testet er regelmäßig die Eignung von Design und operativer Wirksamkeit der zugehörigen Kontrollen.

**Zusatzinformation (DE):**

Die Nutzung eines Master-Keys durch den Cloud-Diensteanbieter kann eine Ausnahme von der Anforderung darstellen, dass Schlüssel nur vom Cloud-Dienstkunden zugänglich sind.

---

### CRY-05.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider ensures that secure encryption mechanisms are in place to prevent the recovery of cloud service customer data when resources are reallocated or physical media are recovered.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt sicher, dass sichere Verschlüsselungsmechanismen vorhanden sind, um die Wiederherstellung von Kundendaten bei Ressourcen-Reallokation oder Wiederherstellung physischer Medien zu verhindern.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Verschlüsselung at rest** in mehreren Ebenen: Storage-Level (SSE-KMS in AWS S3, Azure Storage Service Encryption), Datenbank-Level (TDE für Postgres/MSSQL), Application-Level (Field-Level Encryption für besonders sensible Felder wie „HIV-Status")
- **Bring Your Own Key (BYOK)**: jeder Krankenhaus-Kunde bringt eigenen KMS-Schlüssel mit (via Cloud-Provider-KMS wie AWS KMS, Azure Key Vault, GCP KMS); Cloud-Anbieter kann Daten ohne Kunden-Schlüssel nicht entschlüsseln; wichtig für § 203 StGB
- **Hold Your Own Key (HYOK)**: Krankenhaus verwaltet Keys in eigenem HSM (on-prem); Cloud-Anbieter ruft Keys nur zur Nutzung ab, kann sie aber nicht exportieren; Trennung von Berechnungen und Schlüsselverwaltung
- **Crypto-Shredding** bei Kunden-Kündigung: statt Daten-Löschung wird Schlüssel gelöscht — sofortige Unlesbarkeit aller Kundendaten, unabhängig davon wo Kopien liegen (Backups, Caches, Replikate)

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-06 Secure Key Generation]]
- [[CRY-10 Secure Storage of Keys]]
- [[CRY-19 Secure Handling of Customer Managed Keys]]
- [[IAM-07 Access to Cloud Service Customer Data]]
- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
