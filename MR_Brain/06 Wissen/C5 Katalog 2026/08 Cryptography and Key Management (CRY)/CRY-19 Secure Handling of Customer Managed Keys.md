---
title: CRY-19 Secure Handling of Customer Managed Keys
project: "[[C5 Katalog 2026]]"
c5-id: CRY-19
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-19
---

# CRY-19 · Secure Handling of Customer Managed Keys

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-19 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-19.01B — Basic

**Kriterium (EN):**

> The cloud service provider implements procedures and technical safeguards to ensure the secure handling of cryptographic keys managed by cloud service customers. In these procedures, the following aspects are considered:
>
> 1. Secure integration of customer-generated keys ('Bring-Your-Own-Key'; BYOK) into the cloud environment;
> 2. Logging of all activities related to customer-managed keys; and
> 3. Definition of access control mechanisms to enable that only authorised users can gain access to customer-managed keys.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter implementiert Verfahren und technische Schutzmaßnahmen zur sicheren Handhabung kryptographischer Schlüssel, die von Cloud-Dienstkunden verwaltet werden. In diesen Verfahren werden folgende Aspekte berücksichtigt:

1. Sichere Integration von kundenerzeugten Schlüsseln (**Bring-Your-Own-Key**, BYOK) in die Cloud-Umgebung;
2. Protokollierung aller Aktivitäten im Zusammenhang mit kunden-verwalteten Schlüsseln;
3. Definition von Access-Control-Mechanismen, die sicherstellen, dass nur autorisierte Nutzer Zugriff auf kunden-verwaltete Schlüssel erhalten.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **BYOK-Import-Verfahren**: Kunde erzeugt Master-Key in eigenem HSM/KMS, exportiert ihn wrapped (RSA-OAEP mit Anbieter-Wrap-Key); Anbieter importiert in eigenes HSM; nach Import ist Klartext-Key nur vom Kunden reproduzierbar
- **HYOK (Hold-Your-Own-Key)** für höchste Anforderungen: Kunde behält Key komplett; Anbieter ruft Key via Enclave-Attestation ab, nutzt ihn nur im TEE für konkrete Operationen; kein persistenter Zugriff möglich; wichtige Option für KRITIS-Krankenhäuser
- **Kunden-KMS-Aktivitäts-Log**: jede Nutzung eines Kunden-Keys geloggt (Wer? Wann? Welcher Zweck? Welche Systemkomponente?); Kunde kann eigene Logs via API/Portal abrufen; Alerting bei Anomalien
- **Access-Control differenziert**: Anbieter-Personal hat KEINEN direkten Klartext-Zugriff auf Kunden-Keys; automatisierte Systeme haben Nutzungsrechte (Encrypt/Decrypt) über KMS-API mit IAM-Policies; Kunde kann Zugriff jederzeit widerrufen (Kill Switch)

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-05 Encryption of Sensitive Data at Rest]]
- [[CRY-06 Secure Key Generation]]
- [[CRY-10 Secure Storage of Keys]]
- [[CRY-18 Usage of External Key Management Systems]]
- [[IAM-07 Access to Cloud Service Customer Data]]
- [[GC-06 Information on how third-party requests to access data are handled|GC-06 · Zugriffe Dritter]]
