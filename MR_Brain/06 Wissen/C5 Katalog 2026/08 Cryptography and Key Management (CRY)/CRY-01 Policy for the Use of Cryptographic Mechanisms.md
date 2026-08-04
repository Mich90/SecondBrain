---
title: CRY-01 Policy for the Use of Cryptographic Mechanisms
project: "[[C5 Katalog 2026]]"
c5-id: CRY-01
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-01
---

# CRY-01 · Policy for the Use of Cryptographic Mechanisms

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-01 · **Unterkriterien:** 5 (2 Basic · 3 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Folgende technische Richtlinien (in der jeweils gültigen Fassung) geben Empfehlungen und Schlüssellängen für dem Stand der Technik entsprechende kryptographische Mechanismen:
> 1. **BSI TR-02102-1** Cryptographic Mechanisms: Recommendations and Key Lengths;
> 2. **BSI TR-02102-2** — Use of Transport Layer Security (TLS);
> 3. **BSI TR-02102-3** — Use of IPSec und IKEv2;
> 4. **BSI TR-02102-4** — Use of Secure Shell (SSH);
> 5. Alternativ: **NIST FIPS 140** und **NIST SP 800**-Serie.

## Unterkriterien

### CRY-01.01B — Basic

**Kriterium (EN):**

> Policies and procedures with procedures and technical safeguards for cryptographic mechanisms are documented, communicated and provided according to SP-01, in which the following aspects are described:
>
> 1. Usage of encryption procedures and secure network protocols that correspond to the state of the art;
> 2. Usage of hash functions and salt values, that both correspond to the state of the art;
> 3. Usage of signature schemes that correspond to the state of the art;
> 4. Risk-based provisions for the use of encryption and authentication which are aligned with the information classification schemes (cf. AM-09) and consider the communication channel, type, strength and quality of the encryption;
> 5. Requirements for the secure generation, storage, archiving, retrieval, distribution, withdrawal, backup, restoration and deletion of the keys;
> 6. Requirements for the rotation of cryptographic keys that follow industry best practices and consider the potential risk of information exposure;
> 7. Consideration of relevant legal and regulatory obligations and requirements;
> 8. Documentation of a change management process for managing cryptographic, encryption, authentication and key management technology changes; and
> 9. Consideration of crypto-agility to allow for efficient substitution of implemented cryptographic mechanisms during their intended lifetimes.

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit Verfahren und technischen Schutzmaßnahmen für kryptographische Mechanismen sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und beschreiben:

1. Nutzung von Verschlüsselungsverfahren und sicheren Netzwerk-Protokollen entsprechend dem Stand der Technik;
2. Nutzung von Hash-Funktionen und Salt-Werten entsprechend dem Stand der Technik;
3. Nutzung von Signaturverfahren entsprechend dem Stand der Technik;
4. Risikobasierte Vorgaben zur Nutzung von Verschlüsselung und Authentifizierung, abgestimmt auf die Informations-Klassifizierungsschemata (vgl. [[AM-09 Asset Classification and Labelling|AM-09]]) und unter Berücksichtigung von Kommunikationskanal, Typ, Stärke und Qualität der Verschlüsselung;
5. Anforderungen an sichere Erzeugung, Speicherung, Archivierung, Abruf, Verteilung, Widerruf, Backup, Wiederherstellung und Löschung von Schlüsseln;
6. Anforderungen an die Rotation kryptographischer Schlüssel entsprechend Industriebest-Practices unter Berücksichtigung des Risikos einer Informationsoffenlegung;
7. Berücksichtigung relevanter rechtlicher und regulatorischer Anforderungen;
8. Dokumentation eines Change-Management-Prozesses für kryptographische, Verschlüsselungs-, Authentifizierungs- und Key-Management-Technologie-Änderungen;
9. Berücksichtigung von **Crypto-Agility**, um während der Lebensdauer implementierter kryptographischer Mechanismen einen effizienten Austausch zu ermöglichen.

---

### CRY-01.02B — Basic

**Kriterium (EN):**

> Reviews of policies and procedures regarding cryptographic mechanisms include checks that the policies and procedures are up to date and comply with the BSI technical guideline (BSI TR-02102) or suitable NIST guidelines (e.g. FIPS 140 series and SP 800 series). Deviations are analysed and documented in a risk assessment for cryptographic mechanisms valid at the given time. Remediation measures are to be taken based on risk.

**Deutsche Übersetzung:**

Reviews der Richtlinien und Verfahren für kryptographische Mechanismen umfassen Prüfungen auf Aktualität und Übereinstimmung mit der **BSI TR-02102** oder geeigneten **NIST-Guidelines** (z. B. FIPS 140-Serie und SP 800-Serie). Abweichungen werden in einer zum jeweiligen Zeitpunkt gültigen Risikobewertung für kryptographische Mechanismen analysiert und dokumentiert. Behebungsmaßnahmen werden risikobasiert ergriffen.

---

### CRY-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider has defined and documented a Post-Quantum-Cryptography (PQC) strategy according to SP-01 to address threats posed by adversaries in possession of a quantum computer.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat eine **Post-Quantum-Cryptography (PQC)-Strategie** gemäß SP-01 definiert und dokumentiert, um Bedrohungen durch Angreifer mit Quantencomputer-Zugriff zu adressieren.

---

### CRY-01.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider's PQC strategy is aligned with cryptography policies and procedures and includes the following aspects:
>
> 1. Maintenance of an inventory of cryptographic mechanisms in use, including priority levels to each inventory item based on the impact and probabilities of the risks posed by quantum computing attacks and the effort to remediate such risks;
> 2. Staying informed about encryption measures that are deemed state of the art and secure against adversaries who possess a quantum computer;
> 3. Usage of hybrid cryptography models to ensure security for both quantum and non-quantum computing based attacks; and
> 4. Definition of trigger events, required resources, transition plans and success criteria for implementation of post-quantum cryptographic mechanisms.

**Deutsche Übersetzung:**

Die PQC-Strategie ist mit den Kryptographie-Richtlinien abgestimmt und umfasst:

1. Führung eines Inventars der genutzten kryptographischen Mechanismen mit Prioritätsstufen basierend auf Auswirkung und Wahrscheinlichkeit von Quanten-Angriffen sowie dem Behebungsaufwand;
2. Aktuelles Wissen zu Verschlüsselungsverfahren, die dem Stand der Technik entsprechen und gegen Angreifer mit Quantencomputer sicher sind;
3. Nutzung hybrider Kryptographie-Modelle, die Sicherheit sowohl gegen Quanten- als auch klassische Angriffe bieten;
4. Definition von Trigger-Ereignissen, erforderlichen Ressourcen, Migrationsplänen und Erfolgskriterien für die Umsetzung post-quantum-kryptographischer Mechanismen.

---

### CRY-01.03AC — Additional (Complementing)

**Kriterium (EN):**

> The PQC strategy, including the inventory and risk assessment, is reviewed at least annually or in case of significant changes impacting the PQC strategy.

**Deutsche Übersetzung:**

Die PQC-Strategie — einschließlich Inventar und Risikobewertung — wird **mindestens jährlich** oder bei wesentlichen Änderungen mit Auswirkungen auf die Strategie überprüft.

**Zusatzinformation (DE):**

Empfehlungen zur Migration zur PQC und zur zukunftssicheren Nutzung von Kryptographie liefern u. a.: BSI-Leitfaden „Quantum-safe Cryptography — Grundlagen, Entwicklungen und Empfehlungen", die EU-Roadmap „A Coordinated Implementation Roadmap for the Transition to Post-Quantum Cryptography" sowie NIST SP 1800-38 (Entwurf) „Migration to Post-Quantum Cryptography".

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Krypto-Policy nach BSI TR-02102**: AES-256-GCM für Symmetrie, RSA-4096 oder ECDSA/P-384 für Asymmetrie, TLS 1.3 (mind. TLS 1.2 mit PFS-Cipher-Suites), SHA-256/SHA-384 für Hashing, Argon2id für Password-Hashing; jährliche Aktualisierung
- **Crypto-Inventory** pro System: welche Algorithmen, welche Schlüssellängen, wo eingesetzt, welche Bibliothek/Version; Grundlage für PQC-Migration und schnelle Reaktion bei entdeckten Schwächen (wie z. B. bei SHA-1)
- **PQC-Strategie ausformuliert**: Zeithorizont bis 2030 für Migration kritischer Systeme; Auswahl von NIST-PQC-Algorithmen (ML-KEM für Key-Encapsulation, ML-DSA für Signaturen); hybrider Ansatz (klassisch + PQC parallel) für Übergangszeit
- **Crypto-Agility**: Abstraktion in Wrapper-Bibliotheken (kein direkter Algorithmus-Aufruf im App-Code), sodass Austausch ohne Code-Änderungen möglich ist; Config-basierte Wahl der Cipher-Suites

## Verwandte Kriterien

- [[CRY-02 Cryptographic Change Management]]
- [[CRY-03 Review of Cryptography Practices]]
- [[CRY-04 Protection of Data for Transmission]]
- [[CRY-05 Encryption of Sensitive Data at Rest]]
- [[AM-09 Asset Classification and Labelling]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
