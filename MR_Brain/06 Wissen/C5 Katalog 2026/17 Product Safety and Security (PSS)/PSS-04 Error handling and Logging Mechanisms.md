---
title: PSS-04 Error handling and Logging Mechanisms
project: "[[C5 Katalog 2026]]"
c5-id: PSS-04
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-04
---

# PSS-04 · Error handling and Logging Mechanisms

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-04 · **Unterkriterien:** 7 (6 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Anders als das additive Kriterium in [[OPS-15 Availability of Cloud Services and Services Provided|OPS-15]], das sowohl Systemkomponenten im Verantwortungsbereich des Cloud-Diensteanbieters als auch im Verantwortungsbereich des Cloud-Dienstkunden abdeckt, ist der Scope dieses Kriteriums strikt auf Systemkomponenten im **Verantwortungsbereich des Cloud-Dienstkunden** beschränkt.

## Unterkriterien

### PSS-04.01B — Basic

**Kriterium (EN):**

> The cloud service provided is equipped with error handling and logging mechanisms for system components under the responsibility of the cloud service customer. These enable cloud service customers to obtain security-related information about the security status of the cloud service as well as the data, services or functions it provides.

**Deutsche Übersetzung:**

Der bereitgestellte Cloud-Dienst ist mit Error-Handling- und Logging-Mechanismen für Systemkomponenten im Verantwortungsbereich des Cloud-Dienstkunden ausgestattet. Diese ermöglichen es Cloud-Dienstkunden, sicherheitsbezogene Informationen über den Sicherheitsstatus des Cloud-Dienstes sowie der bereitgestellten Daten, Dienste oder Funktionen zu erhalten.

---

### PSS-04.02B — Basic

**Kriterium (EN):**

> These mechanisms are designed to address identified security risks related to the use of the cloud service. The cloud service provider identifies and documents these risks in advance, ensuring that the implemented logging mechanisms capture relevant events and activities.

**Deutsche Übersetzung:**

Diese Mechanismen sind darauf ausgelegt, identifizierte Sicherheitsrisiken bezüglich der Nutzung des Cloud-Dienstes zu adressieren. Der Cloud-Diensteanbieter identifiziert und dokumentiert diese Risiken im Voraus und stellt sicher, dass die implementierten Logging-Mechanismen relevante Ereignisse und Aktivitäten erfassen.

---

### PSS-04.03B — Basic

**Kriterium (EN):**

> The information is detailed enough to allow cloud service customers to check the following aspects, insofar as they are applicable to the cloud service:
>
> 1. Which cloud service customer data and cloud service derived data, services or functions available to the cloud service customer within the cloud service, have been accessed by whom, when and from where (Audit Logs);
> 2. Malfunctions during processing of automatic or manual actions; and
> 3. Changes to security-relevant configuration parameters, error handling and logging mechanisms, user authentication, action authorisation, cryptography, and communication security.

**Deutsche Übersetzung:**

Die Informationen sind detailliert genug, um es Cloud-Dienstkunden zu ermöglichen, folgende Aspekte zu prüfen — soweit auf den Cloud-Dienst anwendbar:

1. Welche Kundendaten und abgeleiteten Daten, Dienste oder Funktionen wurden von wem, wann und von wo aus zugegriffen (**Audit Logs**);
2. Fehlfunktionen bei der Verarbeitung automatischer oder manueller Aktionen;
3. Änderungen an sicherheitsrelevanten Konfigurationsparametern, Error-Handling- und Logging-Mechanismen, Nutzer-Authentifizierung, Aktions-Autorisierung, Kryptographie und Kommunikations-Sicherheit.

---

### PSS-04.04B — Basic

**Kriterium (EN):**

> The logged information is protected from unauthorised access and modification and can be deleted by the cloud service customer.

**Deutsche Übersetzung:**

Die geloggten Informationen sind vor unautorisiertem Zugriff und Modifikation geschützt und können vom Cloud-Dienstkunden gelöscht werden.

---

### PSS-04.05B — Basic

**Kriterium (EN):**

> Where applicable, the cloud service customer can activate or de-activate the logging and can control the scope and verbosity of the logging the cloud service provides.

**Deutsche Übersetzung:**

Wo anwendbar, kann der Cloud-Dienstkunde das Logging aktivieren oder deaktivieren und Umfang und Detailgrad des Loggings, das der Cloud-Dienst bereitstellt, steuern.

---

### PSS-04.06B — Basic

**Kriterium (EN):**

> The logging of management plane actions by the cloud service customers covers all relevant systems and system components.

**Deutsche Übersetzung:**

Das Logging von **Management-Plane-Aktionen** durch die Cloud-Dienstkunden umfasst alle relevanten Systeme und Systemkomponenten.

---

### PSS-04.01AC — Additional (Complementing)

**Kriterium (EN):**

> Cloud service customers can retrieve security-related information via documented interfaces which are suitable for further processing this information as part of their Security Information and Event Management (SIEM).

**Deutsche Übersetzung:**

Cloud-Dienstkunden können sicherheitsbezogene Informationen über dokumentierte Schnittstellen abrufen, die zur Weiterverarbeitung dieser Informationen als Teil ihres **SIEM** geeignet sind.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Kunden-Audit-Log-Portal**: alle Zugriffe auf Patientendaten mit Wer/Wann/Was/Woher; Search + Filter + Export nach CSV/JSON; Retention konfigurierbar (Standard 6 Monate, verlängerbar bis 10 Jahre für DSGVO/§ 630f BGB); manipulationssicher (WORM-Storage + Hash-Chain)
- **Kunden-konfigurierbare Log-Levels**: Kunde kann Audit-Log-Detail einstellen (Minimal: Login/Logout, Standard: alle Zugriffe, Verbose: inkl. Query-Parameter); trade-off Kosten vs. Detailtiefe transparent
- **Config-Change-Log**: alle Änderungen an sicherheitsrelevanten Kunden-Konfigurationen (Rollen-Änderungen, MFA-Aktivierung/Deaktivierung, Passwort-Policy-Änderungen, Krypto-Schlüssel-Rotation) im separaten unveränderlichen Log
- **SIEM-Integration** (Complementing): Webhook + API + Push-to-S3-Bucket für Kunden-SIEM (Splunk, Sentinel, QRadar, Elastic); vor-konfigurierte Integration-Pakete (Splunk App); CEF/LEEF-Format; Krankenhaus-SIEM erhält Anbieter-Logs im gleichen Kontext wie interne Krankenhaus-Systeme

## Verwandte Kriterien

- [[PSS-01 Guidelines and Recommendations for Cloud Service Customers]]
- [[PSS-05 Authentication Mechanisms]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-15 Availability of Cloud Services and Services Provided]]
- [[OPS-16 Logging and Monitoring - Configuration]]
- [[OPS-17 Logging and Monitoring - Access, Storage and Deletion]]
- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-06 Privileged Access Rights]]
