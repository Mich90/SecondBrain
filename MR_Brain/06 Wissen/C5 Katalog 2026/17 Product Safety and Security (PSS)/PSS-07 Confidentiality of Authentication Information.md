---
title: PSS-07 Confidentiality of Authentication Information
project: "[[C5 Katalog 2026]]"
c5-id: PSS-07
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-07
---

# PSS-07 · Confidentiality of Authentication Information

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-07 · **Unterkriterien:** 3 (3 Basic)

## Unterkriterien

### PSS-07.01B — Basic

**Kriterium (EN):**

> If passwords are used as authentication information for the cloud service, the cloud service provider provides the cloud service customers with the following procedures to protect the confidentiality of the passwords:
>
> 1. Users can initially create the password themselves or must change an initial password when logging in to the cloud service for the first time. An initial password loses its validity after a maximum of 14 days;
> 2. When creating passwords, compliance with the length and complexity requirements of the cloud service provider (cf. IAM-08) or the cloud service customer is technically enforced;
> 3. The user is informed about changing or resetting the password. Password reset procedures are valid for at most 48 hours. After the reset procedure has been used, the password is to be changed by the user; and
> 4. The server-side storage uses hash functions in combination with salt values, both corresponding to the state of the art.

**Deutsche Übersetzung:**

Wenn Passwörter als Authentifizierungs-Information für den Cloud-Dienst verwendet werden, stellt der Cloud-Diensteanbieter den Cloud-Dienstkunden folgende Verfahren zum Schutz der Vertraulichkeit der Passwörter bereit:

1. Nutzer können das Passwort initial selbst erstellen oder müssen ein Initialpasswort beim ersten Login ändern. Ein **Initialpasswort verliert nach maximal 14 Tagen** seine Gültigkeit;
2. Bei der Passworterstellung wird die Einhaltung der Längen- und Komplexitäts-Anforderungen des Cloud-Diensteanbieters (vgl. [[IAM-08 Authentication Mechanisms|IAM-08]]) oder des Cloud-Dienstkunden **technisch erzwungen**;
3. Der Nutzer wird über Änderung oder Reset des Passworts informiert. Password-Reset-Verfahren sind für **höchstens 48 Stunden** gültig. Nach Nutzung des Reset-Verfahrens muss das Passwort vom Nutzer geändert werden;
4. Die serverseitige Speicherung nutzt **Hash-Funktionen in Kombination mit Salt-Werten** — beide entsprechend dem Stand der Technik.

**Zusatzinformation (DE):**

Der Stand der Technik bezüglich kryptographischer Hash-Funktionen ist in der aktuellen Version der **BSI TR-02102-1** „Kryptographische Verfahren: Empfehlungen und Schlüssellängen" beschrieben.

---

### PSS-07.02B — Basic

**Kriterium (EN):**

> Rules and recommendations are shared with the cloud service customers as applicable to the users under their responsibility. The cloud service provider offers the cloud service customers tools for the management and enforcement of these rules.

**Deutsche Übersetzung:**

Regeln und Empfehlungen werden mit den Cloud-Dienstkunden geteilt, soweit sie auf die Nutzer in deren Verantwortungsbereich anwendbar sind. Der Cloud-Diensteanbieter bietet den Cloud-Dienstkunden Tools zur Verwaltung und Durchsetzung dieser Regeln.

---

### PSS-07.03B — Basic

**Kriterium (EN):**

> When distributing credentials, the cloud service provider verifies the recipient's identity, validates the request and protects the credentials by using additional security mechanisms such as multi-factor authentication.

**Deutsche Übersetzung:**

Bei der Verteilung von Credentials verifiziert der Cloud-Diensteanbieter die Identität des Empfängers, validiert die Anfrage und schützt die Credentials durch Nutzung zusätzlicher Sicherheitsmechanismen wie **MFA**.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Passwort-Speicherung**: Argon2id (bevorzugt) oder bcrypt (cost ≥ 12) mit zufälligem Salt pro Nutzer; keine reversible Verschlüsselung, keine SHA-256 ohne Salt; Pepper zusätzlich in HSM/Vault; regelmäßiges Passwort-Storage-Audit
- **Passwort-Policy-Engine**: Kunde konfiguriert Policy im Portal (Mindestlänge 12, Historie 12, Blocklist mit häufigen/geleakten Passwörtern via HaveIBeenPwned-API oder eigenes k-Anonymity-Lookup); technische Durchsetzung im Client + Server
- **Initial-Password-Flow**: Admin erstellt Nutzer → Nutzer erhält Aktivierungslink per E-Mail (48h gültig) → Nutzer setzt eigenes Passwort + MFA-Enrollment; kein Klartext-Passwort per E-Mail; kein persistentes Initialpasswort
- **Credential-Distribution mit Identity-Check**: für API-Keys/OAuth-Client-Secrets zweistufige Verifikation (Kunde erhält Notification-Link per E-Mail + separater SMS-Code); Secrets nur einmalig anzeigbar, dann nur Hash gespeichert; Rotation-Reminder

## Verwandte Kriterien

- [[PSS-05 Authentication Mechanisms]]
- [[PSS-06 Session Management]]
- [[IAM-08 Authentication Mechanisms]]
- [[IAM-09 Authentication of External Users and IT Components]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-09 Secure Key Provisioning]]
