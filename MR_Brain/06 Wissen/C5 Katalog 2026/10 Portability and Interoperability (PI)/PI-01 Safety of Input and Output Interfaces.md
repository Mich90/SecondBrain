---
title: PI-01 Safety of Input and Output Interfaces
project: "[[C5 Katalog 2026]]"
c5-id: PI-01
c5-area: PI
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pi
aliases:
  - PI-01
---

# PI-01 · Safety of Input and Output Interfaces

> [!info] Kontext
> **Bereich:** Portability and Interoperability (PI) · **Kriterium-ID:** PI-01 · **Unterkriterien:** 5 (2 Basic · 3 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Eine Schnittstelle in diesem Kontext ist ein Systemzugangspunkt oder eine Bibliotheksfunktion mit wohldefinierter Syntax. Sie umfasst dokumentierte Methoden, die Cloud-Dienstkunden den sicheren Zugriff und die Interaktion mit dem Cloud-Dienst ermöglichen und den Datenaustausch erlauben.
>
> Diese Schnittstellen und ihre Dokumentation sollten ausreichende Informationen über den Cloud-Dienst enthalten, um die Entwicklung von Software zu ermöglichen, die mit ihm für Datenportabilität und Interoperabilität kommuniziert. Der Cloud-Diensteanbieter muss dabei keine sensiblen Details wie interne Sicherheitsarchitektur offenlegen.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die bereitgestellten Schnittstellen (und deren Sicherheit) für ihre Schutzbedarfe angemessen sind — mittels geeigneter Prüfungen vor Beginn der Nutzung des Cloud-Dienstes und bei jeder Änderung der Schnittstellen.

## Unterkriterien

### PI-01.01B — Basic

**Kriterium (EN):**

> For inbound and outbound interfaces through which the cloud service can be accessed by other cloud services or IT systems of cloud service customers, the cloud service provider designs, implements and maintains controls regarding the following aspects:
>
> 1. The use of standardised communication protocols for interactions between different application interfaces to ensure the confidentiality and integrity of the transmitted information according to its protection needs, and the adequate authentication of the user;
> 2. The use of encryption according to CRY-02 in case of communication over untrusted networks;
> 3. The use of standardised data formats and common data processing standards to facilitate information processing interoperability;
> 4. The implementation of mechanisms to validate data integrity and establish backup and recovery processes to ensure data security and reliability during exchange, usage and transfer; and
> 5. The provision of up-to-date information about the available communication protocols, as well as applicable data formats and data processing standards.

**Deutsche Übersetzung:**

Für eingehende und ausgehende Schnittstellen, über die andere Cloud-Dienste oder IT-Systeme der Cloud-Dienstkunden auf den Cloud-Dienst zugreifen können, konzipiert, implementiert und pflegt der Cloud-Diensteanbieter Kontrollen hinsichtlich folgender Aspekte:

1. Nutzung standardisierter Kommunikationsprotokolle für Interaktionen zwischen verschiedenen Anwendungs-Schnittstellen, um Vertraulichkeit und Integrität der übertragenen Informationen entsprechend deren Schutzbedarfen sowie die angemessene Authentifizierung der Nutzer sicherzustellen;
2. Nutzung von Verschlüsselung gemäß [[CRY-02 Cryptographic Change Management|CRY-02]] bei Kommunikation über nicht vertrauenswürdige Netzwerke;
3. Nutzung standardisierter Datenformate und gängiger Datenverarbeitungsstandards zur Erleichterung der Interoperabilität;
4. Implementierung von Mechanismen zur Validierung der Datenintegrität und Etablierung von Backup- und Wiederherstellungsprozessen, um Datensicherheit und -zuverlässigkeit während Austausch, Nutzung und Übertragung sicherzustellen;
5. Bereitstellung aktueller Informationen über die verfügbaren Kommunikationsprotokolle sowie anwendbaren Datenformate und Datenverarbeitungsstandards.

---

### PI-01.02B — Basic

**Kriterium (EN):**

> The cloud service provider provides suitable technical means for extracting cloud service customer data in accordance with the aforementioned policies and procedures to the cloud service customer. Where data volume, format, or architecture make a customer-driven extraction infeasible, the cloud service provider provides appropriate extraction services to the cloud service customer.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt dem Cloud-Dienstkunden geeignete technische Mittel zur Extraktion von Kundendaten gemäß den o. g. Richtlinien und Verfahren bereit. Wenn Datenvolumen, -format oder -architektur eine kundengesteuerte Extraktion undurchführbar machen, stellt der Cloud-Diensteanbieter dem Cloud-Dienstkunden angemessene Extraktions-Dienste zur Verfügung.

---

### PI-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider sets up an application firewall to protect the administration interfaces for cloud service customers that are accessible over public networks.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter richtet eine **Application Firewall (WAF)** ein, um die Administrations-Schnittstellen für Cloud-Dienstkunden zu schützen, die über öffentliche Netzwerke zugänglich sind.

---

### PI-01.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provides cloud service customers with interfaces for custom identity providers to manage the authentication information of users under the responsibility of the cloud service customer. These interfaces are accompanied by a standardised protocol to facilitate communication between the cloud service and the external identity provider.

**Deutsche Übersetzung:**

Der Cloud-Dienst stellt Cloud-Dienstkunden Schnittstellen für **Custom Identity Provider** zur Verfügung, um die Authentifizierungsinformationen von Nutzern im Verantwortungsbereich des Cloud-Dienstkunden zu verwalten. Diese Schnittstellen sind von einem standardisierten Protokoll begleitet, um die Kommunikation zwischen dem Cloud-Dienst und dem externen Identity Provider zu ermöglichen.

---

### PI-01.03AC — Additional (Complementing)

**Kriterium (EN):**

> The interfaces are clearly documented to enable subject matter experts of the cloud service customer to integrate their identity provider with the cloud service.

**Deutsche Übersetzung:**

Die Schnittstellen sind klar dokumentiert, um Fachexperten des Cloud-Dienstkunden die Integration ihres Identity Providers mit dem Cloud-Dienst zu ermöglichen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Standardisierte Healthcare-Protokolle**: HL7 v2/v3, FHIR (mit OAuth2/SMART on FHIR), DICOM, KIS-Schnittstellen; OpenAPI-Spezifikation für REST-APIs; interoperabel mit KIS/PVS-Systemen der Krankenhäuser
- **Datenexport für Kunden**: strukturierter Export (FHIR-Bundle, JSON, CSV), Objekt-Storage-Download, ggf. Bulk-Export via API; für große Volumina (Radiologie-Archive) Extraktions-Service mit Speichermedien-Versand oder Direct-Connect
- **SSO-Integration** (Complementing): Krankenhaus-eigene AD/LDAP oder Keycloak-Instanz kann via **SAML 2.0**, **OpenID Connect** oder **SCIM** angebunden werden; Just-in-Time User Provisioning; RBAC via OIDC-Claims
- **WAF für Admin-Interfaces**: Cloud-WAF (Cloudflare, AWS WAF) mit OWASP Top 10-Regeln + Bot-Detection + Rate-Limiting; strengere Regeln für `/admin`-Pfade; Deep-Inspection bei API-Calls mit sensitiven Daten

## Verwandte Kriterien

- [[PI-02 Contractual Agreements for the Provision of Data]]
- [[PI-03 Secure Deletion of Data]]
- [[COS-04 Cross-Network Access]]
- [[COS-08 Policies for Data Transmission]]
- [[CRY-02 Cryptographic Change Management]]
- [[CRY-04 Protection of Data for Transmission (Transport Protection)]]
- [[IAM-08 Authentication Mechanisms]]
