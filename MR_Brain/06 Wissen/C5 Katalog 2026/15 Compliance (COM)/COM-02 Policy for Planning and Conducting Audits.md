---
title: COM-02 Policy for Planning and Conducting Audits
project: "[[C5 Katalog 2026]]"
c5-id: COM-02
c5-area: COM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/com
aliases:
  - COM-02
---

# COM-02 · Policy for Planning and Conducting Audits

> [!info] Kontext
> **Bereich:** Compliance (COM) · **Kriterium-ID:** COM-02 · **Unterkriterien:** 4 (2 Basic · 1 Sharpening · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Ein **Audit** ist ein systematischer, unabhängiger und dokumentierter Prozess zur Erlangung objektiver Nachweise und deren objektiver Bewertung, um zu ermitteln, inwieweit die Audit-Kriterien erfüllt sind. Audits können als **interne Audits** (First-Party-Audits) durchgeführt werden — durch oder im Auftrag der Organisation selbst — oder als **externe Audits** (Second-Party- oder Third-Party-Audits).
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass angemessene Reaktionen auf Ausfälle oder Beeinträchtigungen des Cloud-Dienstes durch solche Audits erfolgen. Sofern vertraglich vereinbarte Informations- und Audit-Rechte existieren, stellen die Kunden durch geeignete Kontrollen sicher, dass diese Rechte wahrgenommen werden.

## Unterkriterien

### COM-02.01B — Basic

**Kriterium (EN):**

> The cloud service provider documents and implements an audit programme over multiple years that defines the scope and the frequency of the audits. The audit programme takes into consideration the management of change, policies, and the results of the risk assessment (cf. OIS-07).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter dokumentiert und implementiert ein **Audit-Programm über mehrere Jahre**, das den Umfang und die Häufigkeit der Audits definiert. Das Audit-Programm berücksichtigt Change Management, Richtlinien und die Ergebnisse der Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]).

---

### COM-02.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider documents and implements an audit programme over three years that defines the scope and the frequency of the audits. The audit programme takes into consideration the management of change, policies, and the results of the risk assessment (cf. OIS-07).

**Deutsche Übersetzung:**

Analog zu COM-02.01B, konkretisiert auf ein Audit-Programm über **drei Jahre**.

---

### COM-02.02B — Basic

**Kriterium (EN):**

> Risk-based policies and procedures for planning and conducting audits are documented, communicated and made available in accordance with SP-01 and address the following aspects in order to prevent adversal effects on the operation of the cloud service from the audit:
>
> 1. Restriction to read-only access to system components in accordance with the agreed audit plan and as necessary to perform the activities;
> 2. Activities that may result in outages, degradations of the cloud service or breaches of contractual requirements are performed during scheduled maintenance windows or outside peak periods;
> 3. Logging and monitoring of activities;
> 4. Review of server and network equipment configurations under the responsibility of the cloud service provider;
> 5. Intrusion testing for external access points; and
> 6. Source code reviews of internally developed security features.

**Deutsche Übersetzung:**

Risikobasierte Richtlinien und Verfahren zur Planung und Durchführung von Audits sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und adressieren folgende Aspekte — um nachteilige Auswirkungen auf den Betrieb des Cloud-Dienstes durch das Audit zu vermeiden:

1. Beschränkung auf **Read-Only-Zugriff** auf Systemkomponenten gemäß vereinbartem Audit-Plan und nur soweit zur Durchführung der Aktivitäten erforderlich;
2. Aktivitäten, die zu Ausfällen, Beeinträchtigungen des Cloud-Dienstes oder Verletzungen vertraglicher Anforderungen führen können, werden während geplanter Wartungsfenster oder außerhalb von Spitzenzeiten durchgeführt;
3. Logging und Monitoring der Aktivitäten;
4. Review von Server- und Netzwerkausrüstungs-Konfigurationen im Verantwortungsbereich des Cloud-Diensteanbieters;
5. Intrusion Testing für externe Zugriffspunkte;
6. Source-Code-Reviews intern entwickelter Sicherheitsfunktionen.

---

### COM-02.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider grants its cloud service customers contractually agreed information and audit rights. These rights may be exercised individually or as part of group audits.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter gewährt seinen Cloud-Dienstkunden vertraglich vereinbarte **Informations- und Audit-Rechte**. Diese Rechte können individuell oder im Rahmen von **Gruppen-Audits** ausgeübt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Rolliertes 3-Jahres-Audit-Programm**: Jahr 1 alle Basiskontrollen (Zugangsverwaltung, Backup, Change-Management); Jahr 2 kritische Bereiche (Krypto, Incident Response); Jahr 3 spezielle Themen (Third-Party-Risk, Business Continuity); dazwischen thematische Deep-Dives basierend auf Findings
- **Audit-Sicherheit**: dedizierte Read-Only-Auditor-Accounts mit Zeitfenster; alle Aktivitäten via PAM aufgezeichnet; Live-Monitoring durch Ops-Team; keine Pentests ohne dokumentiertes Rules-of-Engagement + Change Freeze; getrennte Audit-Umgebung wo möglich
- **Kunden-Audit-Rechte** (Complementing): AVV-Standard sieht Group-Audit vor (Krankenhaus-Verbund kann gemeinsam auditieren); Individual-Audit-Recht bei begründetem Anlass; Kosten und Vorlaufzeit im Vertrag; alternativ Bereitstellung aktueller C5-Testate/SOC-2-Reports (Standard-Antwort für 90 % der Anfragen)
- **Standardisierter Audit-Prozess**: dokumentierte Audit-Charter, Kick-off-Meeting, Fieldwork mit Log-Vorbereitung, Reporting mit Findings + Response, Follow-up-Tracking bis Closure; jährlicher Meta-Audit zur Prozess-Verbesserung

## Verwandte Kriterien

- [[COM-01 Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements]]
- [[COM-03 Internal Audits of the Information Security Management System]]
- [[COM-04 Information on Information Security Performance and Management Assessment of the ISMS]]
- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
- [[OIS-07 Risk Management Policy]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
