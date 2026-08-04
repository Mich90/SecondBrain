---
title: C5 Katalog 2026
c5-version: "2026 v1.0.1"
c5-source: BSI (Bundesamt für Sicherheit in der Informationstechnik)
status: vollstaendig
tags:
  - c5
  - compliance
  - cloud-security
  - moc
aliases:
  - C5:2026
  - BSI C5 2026
---

# C5 Katalog 2026

> [!info] Über diesen Katalog
> **Version:** 1.0.1 · **Publikation:** 07.04.2026 · **Herausgeber:** BSI
> **Struktur:** 6 General Conditions (GC) · 17 Bereiche (Areas) · 168 Kriterien · 623 Unterkriterien
> **Lizenz Quelle:** Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0)

Der **Cloud Computing Compliance Criteria Catalogue (C5)** des BSI ist der etablierte deutsche Standard zur Bewertung der Informationssicherheit von Cloud-Diensten. Jedes Kriterium besteht aus einem oder mehreren Unterkriterien, klassifiziert in drei Typen:

- **Basic** — Grundanforderung, im Basis-Prüfumfang enthalten
- **Additional (Sharpening)** — schärft ein Basiskriterium (z. B. verlangt Zertifizierung statt nur Dokumentation)
- **Additional (Complementing)** — ergänzt Basiskriterien um zusätzliche Aspekte (z. B. Monitoring, Remediation)

## Aufbau dieser Wissensbasis

Jede Kriterium-Seite enthält:

1. Original-Text (Englisch) aller Unterkriterien inkl. Zusatzinformationen
2. Deutsche Übersetzung
3. Umsetzungsbeispiele im Kontext eines Cloud-Services, der Gesundheitsdaten verarbeitet
4. Verwandte Kriterien als Wikilinks

Alle Kriterium-Seiten sind über ihre C5-ID (Alias im Frontmatter) direkt verlinkbar: `[[OIS-01]]`, `[[CRY-13]]`, etc.

## 0. General Conditions (GC)

Bedingungen an die Beschreibung des Cloud-Services (nicht Kriterien im engeren Sinne, sondern Anforderungen an Transparenz und Vertragsgestaltung).

- [[GC-01]] · Anwendbares Recht, Jurisdiktion, Länder, Standorte
- [[GC-02]] · Verfügbarkeit und Incident-Handling im Regelbetrieb
- [[GC-03]] · Wiederherstellungsparameter im Notbetrieb
- [[GC-04]] · Vorgehen zur Sicherstellung der Verfügbarkeit
- [[GC-05]] · Umgang mit Ermittlungsersuchen von Behörden
- [[GC-06]] · Zertifizierungen und Attestierungen

## Bereiche (Areas)

### 01. Organisation of Information Security (OIS) · 10 Kriterien

Grundlegende Organisation der Informationssicherheit: ISMS, Risikomanagement, Rollen.

- [[OIS-01]] · Information Security Management System (ISMS)
- [[OIS-02]] · Information Security Policy
- [[OIS-03]] · Interfaces and Dependencies
- [[OIS-04]] · Segregation of Duties
- [[OIS-05]] · Threat Intelligence
- [[OIS-06]] · Contact with Relevant Government Agencies and Interest Groups
- [[OIS-07]] · Risk Management Policy
- [[OIS-08]] · Application of the Risk Management Policy — Risk Assessment
- [[OIS-09]] · Application of the Risk Management Policy — Risk Treatment
- [[OIS-10]] · Information Security in Project Management

### 02. Security Policies and Procedures (SP) · 3 Kriterien

- [[SP-01]] · Documentation, Communication and Provision of Policies and Procedures
- [[SP-02]] · Review and Approval of Policies and Procedures
- [[SP-03]] · Exceptions from Existing Policies and Procedures

### 03. Personnel (HR) · 8 Kriterien

- [[HR-01]] · Verification of Qualification and Trustworthiness
- [[HR-02]] · Employment Terms and Conditions
- [[HR-03]] · Security Training and Awareness Programme
- [[HR-04]] · Disciplinary Measures
- [[HR-05]] · Responsibilities in the Event of Termination or Change of Employment
- [[HR-06]] · Non-disclosure Agreements
- [[HR-07]] · Remote Working — Policy
- [[HR-08]] · Remote Working — Implementation

### 04. Asset Management (AM) · 12 Kriterien

- [[AM-01]] · Asset Management Framework
- [[AM-02]] · Asset Inventory
- [[AM-03]] · Hardware Asset Inventory
- [[AM-04]] · Software Asset Inventory
- [[AM-05]] · Policy for the Proper and Secure Use of Assets
- [[AM-06]] · Commissioning of Hardware
- [[AM-07]] · Decommissioning of Hardware
- [[AM-08]] · Commitment to Proper Use, Safe and Secure Handling and Return of Assets
- [[AM-09]] · Asset Classification and Labelling
- [[AM-10]] · Protection of Hardware on Hold
- [[AM-11]] · Transfer of Hardware
- [[AM-12]] · Removable Media and Endpoint Devices

### 05. Physical Security (PS) · 8 Kriterien

- [[PS-01]] · Physical Security and Environmental Control Requirements
- [[PS-02]] · Redundancy Model
- [[PS-03]] · Perimeter Protection
- [[PS-04]] · Physical Site Access Control
- [[PS-05]] · Protection against Threats from Outside and from the Environment
- [[PS-06]] · Protection against Interruptions caused by Power Failures and similar Risks
- [[PS-07]] · Surveillance of Operational and Environmental Parameters
- [[PS-08]] · Workplace Security Requirements

### 06. Operations (OPS) · 35 Kriterien

- [[OPS-01]] · Capacity Management — Planning
- [[OPS-02]] · Capacity Management — Monitoring
- [[OPS-03]] · Capacity Management — Controlling of Resources
- [[OPS-04]] · Protection Against Malware — Policies and Procedures
- [[OPS-05]] · Protection Against Malware — Implementation
- [[OPS-06]] · Data Backup and Recovery — Policies and Procedures
- [[OPS-07]] · Data Backup and Recovery — Monitoring
- [[OPS-08]] · Data Backup and Recovery — Regular Testing
- [[OPS-09]] · Data Backup and Recovery — Storage
- [[OPS-10]] · Logging and Monitoring — Policies and Procedures
- [[OPS-11]] · Logging and Monitoring — Cloud Service Derived Data and Account Data
- [[OPS-12]] · Logging and Monitoring — Access, Retention and Deletion
- [[OPS-13]] · Logging and Monitoring — SIEM
- [[OPS-14]] · Logging and Monitoring — Retention of the Logging Data
- [[OPS-15]] · Logging and Monitoring — Accountability
- [[OPS-16]] · Logging and Monitoring — Configuration
- [[OPS-17]] · Logging and Monitoring — Availability of the Monitoring Software
- [[OPS-18]] · Managing Vulnerabilities — Policies and Procedures
- [[OPS-19]] · Managing Incidents and Crashes — Policies and Procedures
- [[OPS-20]] · Managing Incidents — Implementation
- [[OPS-21]] · Managing Crashes — Implementation
- [[OPS-22]] · Managing Vulnerabilities, Incidents and Crashes — Penetration Tests
- [[OPS-23]] · Managing Vulnerabilities, Incidents and Crashes — Measurements, Analyses, Assessments
- [[OPS-24]] · Involvement of Cloud Service Customers in the Event of Incidents
- [[OPS-25]] · Managing Vulnerabilities, Incidents and Crashes — Vulnerability Scans
- [[OPS-26]] · Managing Vulnerabilities, Incidents and Crashes — System Hardening
- [[OPS-27]] · Managing Vulnerabilities — Patch Management Policies and Procedures
- [[OPS-28]] · Managing Vulnerabilities — Patch Management Implementation
- [[OPS-29]] · Managing Vulnerabilities, Incidents and Crashes — Externally Sourced Components
- [[OPS-30]] · Separation of Datasets — Policies and Procedures
- [[OPS-31]] · Separation of Datasets — Implementation
- [[OPS-32]] · Confidential Computing — Policies and Procedures
- [[OPS-33]] · Confidential Computing — Remote Attestation
- [[OPS-34]] · Container Management — Policies and Procedures
- [[OPS-35]] · Container Management — Implementation

### 07. Identity and Access Management (IAM) · 9 Kriterien

- [[IAM-01]] · Policy for Identities and Access Rights
- [[IAM-02]] · Granting and Change of Identities and Access Rights
- [[IAM-03]] · Risk-Based Procedure for Locking and Withdrawal of Identities
- [[IAM-04]] · Withdrawal or Adjustment of Access Rights on Task Change
- [[IAM-05]] · Regular Review of Access Rights
- [[IAM-06]] · Privileged Access Rights
- [[IAM-07]] · Access to Cloud Service Customer Data
- [[IAM-08]] · Authentication Mechanisms
- [[IAM-09]] · Confidentiality of Authentication Information

### 08. Cryptography and Key Management (CRY) · 19 Kriterien

- [[CRY-01]] · Policy for the Use of Cryptographic Mechanisms
- [[CRY-02]] · Cryptographic Change Management
- [[CRY-03]] · Review of Cryptography Practices
- [[CRY-04]] · Protection of Data for Transmission (Transport Protection)
- [[CRY-05]] · Encryption of Sensitive Data at Rest
- [[CRY-06]] · Secure Key Generation
- [[CRY-07]] · Rotation of Cryptographic Keys
- [[CRY-08]] · Public-Key Certificate Issuance
- [[CRY-09]] · Secure Key Provisioning
- [[CRY-10]] · Secure Storage of Keys
- [[CRY-11]] · Cryptographic Key Archival
- [[CRY-12]] · Cryptographic Key Transition Management
- [[CRY-13]] · Handling of Compromised Keys
- [[CRY-14]] · Secure Deactivation of Cryptographic Keys
- [[CRY-15]] · Requirements for Pre-Shared Keys
- [[CRY-16]] · Operational Continuity for Key Management
- [[CRY-17]] · Cryptographic Key Lifecycle Management
- [[CRY-18]] · Usage of External Key Management Systems
- [[CRY-19]] · Secure Handling of Customer Managed Keys

### 09. Communication Security (COS) · 8 Kriterien

- [[COS-01]] · Technical Safeguards
- [[COS-02]] · Security Requirements for Connections in the Cloud Service Provider's Network
- [[COS-03]] · Monitoring of Connections in the Cloud Service Provider's Network
- [[COS-04]] · Cross-Network Access
- [[COS-05]] · Networks for Administration
- [[COS-06]] · Separation of Data Traffic in Jointly Used Network Environments
- [[COS-07]] · Documentation of the Network Topology
- [[COS-08]] · Policies for Data Transmission

### 10. Portability and Interoperability (PI) · 3 Kriterien

- [[PI-01]] · Safety of Input and Output Interfaces
- [[PI-02]] · Contractual Agreements for the Provision of Data
- [[PI-03]] · Secure Deletion of Data

### 11. Procurement, Development and Modification of Information Systems (DEV) · 15 Kriterien

- [[DEV-01]] · Policies for the Development/Procurement of System Components
- [[DEV-02]] · Outsourcing of the Development
- [[DEV-03]] · Policies for Changes to System Components
- [[DEV-04]] · Safety Training and Awareness Programme (Continuous Software Delivery)
- [[DEV-05]] · Design Documentation for Security Features
- [[DEV-06]] · Risk Assessment, Categorisation and Prioritisation of Changes
- [[DEV-07]] · Testing Changes
- [[DEV-08]] · Logging of Changes
- [[DEV-09]] · Version Control
- [[DEV-10]] · Approvals for Provision in the Production Environment
- [[DEV-11]] · Protection of Development and Test Environments
- [[DEV-12]] · Separation of Environments
- [[DEV-13]] · Transparency about Software Components
- [[DEV-14]] · Secure Use of Third Party Hardware and Software
- [[DEV-15]] · Exceptions to the Change Management Process

### 12. Control and Monitoring of Service Providers and Suppliers (SSO) · 8 Kriterien

- [[SSO-01]] · Policies and Procedures for Controlling and Monitoring Service Organisations
- [[SSO-02]] · Risk Assessment of Service Organisations
- [[SSO-03]] · Data Processing of Service Organisations
- [[SSO-04]] · Directory of Service Organisations
- [[SSO-05]] · Monitoring of Compliance with Requirements
- [[SSO-06]] · Contract Termination Strategy for Service Organisations
- [[SSO-07]] · Ensuring Transparency within Service Organisations
- [[SSO-08]] · Controlling Exchanges with Suppliers of Functional Components

### 13. Security Incident Management (SIM) · 6 Kriterien

- [[SIM-01]] · Policy for Security Incident Management
- [[SIM-02]] · Security Incident Response Plans
- [[SIM-03]] · Processing of Security Incidents
- [[SIM-04]] · Documentation and Reporting of Security Incidents
- [[SIM-05]] · Duty of the Personnel to Report Security Incidents
- [[SIM-06]] · Evaluation and Learning Process

### 14. Business Continuity Management (BCM) · 4 Kriterien

- [[BCM-01]] · Business Continuity and Emergency Management System
- [[BCM-02]] · Business Impact Analysis
- [[BCM-03]] · Business Continuity Plans
- [[BCM-04]] · Testing Business Continuity

### 15. Compliance (COM) · 4 Kriterien

- [[COM-01]] · Identification of Applicable Requirements
- [[COM-02]] · Policy for Planning and Conducting Audits
- [[COM-03]] · Internal Audits of the ISMS
- [[COM-04]] · Information on ISS Performance and Management Assessment

### 16. Dealing with Investigation Requests from Government Agencies (INQ) · 4 Kriterien

- [[INQ-01]] · Legal Assessment of Investigation Requests
- [[INQ-02]] · Informing Cloud Service Customers about Investigation Requests
- [[INQ-03]] · Limiting Access to or Disclosure of Data in Investigation Requests
- [[INQ-04]] · Communication of Technical Procedures for Data Disclosure

### 17. Product Safety and Security (PSS) · 12 Kriterien

- [[PSS-01]] · Guidelines and Recommendations for Cloud Service Customers
- [[PSS-02]] · Identification of Vulnerabilities of the Cloud Service
- [[PSS-03]] · Informing Customers about Known Vulnerabilities
- [[PSS-04]] · Error Handling and Logging Mechanisms
- [[PSS-05]] · Authentication Mechanisms
- [[PSS-06]] · Session Management
- [[PSS-07]] · Confidentiality of Authentication Information
- [[PSS-08]] · Roles and Rights Framework
- [[PSS-09]] · Authorisation Mechanisms
- [[PSS-10]] · Software Defined Networking
- [[PSS-11]] · Images for Virtual Machines and Containers
- [[PSS-12]] · Region of Data Processing and Storage

## Statistik

| Bereich                 | Kriterien |   Basic | Sharpening | Complementing |
| ----------------------- | --------: | ------: | ---------: | ------------: |
| GC (General Conditions) |         6 |       — |          — |             — |
| OIS                     |        10 |         |            |               |
| SP                      |         3 |         |            |               |
| HR                      |         8 |         |            |               |
| AM                      |        12 |         |            |               |
| PS                      |         8 |         |            |               |
| OPS                     |        35 |         |            |               |
| IAM                     |         9 |         |            |               |
| CRY                     |        19 |         |            |               |
| COS                     |         8 |         |            |               |
| PI                      |         3 |         |            |               |
| DEV                     |        15 |         |            |               |
| SSO                     |         8 |         |            |               |
| SIM                     |         6 |         |            |               |
| BCM                     |         4 |         |            |               |
| COM                     |         4 |         |            |               |
| INQ                     |         4 |         |            |               |
| PSS                     |        12 |         |            |               |
| **Gesamt**              |   **168** | **462** |     **29** |       **132** |

## Nutzung für Softwareprojekte

Dieser Katalog dient als Referenz für die C5-konforme Umsetzung eines Softwareprojekts. Empfohlene Vorgehensweise:

1. **Scoping**: Anwendungsbereich (Cloud-Service, Datenklassen, Rollen) festlegen und mit [[GC-01]] abgleichen
2. **Gap-Analyse pro Bereich**: Kriterium-Seiten durchgehen, Ist-Zustand gegen Basic + Additional (Sharpening) prüfen
3. **Priorisierung**: Erst Basic-Anforderungen absichern, dann Sharpening/Complementing für höhere Reifegrade
4. **Umsetzung**: Beispiele auf Kriterium-Seiten als Startpunkt, projektspezifisch verfeinern
5. **Nachweisdokumentation**: Pro Unterkriterium Evidenz (Policy, Screenshot, Log-Auszug, Testbericht) verlinken

## Nützliche Dataview-Queries

Wenn das Dataview-Plugin aktiv ist, können strukturierte Übersichten generiert werden:

```dataview
TABLE c5-id, c5-area, status
FROM #c5/kriterium
WHERE status = "unbewertet"
SORT c5-id ASC
```

```dataview
TABLE length(rows) as Anzahl
FROM #c5/kriterium
GROUP BY status
```

## Quelle

- BSI · Federal Office for Information Security · Bonn
- E-Mail: cloudsecurity@bsi.bund.de
- Web: [https://www.bsi.bund.de](https://www.bsi.bund.de)
