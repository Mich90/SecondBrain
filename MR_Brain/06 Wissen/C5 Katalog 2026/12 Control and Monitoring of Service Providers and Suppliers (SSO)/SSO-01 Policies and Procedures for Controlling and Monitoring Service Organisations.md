---
title: SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations
project: "[[C5 Katalog 2026]]"
c5-id: SSO-01
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-01
---

# SSO-01 · Policies and Procedures for Controlling and Monitoring Service Organisations

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-01 · **Unterkriterien:** 3 (1 Basic · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Das Basiskriterium gilt für alle Service-Organisationen des Cloud-Diensteanbieters — unabhängig davon, ob die „Inclusive"- oder „Carve-out"-Methode angewandt wird. Die zusätzlichen Kriterien gelten nur für die Service-Organisationen, die als **Subservice Organisations** betrachtet werden.
>
> Berichte unabhängiger Prüfer zur Angemessenheit von Design und operativer Wirksamkeit des dienstleistungsbezogenen internen Kontrollsystems folgen typischerweise Standards wie **ISAE 3402**, **IDW PS 951**, **SOC 2** oder **BSI C5**.

## Unterkriterien

### SSO-01.01B — Basic

**Kriterium (EN):**

> Policies and procedures for controlling and monitoring service organisations whose services contribute to the development or operation of the cloud service are documented, communicated and provided in accordance with SP-01 with respect to the following aspects:
>
> 1. Requirements for the assessment of risks resulting from the procurement of third-party services;
> 2. Requirements for the classification of service organisations based on the risk assessment by the cloud service provider and the determination of whether the service organisation is a subservice organisation;
> 3. Information security requirements for the processing, storage or transmission of information by service organisations based on the established rules of technology, and under consideration of the criteria in this catalogue;
> 4. Information security awareness and training requirements for personnel;
> 5. Applicable legal and regulatory requirements;
> 6. Requirements for dealing with vulnerabilities, security incidents and incidents;
> 7. Specifications for the contractual agreement of these requirements;
> 8. Specifications for the monitoring of these requirements; and
> 9. Specifications for applying these requirements also to subservice organisations used by the service organisations, insofar as the services provided by these subservice organisations also contribute to the development or operation of the cloud service.

**Deutsche Übersetzung:**

Richtlinien und Verfahren für die Steuerung und Überwachung von Service-Organisationen, deren Dienste zur Entwicklung oder zum Betrieb des Cloud-Dienstes beitragen, sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und beschreiben:

1. Anforderungen an die Bewertung von Risiken aus der Beschaffung von Drittanbieter-Diensten;
2. Anforderungen an die Klassifizierung von Service-Organisationen basierend auf der Risikobewertung durch den Cloud-Diensteanbieter und die Bestimmung, ob die Service-Organisation eine **Subservice Organisation** ist;
3. Informationssicherheits-Anforderungen für Verarbeitung, Speicherung oder Übertragung von Informationen durch Service-Organisationen — basierend auf den anerkannten Regeln der Technik und unter Berücksichtigung der Kriterien dieses Katalogs;
4. Anforderungen an Informationssicherheits-Awareness und Trainings für Personal;
5. Anwendbare rechtliche und regulatorische Anforderungen;
6. Anforderungen an den Umgang mit Schwachstellen, Sicherheitsvorfällen und Vorfällen;
7. Spezifikationen für die vertragliche Vereinbarung dieser Anforderungen;
8. Spezifikationen für die Überwachung dieser Anforderungen;
9. Spezifikationen für die Anwendung dieser Anforderungen auch auf Subservice Organisations, die von den Service-Organisationen genutzt werden — sofern die von diesen Subservice Organisations erbrachten Dienste ebenfalls zur Entwicklung oder zum Betrieb des Cloud-Dienstes beitragen.

---

### SSO-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> Subservice organisations of the cloud service provider are contractually obliged to provide regular reports by independent auditors on the suitability of the design and operating effectiveness of their service-related system of internal control system that allow the cloud service provider to determine whether the subservice organisation designed and operated controls that are commensurate with the expected complementary subservice organisation controls (CSOC).

**Deutsche Übersetzung:**

Subservice Organisations des Cloud-Diensteanbieters sind vertraglich verpflichtet, regelmäßige Berichte unabhängiger Prüfer über die Angemessenheit von Design und operativer Wirksamkeit ihres dienstleistungsbezogenen internen Kontrollsystems bereitzustellen. Diese ermöglichen dem Cloud-Diensteanbieter zu bestimmen, ob die Subservice Organisation Kontrollen entworfen und betrieben hat, die den erwarteten **Complementary Subservice Organisation Controls (CSOC)** entsprechen.

---

### SSO-01.02AC — Additional (Complementing)

**Kriterium (EN):**

> In case no such reports can be provided, the cloud service provider agrees appropriate information and audit rights to assess the design and operations of the service-related system of internal control regarding the expected CSOC.

**Deutsche Übersetzung:**

Falls keine solchen Berichte bereitgestellt werden können, vereinbart der Cloud-Diensteanbieter angemessene Informations- und Audit-Rechte, um Design und Betrieb des dienstleistungsbezogenen internen Kontrollsystems bezüglich der erwarteten CSOCs zu bewerten.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Vendor-Management-Policy** mit klarem Klassifizierungs-Schema: Kritisch (IaaS-Provider wie AWS/Azure/GCP, KMS-Provider) → Regulär (SaaS-Tools ohne Patientendaten-Zugriff) → Standard (Office-Tools, HR-Systeme); Anforderungen pro Klasse eskalieren
- **Contractual Requirements** je Klasse: für kritische Vendoren SOC 2 Type II oder BSI C5-Testat + DPA + § 203 StGB-Verpflichtung; Standard-Software-Vendoren nur DPA + Sicherheits-Fragebogen; Klasse-übergreifende Mindeststandards
- **Certificate-Collection-Prozess** (Complementing): jährliche Anforderung aktueller SOC 2, ISO 27001, BSI C5-Testate; Review durch Security Team gegen erwartete CSOCs; Findings-Tracking und Follow-up bei Abweichungen
- **Audit-Rights** in Verträgen: bei fehlenden Testaten Vor-Ort-Audit-Recht oder Fragebogen-basiertes Assessment; für Vendoren im DACH-Raum oft einfacher zu vereinbaren; Krankenhäuser als Kunden erwarten diese Transparenz weiter

## Verwandte Kriterien

- [[SSO-02 Risk Assessment of Service Organisations]]
- [[SSO-04 Directory of Service Organisations]]
- [[SSO-05 Monitoring of Compliance with Requirements]]
- [[SSO-07 Ensuring Transparency within Service Organisations]]
- [[DEV-02 Outsourcing of the Development]]
- [[DEV-14 Secure Use of Third Party Hardware and Software]]
- [[OIS-07 Risk Management Policy]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
