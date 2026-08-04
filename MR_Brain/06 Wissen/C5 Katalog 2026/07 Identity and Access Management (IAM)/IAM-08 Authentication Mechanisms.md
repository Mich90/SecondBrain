---
title: IAM-08 Authentication Mechanisms
project: "[[C5 Katalog 2026]]"
c5-id: IAM-08
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-08
---

# IAM-08 · Authentication Mechanisms

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-08 · **Unterkriterien:** 9 (7 Basic · 2 Sharpening)

## Unterkriterien

### IAM-08.01B — Basic

**Kriterium (EN):**

> System components in the cloud service provider's area of responsibility that are used to provide the cloud service authenticate users of the cloud service provider's internal and external personnel as well as system components that are involved in the cloud service provider's automated authorisation processes.

**Deutsche Übersetzung:**

Systemkomponenten im Verantwortungsbereich des Cloud-Diensteanbieters, die zur Erbringung des Cloud-Dienstes genutzt werden, authentifizieren die Nutzer des internen und externen Personals sowie die an automatisierten Autorisierungsprozessen beteiligten Systemkomponenten.

---

### IAM-08.02B — Basic

**Kriterium (EN):**

> The cloud service provider enforces multi-factor authentication (MFA) for all access to the production environment. This requirement applies to both human users and automated processes, ensuring that only authorised entities can access systems and data in the production environment.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter erzwingt **Multi-Faktor-Authentifizierung (MFA)** für jeden Zugriff auf die Produktivumgebung. Dies gilt sowohl für menschliche Nutzer als auch für automatisierte Prozesse.

**Zusatzinformation (DE):**

MFA bedeutet, dass verschiedene Quellen zur Identitätsverifikation genutzt werden. Menschliche Nutzer können verschiedene Faktoren wie ein Passwort und einen Hardware-Token nutzen. MFA für automatisierte Prozesse bedeutet die Nutzung unabhängiger Quellen zur Identitätsverifikation, z. B. kryptographische Schlüssel und ein Kurzzeit-Token aus einer anderen Quelle.

---

### IAM-08.02AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider enforces multi-factor authentication (MFA) for all access to any environment. This requirement applies to both human users and automated processes, ensuring that only authorised entities can access systems and data in all of the environments.

**Deutsche Übersetzung:**

MFA wird für den Zugriff auf **alle Umgebungen** (Produktion, Entwicklung, Test, Staging) erzwungen.

---

### IAM-08.03B — Basic

**Kriterium (EN):**

> Within the production environment, user authentication takes place through passwords, digitally signed certificates or procedures that achieve at least an equivalent level of security. If digitally signed certificates are used, administration is carried out in accordance with the policies and procedures for the use of cryptographic mechanisms (cf. CRY-01).

**Deutsche Übersetzung:**

Innerhalb der Produktivumgebung erfolgt die Nutzerauthentifizierung über Passwörter, digital signierte Zertifikate oder Verfahren, die mindestens ein gleichwertiges Sicherheitsniveau erreichen. Bei Nutzung digital signierter Zertifikate erfolgt die Administration gemäß den Kryptographie-Richtlinien (vgl. [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]]).

---

### IAM-08.03AS — Additional (Sharpening)

**Kriterium (EN):**

> Within an environment, user authentication takes place through passwords, digitally signed certificates or procedures that achieve at least an equivalent level of security. If digitally signed certificates are used, administration is carried out in accordance with the policies and procedures for the use of cryptographic mechanisms (cf. CRY-01).

**Deutsche Übersetzung:**

Wie IAM-08.03B, angewandt auf **alle Umgebungen** (Prod, Dev, Test, Staging).

---

### IAM-08.04B — Basic

**Kriterium (EN):**

> The authentication requirements are derived from a risk assessment and documented, communicated and provided in an authentication policy according to SP-01. Compliance with the requirements is enforced by the configuration of the system components, as far as technically possible. The authentication policy describes at least the following aspects:
>
> 1. The selection of appropriate mechanisms for every level of risk and each identity type;
> 2. The protection of credentials that the authentication mechanisms use, including the confidentiality of personal or shared authentication information and non-sharing of credentials;
> 3. The generation and distribution of credentials for any new identity;
> 4. The non-reuse of credentials;
> 5. Rules on the storage of credentials;
> 6. Rules for renewing credentials, including periodic renewals and renewals in case a credential is lost or compromised; and
> 7. Rules on the required strength of credentials, including trade-offs between entropy and ability to memorise where applicable, as well as mechanisms for communicating and enforcing these rules.

**Deutsche Übersetzung:**

Die Authentifizierungsanforderungen werden aus einer Risikobewertung abgeleitet und in einer Authentifizierungs-Policy gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt. Die Einhaltung wird durch die Konfiguration der Systemkomponenten erzwungen (soweit technisch möglich). Die Policy beschreibt mindestens:

1. Auswahl geeigneter Mechanismen für jedes Risikoniveau und jeden Identitätstyp;
2. Schutz der von den Authentifizierungsmechanismen genutzten Credentials, einschließlich Vertraulichkeit und Nicht-Weitergabe;
3. Erzeugung und Verteilung von Credentials für neue Identitäten;
4. **Nicht-Wiederverwendung** von Credentials;
5. Regeln zur Speicherung von Credentials;
6. Regeln zur Erneuerung von Credentials (periodisch + bei Verlust/Kompromittierung);
7. Regeln zur erforderlichen Stärke von Credentials (inkl. Trade-off Entropie ↔ Merkbarkeit) sowie Mechanismen zur Kommunikation und Durchsetzung.

---

### IAM-08.05B — Basic

**Kriterium (EN):**

> The cloud service provider determines by means of a risk assessment (cf. OIS-07) the risk that the authentication mechanisms integrated into the system components under its responsibility used to provide the cloud service become outdated. Based on the results of the risk assessment, the cloud service provider implements appropriate measures for exchanging outdated authentication mechanisms or the system components into which they are integrated.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter bestimmt mittels Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) das Risiko, dass die in seinen Systemkomponenten integrierten Authentifizierungsmechanismen veralten. Basierend auf den Ergebnissen implementiert er angemessene Maßnahmen zum Austausch veralteter Mechanismen oder der Systemkomponenten, in die sie integriert sind.

---

### IAM-08.06B — Basic

**Kriterium (EN):**

> Any authentication mechanism integrated into the system components used to provide the cloud service has a mechanism for disabling an identity after a predefined number of unsuccessful authentication attempts.

**Deutsche Übersetzung:**

Jeder Authentifizierungsmechanismus verfügt über eine Funktion zur Deaktivierung einer Identität nach einer vordefinierten Anzahl erfolgloser Authentifizierungsversuche.

---

### IAM-08.07B — Basic

**Kriterium (EN):**

> The cloud service provider implements measures which require that users can only access non-personal identities assigned to multiple persons after they have already been authenticated with their identity assigned to a single person.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter implementiert Maßnahmen, die vorschreiben, dass Nutzer nicht-personalisierte Identitäten (die mehreren Personen zugeordnet sind) nur nutzen können, nachdem sie sich bereits mit ihrer personalisierten Identität authentifiziert haben.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **MFA-first Strategie**: MFA für alle Umgebungen (Sharpening), keine Ausnahme; Authenticator-App (TOTP/Push) für Standardnutzer, FIDO2-Keys für Privileged; Machine-to-Machine über mTLS + kurzlebige OAuth2-Tokens
- **Authentifizierungs-Policy** mit differenzierten Passwort-Anforderungen: Standard-User (12+ Zeichen, kein regelmäßiger Wechsel wenn MFA aktiv, NIST 800-63B); Privileged (16+ Zeichen, Password Manager verpflichtend); Service-Accounts (32+ Zeichen, in Vault gespeichert, Rotation 90 Tage)
- **Break-Glass zu Shared-Accounts**: gemeinsame Accounts (falls unvermeidbar) via PAM-Session; Nutzer authentifiziert sich zuerst personalisiert, dann Session-Recording auf Shared-Account; jeder Zugriff im Audit-Log traceable
- **Anti-Aging von Auth-Mechanismen**: jährliches Assessment (welche Mechanismen sind veraltet - z. B. SMS-2FA schwach geworden durch SIM-Swapping); Migrations-Roadmap; Priorisierung nach Risiko und Reichweite

## Verwandte Kriterien

- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-06 Privileged Access Rights]]
- [[IAM-09 Confidentiality of Authentication Information]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
- [[OIS-07 Risk Management Policy]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
