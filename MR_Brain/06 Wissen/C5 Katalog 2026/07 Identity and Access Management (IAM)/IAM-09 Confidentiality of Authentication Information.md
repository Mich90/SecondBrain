---
title: IAM-09 Confidentiality of Authentication Information
project: "[[C5 Katalog 2026]]"
c5-id: IAM-09
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-09
---

# IAM-09 · Confidentiality of Authentication Information

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-09 · **Unterkriterien:** 8 (7 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Authentifizierungsinformationen im Sinne des Basiskriteriums sind Anbieter-Daten.

## Unterkriterien

### IAM-09.01B — Basic

**Kriterium (EN):**

> The allocation of authentication information to access system components used to provide the cloud service to internal and external users of the cloud service provider and system components that are involved in automated authorisation processes of the cloud service provider is done in an orderly manner that ensures the confidentiality of the information.

**Deutsche Übersetzung:**

Die Zuteilung von Authentifizierungsinformationen zum Zugriff auf Systemkomponenten des Cloud-Dienstes an interne und externe Nutzer sowie Systemkomponenten in automatisierten Autorisierungsprozessen erfolgt geordnet und stellt die Vertraulichkeit der Informationen sicher.

---

### IAM-09.02B — Basic

**Kriterium (EN):**

> Authentication credentials are managed with a security level that matches or exceeds the classification of the system component they protect.

**Deutsche Übersetzung:**

Authentifizierungs-Credentials werden mit einem Sicherheitsniveau verwaltet, das der Klassifizierung der geschützten Systemkomponente entspricht oder diese übersteigt.

---

### IAM-09.03B — Basic

**Kriterium (EN):**

> If passwords are used as authentication information, their confidentiality is ensured by the following procedures, as far as technically possible:
>
> 1. Users can initially create the password themselves or shall change an initial password when logging on to the system component for the first time. An initial password loses its validity after a maximum of 14 days;
> 2. When creating passwords, compliance with the authentication policy (cf. IAM-08) is enforced as far as technically possible;
> 3. The user is informed about changing or resetting the password; and
> 4. The server-side storage takes place using state of the art cryptographic hash functions, with the exception of passwords that are stored in the plain text form for later use, for example in a password manager. In this case, state of the art cryptographic mechanisms are used to protect the passwords.

**Deutsche Übersetzung:**

Werden Passwörter als Authentifizierungsinformation genutzt, wird deren Vertraulichkeit durch folgende Verfahren sichergestellt (soweit technisch möglich):

1. Nutzer können das Passwort initial selbst erstellen oder müssen ein initiales Passwort beim ersten Login ändern. Ein initiales Passwort verliert nach **maximal 14 Tagen** seine Gültigkeit;
2. Bei der Passwort-Erstellung wird die Einhaltung der Authentifizierungs-Policy (vgl. [[IAM-08 Authentication Mechanisms|IAM-08]]) erzwungen;
3. Der Nutzer wird über Änderung oder Reset des Passworts informiert;
4. Die serverseitige Speicherung erfolgt mit **dem Stand der Technik entsprechenden kryptographischen Hash-Funktionen** — Ausnahme: Passwörter, die für spätere Nutzung im Klartext gespeichert werden müssen (z. B. in einem Passwort-Manager). In diesem Fall werden dem Stand der Technik entsprechende kryptographische Mechanismen zum Schutz genutzt.

---

### IAM-09.04B — Basic

**Kriterium (EN):**

> Deviations are evaluated by means of a risk assessment according to OIS-07 and mitigating measures derived from this are implemented.

**Deutsche Übersetzung:**

Abweichungen werden mittels Risikobewertung gemäß [[OIS-07 Risk Management Policy|OIS-07]] bewertet und daraus abgeleitete mindernde Maßnahmen umgesetzt.

---

### IAM-09.05B — Basic

**Kriterium (EN):**

> Rules and recommendations for managing credentials in accordance with the authentication policy (cf. IAM-08) are documented, communicated and made available to all users under the responsibility of the cloud service provider. They include recommendations on password managers and recommendations to specifically address classical attacks such as phishing, social attacks, and whaling.

**Deutsche Übersetzung:**

Regeln und Empfehlungen zum Management von Credentials gemäß Authentifizierungs-Policy sind allen Nutzern im Verantwortungsbereich des Cloud-Diensteanbieters dokumentiert, kommuniziert und bereitgestellt. Sie umfassen Empfehlungen zu Password-Managern und zu klassischen Angriffen wie **Phishing, Social Engineering und Whaling**.

---

### IAM-09.06B — Basic

**Kriterium (EN):**

> Used cryptographic mechanisms comply with the policies and instructions for cryptographic mechanisms (cf. CRY-01).

**Deutsche Übersetzung:**

Die verwendeten kryptographischen Mechanismen entsprechen den Richtlinien und Anweisungen für kryptographische Mechanismen (vgl. [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*).

---

### IAM-09.07B — Basic

**Kriterium (EN):**

> Password reset procedures are valid for at most 24 hours. After the reset procedure has been used, the password is to be changed by the user.

**Deutsche Übersetzung:**

Passwort-Reset-Verfahren sind höchstens **24 Stunden gültig**. Nach Nutzung des Reset-Verfahrens muss der Nutzer das Passwort ändern.

**Zusatzinformation (DE):**

Dieses Unterkriterium ist nur auf passwort-basierte Authentifizierungsschemata anwendbar.

---

### IAM-09.01AC — Additional (Complementing)

**Kriterium (EN):**

> The users sign a declaration in which they assure that they treat personal (or shared) authentication information confidentially and keep it exclusively for themselves (within the members of the group).

**Deutsche Übersetzung:**

Die Nutzer unterzeichnen eine Erklärung, in der sie versichern, persönliche (oder geteilte) Authentifizierungsinformationen vertraulich zu behandeln und ausschließlich für sich selbst (bzw. innerhalb der Gruppenmitglieder) zu behalten.

**Zusatzinformation (DE):**

Soweit rechtlich verbindlich, können Erklärungen mittels elektronischer Signatur unterzeichnet werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Password-Hashing** mit Argon2id (oder bcrypt mit Kostenfaktor ≥ 12); Salting per User; kein SHA-1/MD5; regelmäßiger Test der Hash-Performance; Hash-Migration bei neuen Empfehlungen
- **Enterprise Password Manager** (1Password Business, Bitwarden, Keeper) verpflichtend für alle Nutzer; SSO-Integration; Sharing über sichere Vaults; Import/Export für neue Mitarbeiter; Master-Password mit MFA
- **Password-Reset-Flow**: Reset-Link binnen 24 h gültig, one-time use, gebunden an Session-Cookie; nach Reset zwingend Passwort-Änderung; Notification an User + Security-Team; Rate-Limiting gegen Reset-Missbrauch
- **Awareness-Programm**: Anti-Phishing-Training mit Krankenhaus-relevanten Szenarien („KBV-Newsletter", „gematik-TI-Update", „Neuer Prüfbericht KHZG"); regelmäßige Simulationen; Click-Rates als KPI im Security-Dashboard; Confidentiality-Erklärung im Onboarding

## Verwandte Kriterien

- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-08 Authentication Mechanisms]]
- [[HR-03 Security Training and Awareness Programme]]
- [[HR-02 Non-Disclosure Agreements]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
- [[OIS-07 Risk Management Policy]]
