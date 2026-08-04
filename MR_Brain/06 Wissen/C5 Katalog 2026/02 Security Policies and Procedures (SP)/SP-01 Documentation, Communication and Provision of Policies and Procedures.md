---
title: SP-01 Documentation, Communication and Provision of Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: SP-01
c5-area: SP
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sp
aliases:
  - SP-01
---

# SP-01 · Documentation, Communication and Provision of Policies and Procedures

> [!info] Kontext
> **Bereich:** Security Policies and Procedures (SP)  
> **Kriterium-ID:** SP-01  
> **Unterkriterien:** 4 (4 Basic)

## Unterkriterien

### SP-01.01B — Basic

**Kriterium (EN):**

> Policies and procedures (incl. frameworks and guidelines) are derived from the information security policy and are documented according to a uniform structure. The policies and procedures describe at least the following aspects:
>
> 1. Objectives;
> 2. Scope;
> 3. Roles and responsibilities, including personnel qualification requirements and the establishment of substitution rules;
> 4. Roles and dependencies on other organisations (especially cloud service customers and subservice organisations);
> 5. Steps for the execution of the security strategy; and
> 6. Applicable legal and regulatory requirements.

**Deutsche Übersetzung:**

Richtlinien und Verfahren (einschließlich Rahmenwerke und Guidelines) werden aus der Informationssicherheitsleitlinie abgeleitet und nach einer einheitlichen Struktur dokumentiert. Sie beschreiben mindestens folgende Aspekte:

1. Ziele;
2. Anwendungsbereich;
3. Rollen und Verantwortlichkeiten einschließlich Anforderungen an die Personalqualifikation und Vertretungsregelungen;
4. Rollen und Abhängigkeiten zu anderen Organisationen (insbesondere Cloud-Dienstkunden und Sub-Service-Organisationen);
5. Schritte zur Umsetzung der Sicherheitsstrategie;
6. Anwendbare rechtliche und regulatorische Anforderungen.

**Zusatzinformation (DE):**

Richtlinien und Verfahren sind für die folgenden Basiskriterien erforderlich, in denen die Inhalte jeweils näher spezifiziert werden: [[OIS-02 Information Security Policy|OIS-02]], [[OIS-07 Risk Management Policy|OIS-07]], HR-07 (Remote Working), AM-01 (Asset Management Framework), AM-05 (Nutzung von Assets), PS-01 (Physische Sicherheit), PS-04 (Zutrittssteuerung), PS-08 (Workplace Security), OPS-04 (Malware-Schutz), OPS-06 (Data Backup), OPS-10 (Logging & Monitoring), OPS-11 (Handling of Derived Data), OPS-18 (Vulnerabilities), OPS-19 (Incidents), OPS-27 (Patch Management), OPS-30 (Separation of Datasets), OPS-32 (Confidential Computing), OPS-34 (Container Management), IAM-01 (Identities & Access), IAM-08 (Authentication), CRY-01 (Kryptografie), COS-01 (Technical Safeguards), COS-08 (Data Transmission), DEV-01 (Development), DEV-03 (Changes), DEV-14 (3rd Party / OSS), SSO-01 (Service Organisations), SSO-08 (Suppliers), SIM-01 (Security Incidents), BCM-01 (Business Continuity), COM-02 (Audits), INQ-04 (Data Disclosure).

---

### SP-01.02B — Basic

**Kriterium (EN):**

> The policies and procedures are communicated and made available to all relevant internal and external personnel of the cloud service provider in an appropriate manner.

**Deutsche Übersetzung:**

Die Richtlinien und Verfahren werden allen relevanten internen und externen Mitarbeitenden des Cloud-Diensteanbieters in angemessener Weise kommuniziert und bereitgestellt.

**Zusatzinformation (DE):**

Die Angemessenheit der bedarfsorientierten Kommunikation und Bereitstellung ist an der Größe und Komplexität der Organisation und der Art des angebotenen Cloud-Dienstes zu messen. Mögliche Kriterien sind:

1. Integration von Richtlinien und Verfahren in das Onboarding neuer Mitarbeitender;
2. Schulungs- und Informationskampagnen bei der Einführung neuer bzw. der Überarbeitung bestehender Richtlinien;
3. Form der Bereitstellung.

---

### SP-01.03B — Basic

**Kriterium (EN):**

> The policies and procedures are subject to version control.

**Deutsche Übersetzung:**

Die Richtlinien und Verfahren unterliegen einer Versionskontrolle.

---

### SP-01.04B — Basic

**Kriterium (EN):**

> The policies and procedures are approved by the top management of the cloud service provider or an authorised body.

**Deutsche Übersetzung:**

Die Richtlinien und Verfahren werden von der obersten Leitung des Cloud-Diensteanbieters oder einem autorisierten Gremium freigegeben.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Policy-Framework mit einheitlicher Vorlage** in Confluence/SharePoint: pro Policy die Sektionen „Ziel", „Anwendungsbereich", „Verantwortliche Rolle", „Vertretung", „Prozessschritte", „Compliance-Bezug" (z. B. DSGVO, KRITIS, ISO/IEC 27001-Control-Referenz)
- **Version-Control via Git/DMS**: alle Policy-Dokumente in einem versionierten System mit Freigabeworkflow (z. B. Approval durch CISO über Pull Request in einem Policies-Repo); Historie sichtbar
- **Kommunikation über mehrere Kanäle**: Onboarding-Modul „Woche 1", jährliche Refresher via LMS, Intranet-Newsfeed bei Änderungen, Kundenzugriff auf öffentliche Policies über Trust-Center
- **Freigabe dokumentiert**: pro Policy Freigabestempel „genehmigt durch CISO/Geschäftsführung am tt.mm.jjjj, gültig bis tt.mm.jjjj" — automatisch im DMS mit E-Signatur

## Verwandte Kriterien

- [[OIS-02 Information Security Policy]]
- [[SP-02 Review and Approval of Policies and Procedures]]
- [[SP-03 Exceptions from Existing Policies and Procedures]]
- [[HR-03 Security Training and Awareness Programme|HR-03]] *(noch nicht angelegt)*
