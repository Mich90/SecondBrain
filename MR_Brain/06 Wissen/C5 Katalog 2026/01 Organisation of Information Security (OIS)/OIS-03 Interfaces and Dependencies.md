---
title: OIS-03 Interfaces and Dependencies
project: "[[C5 Katalog 2026]]"
c5-id: OIS-03
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-03
---

# OIS-03 · Interfaces and Dependencies

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-03  
> **Unterkriterien:** 5 (5 Basic)  
> **Zusätzlich:** Complementary Customer Criteria für alle Unterkriterien

## Unterkriterien

### OIS-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider establishes, documents, and communicates a Shared Security Responsibility Model (SSRM) to define and manage interfaces and dependencies between cloud service delivery activities performed by the cloud service provider and those performed by cloud service customers.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter etabliert, dokumentiert und kommuniziert ein Shared Security Responsibility Model (SSRM), um Schnittstellen und Abhängigkeiten zwischen den Aktivitäten der Cloud-Diensteerbringung des Cloud-Diensteanbieters und denen der Cloud-Dienstkunden zu definieren und zu steuern.

**Zusatzinformation (EN):**

> Third parties in the sense of this basic criterion are, e.g. cloud service customers and service organisations (including cloud service broker).
> A SSRM provides a consolidated view of the key interfaces and dependencies between the cloud service provider and third parties. Detailed information on interfaces and dependencies can be defined in separate documents that are referenced in the SSRM, such as guidelines and procedures. For example, cloud service customers' obligations to cooperate should be described in service descriptions and contracts.
> The cloud service provider can present the underlying Shared Responsibility Model of their cloud service in the guidelines and procedures to help cloud service customers understand their roles and responsibilities in terms of security and operational management.
>
> If cloud services are delivered through a cloud service broker, the SSRM should clearly delineate responsibilities among the cloud service provider, the cloud service broker and the cloud service customer, in particular:
>
> 1. Data ownership and processing boundaries;
> 2. Security control implementation by each party;
> 3. Incident notification and escalation paths; and
> 4. Compliance attestation scope.
>
> The cloud service provider can define and document the interfaces and dependencies described in the basic criterion in guidelines and procedures. For example, cloud service customers' obligations to cooperate should be described in service descriptions and contracts (or appendices thereof).
>
> The cloud service provider can leverage existing documentation, such as guidelines, contractual agreements or procedures to present the underlying Shared Responsibility Model of their cloud service, thereby clarifying cloud service customers' security and operation responsibilities.

**Zusatzinformation (DE):**

Dritte Parteien im Sinne dieses Basiskriteriums sind z. B. Cloud-Dienstkunden und Service-Organisationen (einschließlich Cloud Service Broker).

Ein SSRM bietet eine konsolidierte Sicht auf die wesentlichen Schnittstellen und Abhängigkeiten zwischen dem Cloud-Diensteanbieter und Dritten. Detaillierte Informationen zu Schnittstellen und Abhängigkeiten können in separaten Dokumenten definiert werden, die im SSRM referenziert werden, z. B. Richtlinien und Verfahren. Kooperationspflichten der Cloud-Dienstkunden sollten in Servicebeschreibungen und Verträgen beschrieben sein.

Der Cloud-Diensteanbieter kann das dem Cloud-Dienst zugrundeliegende Shared Responsibility Model in seinen Richtlinien und Verfahren darstellen, um den Cloud-Dienstkunden zu helfen, ihre Rollen und Verantwortlichkeiten im Hinblick auf Sicherheit und operatives Management zu verstehen.

Werden Cloud-Dienste über einen Cloud Service Broker erbracht, sollte das SSRM die Verantwortlichkeiten zwischen Cloud-Diensteanbieter, Cloud Service Broker und Cloud-Dienstkunde klar abgrenzen, insbesondere:

1. Dateneigentum und Verarbeitungsgrenzen;
2. Umsetzung der Sicherheitsmaßnahmen durch jede Partei;
3. Wege zur Benachrichtigung und Eskalation von Vorfällen;
4. Umfang der Compliance-Attestierung.

Der Cloud-Diensteanbieter kann die im Basiskriterium beschriebenen Schnittstellen und Abhängigkeiten in Richtlinien und Verfahren definieren und dokumentieren. Kooperationspflichten der Cloud-Dienstkunden sollten z. B. in Servicebeschreibungen und Verträgen (bzw. deren Anhängen) beschrieben werden.

Der Cloud-Diensteanbieter kann bestehende Dokumentation wie Richtlinien, vertragliche Vereinbarungen oder Verfahren nutzen, um das zugrundeliegende Shared Responsibility Model seines Cloud-Dienstes darzustellen und damit die Sicherheits- und Betriebsverantwortlichkeiten der Cloud-Dienstkunden zu klären.

**Complementary Customer Criteria (EN):**

> Cloud service customers ensure with suitable controls that the guidelines and requirements for compliance with the contractual agreements with the cloud service provider (i.e., responsibilities, cooperation obligations and interfaces for reporting security incidents) are adequately defined, documented and set up.

**Complementary Customer Criteria (DE):**

Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die Richtlinien und Anforderungen zur Einhaltung der vertraglichen Vereinbarungen mit dem Cloud-Diensteanbieter (d. h. Verantwortlichkeiten, Kooperationspflichten und Schnittstellen zur Meldung von Sicherheitsvorfällen) angemessen definiert, dokumentiert und eingerichtet sind.

---

### OIS-03.02B — Basic

**Kriterium (EN):**

> The SSRM documentation clearly defines the responsibilities between both parties for handling vulnerabilities, security incidents, and incidents. The type and scope of the documentation is geared towards the information requirements of the subject matter experts of the affected organisations in order to carry out the activities appropriately (e.g. definition of roles and responsibilities in guidelines, description of cooperation obligations in service descriptions and contracts).

**Deutsche Übersetzung:**

Die SSRM-Dokumentation definiert die Verantwortlichkeiten zwischen beiden Parteien für den Umgang mit Schwachstellen, Sicherheitsvorfällen und (allgemeinen) Vorfällen eindeutig. Art und Umfang der Dokumentation richten sich nach den Informationsanforderungen der Fachexperten der betroffenen Organisationen, damit die Aktivitäten angemessen durchgeführt werden können (z. B. Definition von Rollen und Verantwortlichkeiten in Richtlinien, Beschreibung von Kooperationspflichten in Servicebeschreibungen und Verträgen).

*(Zusatzinformation und Complementary Customer Criteria: sinngemäß identisch zu OIS-03.01B — siehe oben.)*

---

### OIS-03.03B — Basic

**Kriterium (EN):**

> The cloud service provider regularly reviews and validates the SSRM documentation in accordance with SP-02 to ensure its accuracy and relevance for all cloud service offerings.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter überprüft und validiert die SSRM-Dokumentation regelmäßig gemäß [[SP-02 Review and Approval of Policies and Procedures|SP-02]], um deren Richtigkeit und Relevanz für alle Cloud-Dienst-Angebote sicherzustellen.

**Zusatzinformation (DE) — zusätzlicher Aspekt:**

Durch die Aufrechterhaltung eines aktuellen und klar kommunizierten SSRM stellt der Cloud-Diensteanbieter ein umfassendes Verständnis der Sicherheitsverantwortlichkeiten sicher und fördert eine sichere und zuverlässige Cloud-Umgebung für alle Stakeholder.

*(Weitere Zusatzinformation und Complementary Customer Criteria: sinngemäß identisch zu OIS-03.01B.)*

---

### OIS-03.04B — Basic

**Kriterium (EN):**

> The cloud service provider implements, operates, and reviews the SSRM components for which it is responsible, ensuring adherence to the defined security measures.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter implementiert, betreibt und überprüft die SSRM-Komponenten, für die er verantwortlich ist, und stellt die Einhaltung der definierten Sicherheitsmaßnahmen sicher.

*(Zusatzinformation und Complementary Customer Criteria: sinngemäß identisch zu OIS-03.01B — siehe oben.)*

---

### OIS-03.05B — Basic

**Kriterium (EN):**

> The communication of changes to the SSRM, interfaces and dependencies takes place in a timely manner so that the affected organisations and third parties can react appropriately with organisational and technical measures before the changes take effect.

**Deutsche Übersetzung:**

Die Kommunikation von Änderungen am SSRM sowie an Schnittstellen und Abhängigkeiten erfolgt zeitnah, sodass die betroffenen Organisationen und Dritten mit organisatorischen und technischen Maßnahmen angemessen reagieren können, bevor die Änderungen wirksam werden.

*(Zusatzinformation und Complementary Customer Criteria: sinngemäß identisch zu OIS-03.01B.)*

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **SSRM-Matrix als Kunden-Dokument** veröffentlichen: klare Aufteilung „Verantwortung Cloud-Diensteanbieter" vs. „Verantwortung Krankenhaus" pro Sicherheitsbereich (Datenverschlüsselung, Backup, Nutzer-/Berechtigungsverwaltung, Endpoint-Sicherheit, Anti-Malware, Awareness) — insbesondere für die geteilte Verantwortung bei Identity Management (IdP-seitig vs. cloud-seitig)
- **Vulnerability-/Incident-Meldewege** in AVV und Service-Beschreibung dokumentieren: 24×7-Kontaktweg für Meldungen des Krankenhaus-IT-Sicherheitsverantwortlichen, definierte Reaktionszeiten, Eskalationspfad
- **Jährliche SSRM-Review** durch Security-Team + Legal + Produkt-Management, ausgelöst z. B. bei Release neuer Features oder Änderung der Betriebsarchitektur; Version des SSRM zusammen mit AVV im Kundenportal versionieren
- **Change-Kommunikation** über zwei Kanäle: technische Änderungen via Statuspage/Newsletter (14 Tage Vorlauf für Non-Breaking, 30–90 Tage für Breaking), vertragsrelevante SSRM-Änderungen via schriftlicher Ankündigung an Auftraggeber-Kontakte

## Verwandte Kriterien

- [[SP-02 Review and Approval of Policies and Procedures|SP-02]] *(noch nicht angelegt)*
- [[OIS-09 Application of the Risk Management Policy - Risk Treatment]] (Shared Risk Mapping)
- [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]] *(noch nicht angelegt)*
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
