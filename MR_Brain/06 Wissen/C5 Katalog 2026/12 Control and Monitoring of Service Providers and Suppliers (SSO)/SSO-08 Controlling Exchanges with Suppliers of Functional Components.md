---
title: SSO-08 Controlling Exchanges with Suppliers of Functional Components
project: "[[C5 Katalog 2026]]"
c5-id: SSO-08
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-08
---

# SSO-08 · Controlling Exchanges with Suppliers of Functional Components

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-08 · **Unterkriterien:** 3 (3 Basic)

> [!note] Gemeinsame Zusatzinformation
> Ein Lieferant einer funktionalen Komponente ist typischerweise eine Service-Organisation des Cloud-Diensteanbieters. Die Autorisierung für die Übertragung kann automatisiert erfolgen. Vom Lieferanten bereitgestellte Inhalte beziehen sich auf **Updates** der funktionalen Komponenten.

## Unterkriterien

### SSO-08.01B — Basic

**Kriterium (EN):**

> When functional components used for the provision of the cloud service may directly or indirectly access cloud service customer data, the cloud service provider defines and implements a policy according to SP-01 that does not allow a direct exchange between such components and their suppliers.

**Deutsche Übersetzung:**

Wenn funktionale Komponenten, die zur Erbringung des Cloud-Dienstes genutzt werden, direkt oder indirekt auf Kundendaten zugreifen können, definiert und implementiert der Cloud-Diensteanbieter eine Policy gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]], die einen **direkten Austausch** zwischen solchen Komponenten und ihren Lieferanten **nicht erlaubt**.

---

### SSO-08.02B — Basic

**Kriterium (EN):**

> In addition, procedures are defined and implemented according to SP-01 that require the cloud service provider to authorise any content provided by a supplier for its functional components or to be sent from a functional component to its supplier. The authorisation takes place before the content is transferred and for each transfer.

**Deutsche Übersetzung:**

Zusätzlich sind Verfahren gemäß SP-01 definiert und implementiert, die vom Cloud-Diensteanbieter verlangen, jeden Inhalt zu autorisieren, der von einem Lieferanten für seine funktionalen Komponenten bereitgestellt oder von einer funktionalen Komponente an den Lieferanten gesendet wird. Die Autorisierung erfolgt **vor der Übertragung** und **für jede Übertragung**.

---

### SSO-08.03B — Basic

**Kriterium (EN):**

> When a procedure for authorising content before its transfer is automated, the cloud service provider implements it using a solution that maintains traces of:
>
> 1. The operations that are proposed by the functional component's supplier;
> 2. The verification that is performed to authorise the content before its transfer; and
> 3. The transfers, both incoming and outgoing, that are effectively performed.

**Deutsche Übersetzung:**

Wenn ein Verfahren zur Autorisierung von Inhalten vor deren Übertragung automatisiert ist, implementiert der Cloud-Diensteanbieter dieses mit einer Lösung, die Spuren nachhält von:

1. Den vom Lieferanten der funktionalen Komponente vorgeschlagenen Operationen;
2. Der zur Autorisierung des Inhalts vor Übertragung durchgeführten Verifikation;
3. Den tatsächlich durchgeführten Übertragungen — sowohl eingehend als auch ausgehend.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **No-Direct-Callhome-Policy**: Software-Komponenten von Third-Party-Vendoren (z. B. Anti-Malware-Engine, Analytics-Bibliothek) dürfen nicht eigenständig Daten an den Hersteller senden; Egress-Firewall blockt direkten Vendor-Verkehr
- **Update-Proxy**: alle Software-Updates von Vendoren gehen erst durch internen Proxy/Repository (interne Artifact-Registry); dort werden sie geprüft (Signatur-Validierung, Malware-Scan, ggf. Sandbox-Test) und dann kontrolliert freigegeben
- **Bidirektionale Kontrolle**: eingehende Updates werden geprüft (SBOM-Diff, Vulnerability-Scan, Behavior-Analyse); ausgehende Telemetrie (bei Bedarf für Support) wird zuerst durch DLP-Proxy geprüft (keine Patientendaten) und autorisiert
- **Audit-Trail vollständig**: jedes Update, jede Telemetrie-Übertragung im Log; Verantwortlicher für Autorisierung namentlich; Grund und Umfang dokumentiert; automatische Reports an CISO monatlich

## Verwandte Kriterien

- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
- [[SSO-03 Data Processing of Service Organisations]]
- [[SSO-05 Monitoring of Compliance with Requirements]]
- [[DEV-13 Transparency about Software Components]]
- [[DEV-14 Secure Use of Third Party Hardware and Software]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[OPS-28 Managing Vulnerabilities - Patch Management Implementation]]
- [[COS-08 Policies for Data Transmission]]
