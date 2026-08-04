---
title: SSO-07 Ensuring Transparency within Service Organisations
project: "[[C5 Katalog 2026]]"
c5-id: SSO-07
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-07
---

# SSO-07 · Ensuring Transparency within Service Organisations

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-07 · **Unterkriterien:** 3 (2 Basic · 1 Sharpening)

## Unterkriterien

### SSO-07.01B — Basic

**Kriterium (EN):**

> The cloud service provider designs, implements and maintains controls to ensure transparency within its service organisations with respect to the following aspects:
>
> 1. Data flow and interfaces between the cloud service provider and service organisations used by the cloud service provider are documented, including measures regarding the secure transmission and access control for data shared with service organisations; and
> 2. Cloud service customers are informed of service organisations used by the cloud service provider for development and operation of the cloud service and what type of data these service organisations and their subcontractors are processing.
>
> Cloud service customers are informed which of the service organisations themselves use subcontractors to process cloud service customer data.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter konzipiert, implementiert und pflegt Kontrollen zur Sicherstellung der Transparenz innerhalb seiner Service-Organisationen bezüglich folgender Aspekte:

1. Datenflüsse und Schnittstellen zwischen Cloud-Diensteanbieter und den genutzten Service-Organisationen sind dokumentiert — einschließlich Maßnahmen bezüglich sicherer Übertragung und Zugangskontrolle für mit Service-Organisationen geteilte Daten;
2. Cloud-Dienstkunden werden über die vom Cloud-Diensteanbieter für Entwicklung und Betrieb des Cloud-Dienstes genutzten Service-Organisationen sowie über die Art der von diesen Service-Organisationen und deren Subunternehmern verarbeiteten Daten informiert.

Cloud-Dienstkunden werden informiert, welche der Service-Organisationen ihrerseits Subunternehmer zur Verarbeitung von Kundendaten nutzen.

**Zusatzinformation (DE):**

Dieses Kriterium adressiert die Notwendigkeit, Supply-Chain-Risiken zu managen (z. B. Service-Organisations-Schwachstellen, Datenverarbeitungs-Praktiken, Compliance-Lücken oder Betriebsstörungen) und diese Risiken an Cloud-Dienstkunden zu kommunizieren, damit diese ihre eigenen Supply-Chain-Risiken effektiv überwachen und verwalten können.

---

### SSO-07.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider designs, implements and maintains controls to ensure transparency within its service organisations with respect to the following aspects:
>
> 1. Data flow and interfaces between the cloud service provider and service organisations used by the cloud service provider are documented, including measures regarding the secure transmission and access control for data shared with service organisations; and
> 2. Cloud service customers are informed of service organisations and their subcontractors used by the cloud service provider for development and operation of the cloud service and what type of data these service organisations and their subcontractors are processing.
>
> Cloud service customers are informed which of the service organisations themselves use subcontractors to process cloud service customer data.

**Deutsche Übersetzung:**

Wie SSO-07.01B, jedoch werden Cloud-Dienstkunden über die Service-Organisationen **und deren Subunternehmer** informiert (nicht nur die direkten Service-Organisationen).

---

### SSO-07.02B — Basic

**Kriterium (EN):**

> The cloud service provider documents this information and reviews its completeness, accuracy and validity at least annually.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter dokumentiert diese Informationen und überprüft **mindestens jährlich** Vollständigkeit, Genauigkeit und Gültigkeit.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Trust-Center im Kunden-Portal**: öffentlich einsehbare Liste aller Auftragsverarbeiter und Sub-Auftragsverarbeiter mit Beschreibung des Dienstes, verarbeiteter Datentypen, geografischem Standort; automatische Notification bei Änderungen
- **Data-Flow-Diagramme** je Vendor: welche Kundendaten fließen wohin? Welche Verschlüsselung? Welche Zugangskontrolle?; wichtig für Kunden-Datenschutz-Folgenabschätzung (DSFA nach DSGVO Art. 35)
- **Transitive Transparenz** (Sharpening): auch Sub-Auftragsverarbeiter zweiter Ebene offengelegt (z. B. Cloud-Anbieter → AWS → AWS-Sub-Auftragsverarbeiter für spezifische Services); Krankenhaus-Kunden erwarten oft diese Tiefe
- **Jährlicher Trust-Review**: Auditor der Kunden können Trust-Center-Daten prüfen; automatische Diff-Reports bei Änderungen; C5-Testat-Abgleich

## Verwandte Kriterien

- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
- [[SSO-04 Directory of Service Organisations]]
- [[SSO-05 Monitoring of Compliance with Requirements]]
- [[COS-08 Policies for Data Transmission]]
- [[GC-01 Information on jurisdiction and locations of data processing and storage|GC-01 · Jurisdiktion und Standorte]]
- [[GC-04 Information on subservice organisations|GC-04 · Subservice Organisations]]
