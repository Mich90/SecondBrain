---
title: DEV-02 Outsourcing of the Development
project: "[[C5 Katalog 2026]]"
c5-id: DEV-02
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-02
---

# DEV-02 · Outsourcing of the Development

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-02 · **Unterkriterien:** 4 (2 Basic · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation
> **Outsourced Development** bezeichnet die Entwicklung von Systemkomponenten, die speziell für den Cloud-Dienst genutzt werden, durch eine Service-Organisation des Cloud-Diensteanbieters. Die Entwicklung erfolgt gemäß den Prozessen der Service-Organisation.

## Unterkriterien

### DEV-02.01B — Basic

**Kriterium (EN):**

> In the case of outsourced development of the cloud service (or individual system components), specifications regarding the following aspects are contractually agreed between the cloud service provider and the service organisation:
>
> 1. Security in software development (requirements, design, implementation, tests and verifications) in accordance with recognised standards and methods, ensuring a security level equivalent to that of the cloud service provider's internal development;
> 2. Acceptance testing of the quality of the services provided in accordance with the agreed functional and non-functional requirements; and
> 3. Providing evidence that sufficient verifications have been carried out to rule out the existence of known vulnerabilities.

**Deutsche Übersetzung:**

Bei Outsourcing der Entwicklung des Cloud-Dienstes (oder einzelner Systemkomponenten) werden zwischen Cloud-Diensteanbieter und Service-Organisation folgende Aspekte vertraglich vereinbart:

1. Sicherheit in der Softwareentwicklung (Anforderungen, Design, Implementierung, Tests und Verifikationen) gemäß anerkannten Standards und Methoden, mit einem Sicherheitsniveau äquivalent zur internen Entwicklung des Cloud-Diensteanbieters;
2. Abnahmetests der Qualität der bereitgestellten Dienste gemäß den vereinbarten funktionalen und nicht-funktionalen Anforderungen;
3. Bereitstellung von Nachweisen, dass ausreichende Verifikationen durchgeführt wurden, um das Vorhandensein bekannter Schwachstellen auszuschließen.

---

### DEV-02.02B — Basic

**Kriterium (EN):**

> Before outsourcing the development of the cloud service or components thereof, the cloud service provider conducts a risk assessment according to SSO-02 that takes into account at least the following aspects:
>
> 1. Management of source code by the service organisation;
> 2. Accessability of source code to the cloud service provider;
> 3. Human resource procedures implemented by the service organisation;
> 4. Required access to the development, test and preproduction environments of the cloud service provider; and
> 5. Management of subcontractors engaged by the service organisation.

**Deutsche Übersetzung:**

Vor Outsourcing der Entwicklung des Cloud-Dienstes oder von Komponenten führt der Cloud-Diensteanbieter eine Risikobewertung gemäß [[SSO-02 Risk Assessment of Service Providers and Suppliers|SSO-02]] *(noch nicht angelegt)* durch, die mindestens folgende Aspekte berücksichtigt:

1. Management des Quellcodes durch die Service-Organisation;
2. Zugänglichkeit des Quellcodes für den Cloud-Diensteanbieter;
3. Von der Service-Organisation implementierte HR-Verfahren;
4. Erforderlicher Zugriff auf Entwicklungs-, Test- und Preproduction-Umgebungen des Cloud-Diensteanbieters;
5. Management von Subunternehmern der Service-Organisation.

---

### DEV-02.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider documents and implements a procedure that enables the supervision and control of the outsourced development activity to ensure that it complies with the secure development policy of the cloud service provider, and that the security level achieved through it matches the security level achieved through internal development.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter dokumentiert und implementiert ein Verfahren zur Überwachung und Steuerung der ausgelagerten Entwicklungsaktivität, um sicherzustellen, dass diese der Secure-Development-Policy des Cloud-Diensteanbieters entspricht und das erreichte Sicherheitsniveau dem Niveau der internen Entwicklung gleichkommt.

---

### DEV-02.02AC — Additional (Complementing)

**Kriterium (EN):**

> When a change contains work from outsourced development, the cloud service provider's personnel runs the tests needed to decide whether the change can be deployed.

**Deutsche Übersetzung:**

Wenn eine Änderung Arbeit aus ausgelagerter Entwicklung enthält, führt das Personal des Cloud-Diensteanbieters die Tests durch, die zur Entscheidung erforderlich sind, ob die Änderung ausgerollt werden kann.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Outsourcing-Vertrag** mit Anforderungen: Auftragnehmer verpflichtet zu S-SDLC nach ISO 27034, SAST-Nachweis pro Release, Personal-Prüfung analog zu HR-01, Verpflichtung auf § 203 StGB, Standort DE/EU für Entwicklung von Patientendaten-relevanten Komponenten
- **Risikobewertung Outsourcing**: Nearshoring (Rumänien, Polen) DSGVO-konform ohne besondere Schritte; Offshoring (Indien, Ukraine) mit DPA + Standard Contractual Clauses + zusätzliche technische Kontrollen (Zugriff nur via VDI ohne Datenexport); Subunternehmer explizit im Vertrag geregelt
- **Code-Ownership**: Cloud-Anbieter behält Read/Write-Rechte am Code (Git-Repos beim Anbieter, nicht beim Auftragnehmer); Escrow-Vereinbarung bei kritischem Code; Backup der Repos in eigener Infrastruktur
- **Test-Governance vor Deployment**: interne Security-Reviews (SAST, DAST, Manual Code Review, Threat Model Review) durch Cloud-Anbieter-Team vor Merge in Main; automatisches Blocking bei fehlenden Tests; End-to-End-Tests inkl. Security-Testing durch Anbieter-Personal

## Verwandte Kriterien

- [[DEV-01 Policies for the Development/Procurement of System Components]]
- [[DEV-06 Risk Assessment, Categorisation and Prioritisation of Changes]]
- [[DEV-07 Testing Changes]]
- [[DEV-10 Approvals for Provision in the Production Environment]]
- [[DEV-14 Secure Use of Third Party Hardware and Software]]
- [[HR-01 Verification of Qualification and Trustworthiness]]
- [[SSO-01 Policies and Procedures for Controlling and Monitoring Third-Parties|SSO-01]] *(noch nicht angelegt)*
- [[SSO-02 Risk Assessment of Service Providers and Suppliers|SSO-02]] *(noch nicht angelegt)*
