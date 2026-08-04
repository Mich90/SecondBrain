---
title: PI-03 Secure Deletion of Data
project: "[[C5 Katalog 2026]]"
c5-id: PI-03
c5-area: PI
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pi
aliases:
  - PI-03
---

# PI-03 · Secure Deletion of Data

> [!info] Kontext
> **Bereich:** Portability and Interoperability (PI) · **Kriterium-ID:** PI-03 · **Unterkriterien:** 3 (3 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass der rechtliche und regulatorische Rahmen (z. B. gesetzliche Anforderungen an Speicherung und Löschung) identifiziert wird und die Löschung ihrer Daten entsprechend initiiert wird.

## Unterkriterien

### PI-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider's procedures for deleting cloud service customer data, cloud service derived data and account data upon termination of the contractual relationship ensure compliance with the contractual agreements (cf. PI-02). Exceptions are only made if they are required by a valid court order or needed for the fulfilment of known future financial and legal obligations.

**Deutsche Übersetzung:**

Die Verfahren des Cloud-Diensteanbieters zur Löschung von Kundendaten, abgeleiteten Daten und Kontodaten nach Vertragsende stellen die Einhaltung der vertraglichen Vereinbarungen sicher (vgl. [[PI-02 Contractual Agreements for the Provision of Data|PI-02]]). Ausnahmen werden nur gemacht, wenn diese durch eine gültige gerichtliche Anordnung erforderlich sind oder für die Erfüllung bekannter zukünftiger finanzieller und rechtlicher Verpflichtungen benötigt werden.

**Zusatzinformation (DE):**

Geeignete Methoden zur Datenlöschung sind z. B. **mehrfaches Überschreiben** oder **Löschung des Verschlüsselungsschlüssels** (Crypto-Shredding).

---

### PI-03.02B — Basic

**Kriterium (EN):**

> The deletion procedures prevent recovery by forensic means that comply with the established rules of technology.

**Deutsche Übersetzung:**

Die Löschverfahren verhindern eine Wiederherstellung durch forensische Mittel, die den anerkannten Regeln der Technik entsprechen.

---

### PI-03.03B — Basic

**Kriterium (EN):**

> The deletion of the cloud service customer data, cloud service derived data and account data is documented in a manner that enables the cloud service customer to obtain proof of the deletion of its data.

**Deutsche Übersetzung:**

Die Löschung der Kundendaten, abgeleiteten Daten und Kontodaten wird so dokumentiert, dass der Cloud-Dienstkunde einen Nachweis über die Löschung seiner Daten erhalten kann.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Crypto-Shredding als Primär-Methode**: bei BYOK/kundenspezifischen Keys wird bei Kündigung der Master-Key vernichtet — sofortige Unlesbarkeit aller Kundendaten unabhängig von Speicherorten (Backups, Replikate, Caches); technisch sauber und schnell
- **Physisches Wiping** für dedizierte Storage-Medien nach NIST SP 800-88 (Purge- oder Destroy-Level); DoD 5220.22-M mehrfach überschreibend; forensisch unwiederherstellbar
- **Deletion Certificate**: nach Löschung erhält Kunde ein signiertes Löschzertifikat mit Datum, Umfang (welche Datenkategorien), Methode (Crypto-Shredding / Overwrite), Verantwortlichem und kryptographisch verifiziertem Nachweis (Hash-Chain, digitale Signatur)
- **Retention-Ausnahmen dokumentiert**: gesetzliche Aufbewahrungspflichten (§ 630f BGB — 10 Jahre Patientenakten; § 147 AO — 10 Jahre Rechnungen; § 22 BDSG); nur solche dokumentierten Ausnahmen sind zulässig, alle anderen Kopien gelöscht

## Verwandte Kriterien

- [[PI-01 Safety of Input and Output Interfaces]]
- [[PI-02 Contractual Agreements for the Provision of Data]]
- [[AM-11 Handling of Assets]]
- [[CRY-14 Secure Deactivation of Cryptographic Keys]]
- [[CRY-19 Secure Handling of Customer Managed Keys]]
- [[GC-05 Information on how investigation requests from government agencies are handled|GC-05 · Behördliche Ermittlungsersuchen]]
