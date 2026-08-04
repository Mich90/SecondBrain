---
title: IAM-02 Granting and Change of Identities and Access Rights
project: "[[C5 Katalog 2026]]"
c5-id: IAM-02
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-02
---

# IAM-02 · Granting and Change of Identities and Access Rights

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-02 · **Unterkriterien:** 3 (3 Basic)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium gilt für Identitäten, die sich auf einzelne, mehrere oder nicht-menschliche Entitäten beziehen.

## Unterkriterien

### IAM-02.01B — Basic

**Kriterium (EN):**

> Specified procedures for granting and modifying identities and access rights for internal and external personnel of the cloud service provider as well as for system components involved in automated authorisation processes of the cloud service provider ensure compliance with the role and rights policies and procedures as well as the policy for managing identities and access rights.

**Deutsche Übersetzung:**

Festgelegte Verfahren zur Vergabe und Änderung von Identitäten und Zugriffsrechten für internes und externes Personal des Cloud-Diensteanbieters sowie für Systemkomponenten, die an automatisierten Autorisierungsprozessen beteiligt sind, gewährleisten die Einhaltung der Rollen- und Rechte-Richtlinien sowie der Richtlinie für das Management von Identitäten und Zugriffsrechten.

---

### IAM-02.02B — Basic

**Kriterium (EN):**

> The aforementioned procedures include, but are not limited to:
>
> 1. Processes and technical controls to restrict access to the cloud service provider's data and system functions to authorised personnel; and
> 2. Processes and technical controls to manage and verify access permissions within the cloud service provider's systems.

**Deutsche Übersetzung:**

Die genannten Verfahren umfassen u. a.:

1. Prozesse und technische Kontrollen zur Beschränkung des Zugriffs auf Daten und Systemfunktionen des Cloud-Diensteanbieters auf autorisiertes Personal;
2. Prozesse und technische Kontrollen zur Verwaltung und Verifikation von Zugriffsberechtigungen innerhalb der Systeme des Cloud-Diensteanbieters.

---

### IAM-02.03B — Basic

**Kriterium (EN):**

> If the cloud service provider defines break glass accounts for use in case of a non-availability of the main procedure for authentication, specific requirements and procedures for the secure usage of those accounts are defined and implemented.

**Deutsche Übersetzung:**

Wenn der Cloud-Diensteanbieter **Break-Glass-Accounts** für den Fall der Nicht-Verfügbarkeit des Hauptauthentifizierungsverfahrens definiert, sind spezifische Anforderungen und Verfahren zur sicheren Nutzung dieser Accounts definiert und umgesetzt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Access-Request-Workflow**: Antrag im ITSM-Tool (Jira/ServiceNow), Approval durch Line-Manager + Data-Owner + Security (bei privileged), automatisierte Umsetzung via SCIM/API in Zielsysteme, alle Schritte in Audit-Log
- **Break-Glass-Konten**: 2 dedizierte Notfall-Admin-Accounts mit separaten Faktoren (Hardware-Token in Safe + Passwort in Passwort-Manager + PIN durch anderes Team); Nutzung löst automatischen P1-Alert aus + Nachdokumentation binnen 24 h
- **Automatisierte technische Identitäten**: für Service-Accounts eigener Namensraum + Owner (Mensch benannt) + regelmäßige Rotation via Vault/Secrets-Manager; keine Verwendung von Personal-Accounts für Automation
- **Regelmäßige Rechte-Rezertifizierung**: Manager bestätigt quartalsweise Zugriffsrechte seines Teams; automatischer Widerruf bei fehlender Bestätigung nach 30 Tagen

## Verwandte Kriterien

- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-04 Withdrawal or Adjustment of Access Rights as the Task Area Changes]]
- [[IAM-06 Privileged Access Rights]]
- [[IAM-08 Authentication Mechanisms]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
