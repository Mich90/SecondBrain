---
title: OIS-08 Application of the Risk Management Policy - Risk Assessment
project: "[[C5 Katalog 2026]]"
c5-id: OIS-08
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-08
---

# OIS-08 · Application of the Risk Management Policy — Risk Assessment

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-08  
> **Unterkriterien:** 9 (6 Basic · 1 Sharpening · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation (gilt für alle Unterkriterien)
> Dieses Kriterium bezieht sich ausschließlich auf Risiken, die im Verantwortungsbereich des Cloud-Diensteanbieters liegen. Risiken, die dem Cloud-Dienstkunden bei der Nutzung des Cloud-Dienstes entstehen, sind nicht abgedeckt. Beim Outsourcing an Service-Organisationen verbleibt die Verantwortung beim Cloud-Diensteanbieter (vgl. Bereich [[C5 Katalog 2026#12. Control and Monitoring of Service Providers and Suppliers (SSO) · 8 Kriterien|SSO]]).
>
> Cloud-Diensteanbieter können etablierte Risikomanagement-Standards nutzen (z. B. **ISO 27005** oder die **ISO 31000-Familie**). Bereits implementierte Risikomanagement-Verfahren dürfen für OIS-08 wiederverwendet werden, um Redundanzen zu reduzieren. Dokumentation von Risiken, Behandlungsplänen und Risikoakzeptanz erfordert keine spezifischen formalen Rahmenwerke — schlanke Dokumentationsformen sind zulässig, wo angemessen.

## Unterkriterien

### OIS-08.01B — Basic

**Kriterium (EN):**

> The cloud service provider performs the risk management process specified by OIS-07 as needed and at least annually.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter führt den in [[OIS-07 Risk Management Policy|OIS-07]] festgelegten Risikomanagement-Prozess bei Bedarf und mindestens jährlich durch.

**Zusatzinformation (EN, Auszug spezifisch):**

> Examples of scenarios in which the risk management process may be executed 'as needed' include, but are not limited to, the following:
>
> 1. Changes to the threat landscape (cf. OIS-05);
> 2. Security incidents or business disruptions;
> 3. Changes to the cloud service provider's legal, regulatory, self-imposed and contractual requirements relevant to the information security of the cloud service (cf. COM-01);
> 4. Changes to the cloud service provider's organisational structure with impact on roles, responsibilties or procedures for provisioning the cloud service;
> 5. Changes to the achitecture of the cloud service (cf. OPS-31);
> 6. Events related to the cloud service provider's service organisations (cf. SSO-05);
> 7. Exceptions to policies or procedures (cf. SP-03); and
> 8. Identification of critical vulnerabilities (cf. OPS-22) or compliance deviations (cf. COM-03).

**Zusatzinformation (DE, Auszug):**

Beispiele für Szenarien, in denen der Risikomanagement-Prozess „bei Bedarf" auszuführen ist, umfassen (nicht abschließend):

1. Änderungen der Bedrohungslage (vgl. [[OIS-05 Threat Intelligence|OIS-05]]);
2. Sicherheitsvorfälle oder Geschäftsunterbrechungen;
3. Änderungen der rechtlichen, regulatorischen, selbst auferlegten und vertraglichen Anforderungen an die Informationssicherheit des Cloud-Dienstes (vgl. [[COM-01 Identification of Applicable Compliance Requirements|COM-01]]);
4. Änderungen der Organisationsstruktur mit Auswirkung auf Rollen, Verantwortlichkeiten oder Verfahren zur Erbringung des Cloud-Dienstes;
5. Änderungen der Architektur des Cloud-Dienstes (vgl. [[OPS-31 Architecture of the Cloud Service|OPS-31]]);
6. Ereignisse im Zusammenhang mit Service-Organisationen (vgl. [[SSO-05 Monitoring of Compliance with Requirements|SSO-05]]);
7. Ausnahmen von Richtlinien oder Verfahren (vgl. [[SP-03 Exceptions from Existing Policies and Procedures|SP-03]]);
8. Identifikation kritischer Schwachstellen (vgl. [[OPS-22 Managing Vulnerabilities - System Component Vulnerability Scans|OPS-22]]) oder Compliance-Abweichungen (vgl. [[COM-03 Internal Audits|COM-03]]).

---

### OIS-08.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider performs the risk management process as specified by OIS-07 as needed and at least annually. The evolution of the risks is monitored and the risk assessments are reviewed correspondingly.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter führt den in [[OIS-07 Risk Management Policy|OIS-07]] festgelegten Risikomanagement-Prozess bei Bedarf und mindestens jährlich durch. Die Entwicklung der Risiken wird überwacht und die Risikobewertungen entsprechend nachgeführt.

---

### OIS-08.02B — Basic

**Kriterium (EN):**

> The following aspects are taken into account when identifying risks, insofar as they are applicable to the cloud service provided and are within the area of responsibility of the cloud service provider:
>
> 1. Processing, storage or transmission of cloud service customer data and cloud service derived data with different protection needs;
> 2. Occurrence of vulnerabilities and incidents in technical protective measures for separating shared resources;
> 3. Attacks via access points, including interfaces accessible from public networks and accidentally exposed interfaces;
> 4. Dependencies on service organisations;
> 5. An encryption and key management risk programme which addresses the risks of unauthorised disclosure, modification, destruction, or information loss of cryptographic keys; and
> 6. Separation of cloud service customers and their data within systems, networks and storage.

**Deutsche Übersetzung:**

Bei der Identifikation von Risiken werden die folgenden Aspekte berücksichtigt, soweit sie auf den erbrachten Cloud-Dienst anwendbar sind und im Verantwortungsbereich des Cloud-Diensteanbieters liegen:

1. Verarbeitung, Speicherung oder Übertragung von Cloud-Kundendaten und abgeleiteten Daten mit unterschiedlichem Schutzbedarf;
2. Auftreten von Schwachstellen und Vorfällen in technischen Schutzmaßnahmen zur Trennung gemeinsam genutzter Ressourcen;
3. Angriffe über Zugangspunkte, einschließlich aus öffentlichen Netzen erreichbarer Schnittstellen und versehentlich exponierter Schnittstellen;
4. Abhängigkeiten von Service-Organisationen;
5. Ein Programm zum Risikomanagement für Verschlüsselung und Schlüsselverwaltung, das die Risiken unautorisierter Offenlegung, Modifikation, Zerstörung oder des Verlusts von kryptografischen Schlüsseln adressiert;
6. Trennung von Cloud-Dienstkunden und deren Daten in Systemen, Netzen und Speicher.

**Zusatzinformation (DE, spezifisch):**

Gemeinsam genutzte Ressourcen sind z. B. Netze, RAM oder Speicher.

Bei der Bestimmung des Schutzbedarfs von Kundendaten sind auf diese anwendbare regulatorische Anforderungen zu berücksichtigen, wie **PCI-DSS**, **HIPAA**, **DORA** (Verordnung zur digitalen Betriebsstabilität im Finanzsektor), **NIS-2-Richtlinie** und **KRITIS**.

---

### OIS-08.03B — Basic

**Kriterium (EN):**

> Policies and procedures covering risk assessments relevant for the delivery and operation of the cloud service are implemented by the cloud service provider.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter setzt Richtlinien und Verfahren um, die Risikobewertungen für die Erbringung und den Betrieb des Cloud-Dienstes abdecken.

---

### OIS-08.04B — Basic

**Kriterium (EN):**

> The risk assessment's results are provided to relevant internal parties.

**Deutsche Übersetzung:**

Die Ergebnisse der Risikobewertung werden relevanten internen Parteien bereitgestellt.

**Zusatzinformation (DE, spezifisch):**

Relevante interne Parteien können die Geschäftsführung und die Security-Teams des Cloud-Diensteanbieters sein.

---

### OIS-08.05B — Basic

**Kriterium (EN):**

> Relevant external parties are provided with information, specific to the parties' purposes, resulting from the risk assessments.

**Deutsche Übersetzung:**

Relevante externe Parteien erhalten Informationen aus den Risikobewertungen, spezifisch auf den Zweck der jeweiligen Partei zugeschnitten.

**Zusatzinformation (DE, spezifisch):**

Relevante externe Parteien können Cloud-Dienstkunden, Sub-Service-Organisationen und Regulierungsbehörden sein.

Relevante Informationen in diesem Kontext sind z. B. Informationen über identifizierte Schwachstellen, Sicherheitsvorfälle und Threat Intelligence.

Der Cloud-Diensteanbieter kann diese Informationen über sein SSRM (vgl. [[OIS-03 Interfaces and Dependencies|OIS-03]]), seine Dokumentation und Richtlinien (vgl. [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]]) oder seine Prozesse zur Information über bekannte Schwachstellen (vgl. [[PSS-03 Communication of Known Vulnerabilities|PSS-03]]) zugänglich machen.

---

### OIS-08.06B — Basic

**Kriterium (EN):**

> The analysis, evaluation and treatment of risks, including the approval of actions and acceptance of residual risks, is reviewed by the risk owners for adequacy at least annually. In addition, in case of significant changes to the cloud service, a review is carried out focusing on the parts of the risk assessment relevant to the change.

**Deutsche Übersetzung:**

Analyse, Bewertung und Behandlung von Risiken einschließlich der Freigabe von Maßnahmen und der Akzeptanz von Restrisiken werden von den Risikoeigentümern mindestens jährlich auf Angemessenheit überprüft. Zusätzlich wird bei wesentlichen Änderungen am Cloud-Dienst eine Überprüfung durchgeführt, die auf die von der Änderung betroffenen Teile der Risikobewertung fokussiert.

---

### OIS-08.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider integrates information security risks into a documented Enterprise Risk Management (ERM) programme which addresses the following aspects:
>
> 1. Integration of information security risks at the enterprise level to promote information security risk-awareness across the entire organisation;
> 2. Leadership awareness and support for identification, analysis and treatment of information security risks to foster continuous improvement; and
> 3. Consideration of the cloud service provider's strategic objectives when managing risks to align risk treatment with the organisation's goals.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter integriert Informationssicherheits-Risiken in ein dokumentiertes **Enterprise Risk Management (ERM)**-Programm, das die folgenden Aspekte adressiert:

1. Integration von Informationssicherheits-Risiken auf Unternehmensebene, um das Bewusstsein für Informationssicherheits-Risiken in der gesamten Organisation zu fördern;
2. Bewusstsein und Unterstützung der Führungsebene für Identifikation, Analyse und Behandlung von Informationssicherheits-Risiken zur Förderung kontinuierlicher Verbesserung;
3. Berücksichtigung der strategischen Ziele des Cloud-Diensteanbieters beim Umgang mit Risiken, um die Risikobehandlung mit den Unternehmenszielen abzustimmen.

---

### OIS-08.02AC — Additional (Complementing)

**Kriterium (EN):**

> When identifying risks, the cloud service provider also takes into account the detection of unusual and harmful actions of internal threat actors, insofar as it is applicable to the cloud service provided and is within the area of responsibility of the cloud service provider.

**Deutsche Übersetzung:**

Bei der Identifikation von Risiken berücksichtigt der Cloud-Diensteanbieter auch die Erkennung ungewöhnlicher und schädlicher Handlungen interner Bedrohungsakteure (Insider Threats), soweit anwendbar auf den erbrachten Cloud-Dienst und im Verantwortungsbereich des Cloud-Diensteanbieters.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Jährliches Risk Assessment** mit unterjährigen Trigger-Events (Threat-Landscape-Änderungen, Vorfälle, Architektur-Änderungen, neue Kundensegmente wie KRITIS-Kliniken); dokumentierter Prozess im ISMS mit Verantwortlichkeiten und Terminen
- **Risiko-Katalog spezifisch für Gesundheitsdaten** erweitern: Insider-Threat durch privilegierte Admins mit Zugriff auf Patientendaten, Datenabfluss bei Wartungsvorgängen, Schwachstellen in Multi-Tenant-Isolierung, unzureichende Krypto-Schlüsselverwaltung, DSGVO-Meldepflicht-Risiken
- **Kommunikation nach außen** über kundenspezifisches Trust-Portal: aktuelle CVEs mit Impact-Bewertung, Sicherheitsmaßnahmen-Roadmap; wichtig für Kunden, die eigene Risikobewertungen (BIA) durchführen müssen
- **Insider-Threat-Erkennung** über UEBA-Tools (User & Entity Behavior Analytics) integrieren: Anomalie-Detection bei ungewöhnlichen Zugriffsmustern auf Patientendaten (z. B. Massendownload, Zugriff außerhalb Business Hours, Zugriff auf VIP-Datensätze)

## Verwandte Kriterien

- [[OIS-07 Risk Management Policy]]
- [[OIS-09 Application of the Risk Management Policy - Risk Treatment]]
- [[OIS-05 Threat Intelligence]]
- [[OIS-03 Interfaces and Dependencies]]
- [[SP-03 Exceptions from Existing Policies and Procedures|SP-03]] *(noch nicht angelegt)*
- [[COM-01 Identification of Applicable Compliance Requirements|COM-01]] *(noch nicht angelegt)*
- [[SSO-05 Monitoring of Compliance with Requirements|SSO-05]] *(noch nicht angelegt)*
