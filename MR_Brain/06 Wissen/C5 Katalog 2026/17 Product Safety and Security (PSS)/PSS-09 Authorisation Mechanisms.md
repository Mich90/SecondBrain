---
title: PSS-09 Authorisation Mechanisms
project: "[[C5 Katalog 2026]]"
c5-id: PSS-09
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-09
---

# PSS-09 · Authorisation Mechanisms

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-09 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

## Unterkriterien

### PSS-09.01B — Basic

**Kriterium (EN):**

> Access to the functions provided by the cloud service is restricted by access controls (authorisation mechanisms) that verify whether users, IT components, or applications are authorised to perform certain actions.

**Deutsche Übersetzung:**

Der Zugriff auf die vom Cloud-Dienst bereitgestellten Funktionen ist durch Access Controls (**Autorisierungsmechanismen**) beschränkt, die verifizieren, ob Nutzer, IT-Komponenten oder Anwendungen zur Durchführung bestimmter Aktionen autorisiert sind.

---

### PSS-09.02B — Basic

**Kriterium (EN):**

> The cloud service provider validates the functionality of the authorisation mechanisms before new functions are made available to cloud service customers and in the event of changes to the authorisation mechanisms of existing functions (cf. DEV-07).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter validiert die Funktionalität der Autorisierungsmechanismen, bevor neue Funktionen für Cloud-Dienstkunden verfügbar gemacht werden und bei Änderungen an den Autorisierungsmechanismen bestehender Funktionen (vgl. [[DEV-07 Testing Changes|DEV-07]]).

---

### PSS-09.03B — Basic

**Kriterium (EN):**

> If validation activities reveal vulnerabilities, the procedures for identifying vulnerabilities (cf. PSS-02) are applied and measures for timely remediation or mitigation are initiated.

**Deutsche Übersetzung:**

Falls Validierungs-Aktivitäten Schwachstellen aufdecken, werden die Verfahren zur Schwachstellen-Identifikation (vgl. [[PSS-02 Identification of Vulnerabilities of the Cloud Service|PSS-02]]) angewendet und Maßnahmen zur zeitnahen Behebung oder Minderung eingeleitet.

---

### PSS-09.01AC — Additional (Complementing)

**Kriterium (EN):**

> Access controls are attribute-based to enable granular and contextual checks against multiple attributes of a user, IT component, or application (e.g., role, location, authentication method).

**Deutsche Übersetzung:**

Access Controls sind **attribut-basiert (ABAC)**, um granulare und kontextuelle Prüfungen gegen mehrere Attribute eines Nutzers, einer IT-Komponente oder Anwendung zu ermöglichen (z. B. Rolle, Standort, Authentifizierungs-Methode).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Policy-as-Code**: Autorisierung nicht im Applikationscode verstreut, sondern in Central Policy Engine (Open Policy Agent, Cedar, XACML); für jeden Access-Point wird die Policy explizit evaluiert; Änderungen durchlaufen Change-Prozess mit Peer-Review
- **Automated Auth-Testing**: pro Endpoint dokumentiertes Autorisierungsverhalten in Test-Suite (positiver Test: Rolle kann zugreifen; negativer Test: andere Rolle nicht); Regression-Tests in CI/CD; Fuzzing für Missing-Function-Level-Auth
- **Vulnerability-Handling**: Broken Access Control ist OWASP Top 1 — dediziertes Test-Programm, halbjährliches Access-Control-Review durch AppSec-Team; kritische Findings → sofortige Fix + Kunden-Communication
- **ABAC-Beispiel Healthcare** (Complementing): „Nutzer darf Patient X einsehen, wenn er behandelnder Arzt UND Patient auf zugewiesener Station UND aktuelle Behandlung + Zeit-Attribut (max 30 Tage nach Entlassung)"; kontextuelle Prüfung reduziert breach-blast-radius

## Verwandte Kriterien

- [[PSS-05 Authentication Mechanisms]]
- [[PSS-08 Roles and Rights Framework]]
- [[PSS-02 Identification of Vulnerabilities of the Cloud Service]]
- [[DEV-07 Testing Changes]]
- [[IAM-02 Segregation of Duties (Access-Rights)]]
- [[IAM-03 Provision and Modification of Access Rights]]
