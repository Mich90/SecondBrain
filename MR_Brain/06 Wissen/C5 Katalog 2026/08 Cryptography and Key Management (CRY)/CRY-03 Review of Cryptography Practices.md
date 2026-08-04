---
title: CRY-03 Review of Cryptography Practices
project: "[[C5 Katalog 2026]]"
c5-id: CRY-03
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-03
---

# CRY-03 · Review of Cryptography Practices

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-03 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### CRY-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider ensures that encryption, authentication and key management practices are regularly audited in accordance with COM-02 and COM-03 to identify and address potential vulnerabilities. At a minimum, reviews are performed annually and immediately following security incidents involving cryptographic components.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt sicher, dass Verschlüsselungs-, Authentifizierungs- und Key-Management-Praktiken regelmäßig gemäß [[COM-02 Policy for Planning and Conducting Audits|COM-02]] *(noch nicht angelegt)* und [[COM-03 Internal Audits|COM-03]] *(noch nicht angelegt)* geprüft werden, um potenzielle Schwachstellen zu identifizieren und zu adressieren. Reviews erfolgen **mindestens jährlich** und unmittelbar nach Sicherheitsvorfällen mit kryptographischen Komponenten.

---

### CRY-03.02B — Basic

**Kriterium (EN):**

> As part of the reviews, the cloud service provider determines if the cryptographic practices align with the state of the art and updates them as needed.

**Deutsche Übersetzung:**

Im Rahmen der Reviews prüft der Cloud-Diensteanbieter, ob die kryptographischen Praktiken dem Stand der Technik entsprechen, und aktualisiert diese bei Bedarf.

**Zusatzinformation (DE):**

Der Cloud-Diensteanbieter wendet den Crypto-Change-Management-Prozess (vgl. [[CRY-02 Cryptographic Change Management|CRY-02]]) an, wenn kryptographische Praktiken auf den Stand der Technik gebracht werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Jährliches Crypto-Assessment** durch externen Krypto-Experten oder spezialisierten Prüfer: Prüfung gegen BSI TR-02102 (aktuellste Version), Ausnutzbarkeit bekannter Angriffe, Konformität mit PQC-Roadmap
- **Event-Driven Reviews**: nach jedem Vorfall mit Krypto-Bezug (kompromittierter Key, verwundbares Cipher-Suite in einem CVE) sofortige außerplanmäßige Prüfung; auch bei neuen wissenschaftlichen Publikationen zu Angriffen (z. B. Kyber-Angriffe)
- **Findings-Backlog**: alle identifizierten Abweichungen als Tickets mit Owner, Deadline, Risiko-Score; monatliches Reporting an CISO; Krankenhaus-Kunden erhalten Zusammenfassung im jährlichen Trust-Report
- **Automated Cipher-Scanning**: kontinuierliche Prüfung aller exponierten TLS-Endpoints mit Tools wie SSL Labs, testssl.sh, nmap ssl-enum-ciphers; wöchentliches Reporting; automatische Tickets bei Abweichungen

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-02 Cryptographic Change Management]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[COM-02 Policy for Planning and Conducting Audits|COM-02]] *(noch nicht angelegt)*
- [[COM-03 Internal Audits|COM-03]] *(noch nicht angelegt)*
