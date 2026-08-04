---
title: CRY-13 Handling of Compromised Keys
project: "[[C5 Katalog 2026]]"
c5-id: CRY-13
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-13
---

# CRY-13 · Handling of Compromised Keys

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-13 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### CRY-13.01B — Basic

**Kriterium (EN):**

> The cloud service provider manages the use of compromised cryptographic keys to ensure they are only used in controlled circumstances and solely for decryption or verification (in case of signature keys), while complying with legal and regulatory requirements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter verwaltet die Nutzung kompromittierter kryptographischer Schlüssel so, dass diese nur unter kontrollierten Umständen und ausschließlich zur **Entschlüsselung oder Verifikation** (bei Signaturschlüsseln) genutzt werden — unter Einhaltung rechtlicher und regulatorischer Anforderungen.

---

### CRY-13.02B — Basic

**Kriterium (EN):**

> The cloud service provider notifies affected cloud service customers without undue delay that their keys have been compromised and will no longer be used for encryption or signing.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter benachrichtigt betroffene Cloud-Dienstkunden unverzüglich, dass ihre Schlüssel kompromittiert wurden und nicht mehr für Verschlüsselung oder Signieren genutzt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Compromised-Key-Playbook**: bei Verdacht sofortige Isolation (Suspend im KMS, kein Encrypt/Sign mehr); Investigation; falls bestätigt kompromittiert → Deaktivierung; Re-Encryption der betroffenen Daten mit neuem Key
- **Kunden-Benachrichtigung binnen 24 h** bei Kompromittierung von Kunden-Keys: Ursache, Umfang (welche Daten betroffen?), Mitigation (welche Aktionen wurden ergriffen?), Empfehlungen für den Kunden (z. B. Passwort-Reset für alle Nutzer)
- **Decrypt-Only-Modus** für alte Signaturen: Signaturen mit kompromittierten Keys sind weiterhin verifizierbar, um Chain-of-Custody zu wahren (forensische Beweise), aber keine neuen Signaturen mehr erzeugt
- **Recovery-Prozess**: nach Kompromittierung eines Master-Keys BCP aktivieren; alle Data-Encryption-Keys unter dem Master neu ableiten mit neuem Master; kryptographisch validierter Nachweis dokumentiert

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-12 Cryptographic Key Transition Management]]
- [[CRY-14 Secure Deactivation of Cryptographic Keys]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[SIM-04 Duty of the Cloud Service Provider to Report Security Incidents|SIM-04]] *(noch nicht angelegt)*
