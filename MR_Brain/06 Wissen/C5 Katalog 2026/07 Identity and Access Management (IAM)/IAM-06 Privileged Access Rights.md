---
title: IAM-06 Privileged Access Rights
project: "[[C5 Katalog 2026]]"
c5-id: IAM-06
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-06
---

# IAM-06 · Privileged Access Rights

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-06 · **Unterkriterien:** 13 (9 Basic · 4 Complementing)

> [!note] Gemeinsame Zusatzinformation
> **Privilegierte Zugriffsrechte** im Sinne des Kriteriums sind solche, die Personal des Cloud-Diensteanbieters befähigen zu:
> 1. Lese- oder Schreibzugriff auf im Cloud-Dienst verarbeitete, gespeicherte oder übertragene Kundendaten — außer wenn diese Daten verschlüsselt sind oder die Verschlüsselung für einen Zugriff des Cloud-Diensteanbieters deaktiviert werden kann;
> 2. Änderungen an der Betriebs- und/oder Sicherheitskonfiguration der Systemkomponenten in der Produktivumgebung.

## Unterkriterien

### IAM-06.01B — Basic

**Kriterium (EN):**

> Privileged access rights for internal and external personnel as well as technical users of the cloud service provider are assigned and changed in accordance with the policy for managing identities and access rights (cf. IAM-01) or a separate specific policy.

**Deutsche Übersetzung:**

Privilegierte Zugriffsrechte für internes und externes Personal sowie technische Nutzer werden gemäß der IAM-Richtlinie (vgl. [[IAM-01 Policy for Identities and Access Rights|IAM-01]]) oder einer separaten spezifischen Richtlinie vergeben und geändert.

---

### IAM-06.02B — Basic

**Kriterium (EN):**

> Privileged access rights are personalised, limited in time according to a risk assessment and assigned as necessary for the execution of tasks ('need-to-know-principle').

**Deutsche Übersetzung:**

Privilegierte Zugriffsrechte sind **personalisiert**, gemäß Risikobewertung zeitlich befristet und nach dem **Need-to-Know-Prinzip** nur für die Aufgabenerfüllung vergeben.

---

### IAM-06.03B — Basic

**Kriterium (EN):**

> Anonymous technical users are only accessed through authentication with a personalised identitiy.

**Deutsche Übersetzung:**

Anonyme technische Nutzer werden ausschließlich mit einer **personalisierten Identität** authentifiziert genutzt.

---

### IAM-06.04B — Basic

**Kriterium (EN):**

> Activities of users with privileged access rights are logged in order to detect any misuse of privileged access in suspicious cases.

**Deutsche Übersetzung:**

Aktivitäten von Nutzern mit privilegierten Zugriffsrechten werden protokolliert, um Missbrauch privilegierter Zugriffe in verdächtigen Fällen zu erkennen.

---

### IAM-06.05B — Basic

**Kriterium (EN):**

> The logged information is automatically monitored for defined events that may indicate misuse.

**Deutsche Übersetzung:**

Die protokollierten Informationen werden automatisch auf definierte Ereignisse überwacht, die auf Missbrauch hindeuten können.

---

### IAM-06.06B — Basic

**Kriterium (EN):**

> When such an event is identified, the responsible personnel is automatically informed so that they can timely assess whether misuse has occurred and take corresponding action.

**Deutsche Übersetzung:**

Bei Identifikation eines solchen Ereignisses wird das verantwortliche Personal automatisch informiert, um zeitnah zu bewerten, ob Missbrauch vorliegt, und entsprechende Maßnahmen zu ergreifen.

---

### IAM-06.07B — Basic

**Kriterium (EN):**

> In the event of proven misuse of privileged access rights, disciplinary measures are taken in accordance with HR-04.

**Deutsche Übersetzung:**

Im Falle nachgewiesenen Missbrauchs privilegierter Zugriffsrechte werden Disziplinar­maßnahmen gemäß [[HR-04 Disciplinary Measures|HR-04]] eingeleitet.

---

### IAM-06.08B — Basic

**Kriterium (EN):**

> For containers and images, activities of users with privileged access are logged according to OPS-10.

**Deutsche Übersetzung:**

Für Container und Images werden Aktivitäten von Nutzern mit privilegiertem Zugriff gemäß [[OPS-10 Logging and Monitoring - Policies and Procedures|OPS-10]] protokolliert.

---

### IAM-06.09B — Basic

**Kriterium (EN):**

> Access to the cloud service provider's administration interfaces requires the use of multi-factor authentication.

**Deutsche Übersetzung:**

Der Zugriff auf die Administrations-Interfaces des Cloud-Diensteanbieters erfordert die Nutzung von **Multi-Faktor-Authentifizierung**.

---

### IAM-06.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider maintains an inventory of the identities with privileged access rights under its responsibility. This inventory is kept up-to-date.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter pflegt ein aktuelles Inventar der Identitäten mit privilegierten Zugriffsrechten in seinem Verantwortungsbereich.

---

### IAM-06.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider maintains a list of the personnel that is responsible for an identity assigned to a non-human entity within the cloud service provider's scope of responsibility. This list is reviewed every six months and in case of significant changes to the cloud service.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter pflegt eine Liste des Personals, das für eine einer nicht-menschlichen Entität zugewiesenen Identität verantwortlich ist. Diese Liste wird alle sechs Monate und bei wesentlichen Änderungen am Cloud-Dienst überprüft.

---

### IAM-06.03AC — Additional (Complementing)

**Kriterium (EN):**

> For privileged users, phishing-resistant multi-factor authentication such as FIDO2 security keys or comparable mechanisms using public key cryptography and domain binding are implemented.

**Deutsche Übersetzung:**

Für privilegierte Nutzer ist **phishing-resistente MFA** implementiert — z. B. **FIDO2-Security-Keys** oder vergleichbare Mechanismen mit Public-Key-Kryptographie und Domain-Binding.

---

### IAM-06.04AC — Additional (Complementing)

**Kriterium (EN):**

> Privileged access rights are enforced through a privileged access management (PAM) solution with support for 'just-in-time' elevation and 'just-enough' access.

**Deutsche Übersetzung:**

Privilegierte Zugriffsrechte werden durch eine **Privileged Access Management (PAM)**-Lösung mit Unterstützung für **Just-in-Time-Elevation** und **Just-Enough-Access** durchgesetzt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **PAM-System** (z. B. CyberArk, Delinea, HashiCorp Boundary, Teleport): alle Admin-Zugriffe zwingend über PAM; Session-Recording (Screen + Command History); Vault für Credentials; alle Zugriffe an SIEM
- **JIT-Elevation**: Standardrollen ohne Prod-Zugriff; Anforderung mit Ticket-Referenz + Approval durch Manager (bei kritischen Systemen 2-Personen-Regel); Rechte automatisch nach Task-Dauer (z. B. 4 h) entzogen
- **FIDO2-Keys für alle Admins** (Complementing): YubiKey oder Titan Security Key; keine SMS/TOTP für Privileged; Backup-Key im Safe; Phishing-Resistance ist wichtig, weil Krankenhausdaten hochwertiges Ziel sind
- **Named Service-Accounts + Ownership**: statt „root" personalisierte Admin-Namen, Service-Accounts mit dokumentiertem Owner; Rezertifizierung halbjährlich; Rotation der Credentials via Vault; Alert bei „unbekannter Nutzung" (z. B. Login außerhalb erwarteter Systeme)

## Verwandte Kriterien

- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-03 Risk-Based Procedure for Locking and Withdrawal of Identities]]
- [[IAM-08 Authentication Mechanisms]]
- [[IAM-09 Confidentiality of Authentication Information]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[HR-04 Disciplinary Measures]]
- [[AM-02 Asset Inventory]]
