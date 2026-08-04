---
title: PSS-05 Authentication Mechanisms
project: "[[C5 Katalog 2026]]"
c5-id: PSS-05
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-05
---

# PSS-05 · Authentication Mechanisms

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-05 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> **IT-Komponenten** im Sinne dieses Kriteriums sind eigenständig nutzbare Objekte mit externen Schnittstellen, die mit anderen IT-Komponenten verbunden werden können. **Access Points** im Sinne dieses Kriteriums sind solche, die von Nutzern, IT-Komponenten oder Anwendungen über Netzwerke erreicht werden können.

## Unterkriterien

### PSS-05.01B — Basic

**Kriterium (EN):**

> The cloud service provided is equipped with authentication mechanisms that can force multi-factor authentication for users, IT components or applications within the cloud service customers' area of responsibility. These authentication mechanisms are set up at all access points that allow users, IT components or applications to interact with the cloud service.

**Deutsche Übersetzung:**

Der bereitgestellte Cloud-Dienst ist mit Authentifizierungsmechanismen ausgestattet, die **Multi-Factor Authentication (MFA)** für Nutzer, IT-Komponenten oder Anwendungen im Verantwortungsbereich der Cloud-Dienstkunden erzwingen können. Diese Authentifizierungsmechanismen sind an allen Access Points eingerichtet, die es Nutzern, IT-Komponenten oder Anwendungen ermöglichen, mit dem Cloud-Dienst zu interagieren.

---

### PSS-05.02B — Basic

**Kriterium (EN):**

> For privileged users, IT components or applications under the responsibility of the cloud service customer, these authentication mechanisms can be enforced by the cloud service customer.

**Deutsche Übersetzung:**

Für privilegierte Nutzer, IT-Komponenten oder Anwendungen im Verantwortungsbereich des Cloud-Dienstkunden können diese Authentifizierungsmechanismen vom Cloud-Dienstkunden **erzwungen** werden.

---

### PSS-05.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service offers out-of-band (OOB) authentication, in which the factors are transmitted via different channels (e.g. Internet and mobile network).

**Deutsche Übersetzung:**

Der Cloud-Dienst bietet **Out-of-Band (OOB) Authentication**, bei der die Faktoren über verschiedene Kanäle übertragen werden (z. B. Internet und Mobilfunknetz).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **MFA-Standard**: TOTP (Google Authenticator, Authy), Push (Microsoft Authenticator, Duo), FIDO2/WebAuthn (YubiKey, Titan Key); PhishR-Resistance bevorzugt via FIDO2; MFA ist Default für alle Kunden-Accounts nach ausdrücklichem Kunden-Opt-Out möglich
- **MFA-Enforcement-API**: Kunde kann via Portal oder API MFA-Policy definieren: „alle Ärzte", „alle Admins", „alle User mit Patientendaten-Zugriff"; Kunde kann Ausnahmen mit Business-Justification pflegen; Report für Compliance-Nachweis
- **API/Service-Account-Auth**: mTLS für Service-to-Service, OAuth 2.1 mit kurzlebigen Tokens für API-Kunden-Integration, keine langlebigen API-Keys ohne Rotation; Client-Certificate-Pinning für KIS-Integrationen
- **OOB-Authentifizierung** (Complementing): TAN via SMS zusätzlich zu Passwort und/oder Push-Notification; besonders relevant für kritische Aktionen (z. B. Massenexport, Rechte-Erweiterung); dokumentierte Trennung der Kanäle

## Verwandte Kriterien

- [[PSS-06 Session Management]]
- [[PSS-07 Confidentiality of Authentication Information]]
- [[PSS-08 Roles and Rights Framework]]
- [[PSS-09 Authorisation Mechanisms]]
- [[IAM-04 Regular Review of Access Rights]]
- [[IAM-05 Privileged Access Rights]]
- [[IAM-08 Authentication Mechanisms]]
- [[IAM-09 Authentication of External Users and IT Components]]
