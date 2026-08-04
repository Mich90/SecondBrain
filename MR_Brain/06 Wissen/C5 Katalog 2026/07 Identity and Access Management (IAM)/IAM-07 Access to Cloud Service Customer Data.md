---
title: IAM-07 Access to Cloud Service Customer Data
project: "[[C5 Katalog 2026]]"
c5-id: IAM-07
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-07
---

# IAM-07 · Access to Cloud Service Customer Data

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-07 · **Unterkriterien:** 14 (8 Basic · 3 Sharpening · 4 Complementing)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass ihre Verträge mit dem Cloud-Diensteanbieter eine umfassende Liste aller Fälle enthalten, in denen der Anbieter auf Kundendaten in unverschlüsselter Form zugreifen könnte. Kunden verifizieren, dass diese Bedingungen vor der Beauftragung des Dienstes gründlich dokumentiert sind, um informierte Entscheidungen zu Datensicherheit und Compliance zu treffen. Kunden stellen zudem durch geeignete Kontrollen sicher, dass sie auf Zugriffsanfragen des Cloud-Diensteanbieters innerhalb der vertraglich vereinbarten Frist reagieren.

## Unterkriterien

### IAM-07.01B — Basic

**Kriterium (EN):**

> The cloud service provider implements partitioning measures that are:
>
> 1. Sufficient for separating the system components for providing the cloud service from the system components of the cloud service provider's other information systems; and
> 2. Suitable for separating different cloud service customers from each other (cf. OPS-30 and OPS-31).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter implementiert Trennungsmaßnahmen, die:

1. ausreichend sind, um die Systemkomponenten zur Erbringung des Cloud-Dienstes von den Systemkomponenten anderer Informationssysteme des Cloud-Diensteanbieters zu trennen;
2. geeignet sind, verschiedene Cloud-Dienstkunden voneinander zu trennen (vgl. [[OPS-30 Separation of Datasets - Policies and Procedures|OPS-30]] und [[OPS-31 Separation of Datasets - Implementation|OPS-31]]).

---

### IAM-07.02B — Basic

**Kriterium (EN):**

> The partitioning measures of the cloud service provider ensure that security incidents, if they compromise the system components storing the cloud service customer data, do not also compromise the system components that manage the access to them.

**Deutsche Übersetzung:**

Die Trennungsmaßnahmen des Cloud-Diensteanbieters stellen sicher, dass Sicherheitsvorfälle, die die Systemkomponenten zur Speicherung der Kundendaten kompromittieren, nicht auch die Systemkomponenten kompromittieren, die den Zugriff darauf verwalten.

---

### IAM-07.03B — Basic

**Kriterium (EN):**

> Unless prohibited by applicable law, the cloud service customer is informed by the cloud service provider whenever internal or external personnel of the cloud service provider reads or writes to the cloud service customer data processed, stored or transmitted in the cloud service or has accessed it without the prior consent of the cloud service customer. The information is provided whenever cloud service customer data is/was accessed in unencrypted form or the contractual agreements with customers do not explicitly exclude informing the customer of such access.

**Deutsche Übersetzung:**

Sofern nicht durch geltendes Recht verboten, wird der Cloud-Dienstkunde vom Cloud-Diensteanbieter informiert, sobald internes oder externes Personal des Cloud-Diensteanbieters die im Cloud-Dienst verarbeiteten, gespeicherten oder übertragenen Kundendaten liest oder beschreibt oder ohne vorherige Zustimmung des Cloud-Dienstkunden darauf zugegriffen hat. Die Information erfolgt immer dann, wenn Kundendaten in unverschlüsselter Form zugegriffen wird/wurde oder die vertraglichen Vereinbarungen mit den Kunden solche Information nicht ausdrücklich ausschließen.

---

### IAM-07.03AS — Additional (Sharpening)

**Kriterium (EN):**

> Access to cloud service customer data and cloud service derived data by internal or external personnel of the cloud service provider requires the prior consent of an authorised department of the cloud service customer, provided that the cloud service customer's data is accessible in unencrypted form or contractual agreements do not explicitly exclude such consent. Additionally, if encrypted data and its decryption key are stored separately within the same cloud environment, prior consent is required not only for accessing the decryption key but also for accessing the encrypted data itself (potentially together with the key).

**Deutsche Übersetzung:**

Der Zugriff auf Kundendaten und abgeleitete Daten durch internes oder externes Personal des Cloud-Diensteanbieters erfordert die **vorherige Zustimmung** einer autorisierten Abteilung des Cloud-Dienstkunden, sofern die Daten unverschlüsselt zugänglich sind oder vertragliche Vereinbarungen eine solche Zustimmung nicht ausdrücklich ausschließen. Wenn verschlüsselte Daten und der zugehörige Entschlüsselungsschlüssel getrennt in derselben Cloud-Umgebung gespeichert werden, ist die vorherige Zustimmung nicht nur für den Zugriff auf den Entschlüsselungsschlüssel, sondern auch für den Zugriff auf die verschlüsselten Daten selbst (potenziell zusammen mit dem Schlüssel) erforderlich.

---

### IAM-07.04B — Basic

**Kriterium (EN):**

> Unless contractually agreed otherwise, the information provided about the access contains the cause, time, duration, geographic location, type and scope of the access, as well as the retention time of other data generated during access, such as logs or copies containing cloud service customer data. The information is sufficiently detailed to enable subject matter experts of the cloud service customer to assess the risks of the access.

**Deutsche Übersetzung:**

Sofern nicht anders vertraglich vereinbart, enthält die Information zum Zugriff Ursache, Zeitpunkt, Dauer, geografischen Standort, Art und Umfang des Zugriffs sowie die Aufbewahrungsdauer sonstiger während des Zugriffs erzeugter Daten (z. B. Logs oder Kopien mit Kundendaten). Die Information ist ausreichend detailliert, um Fachexperten des Cloud-Dienstkunden eine Bewertung der Risiken zu ermöglichen.

---

### IAM-07.04AS — Additional (Sharpening)

**Kriterium (EN):**

> Unless contractually agreed otherwise, the information provided for the consent contains the cause, time, duration, geographic location, type and scope of the access, as well as the retention time of other data generated during access, such as logs or copies containing cloud service customer data. The information is sufficiently detailed to enable subject matter experts of the cloud service customer to assess the risks of the access. In addition to the provided information, the cloud service provider specifies a time frame within which the cloud service customer shall respond to the access request.

**Deutsche Übersetzung:**

Analog zu IAM-07.04B, zusätzlich gibt der Cloud-Diensteanbieter einen **Zeitrahmen** an, innerhalb dessen der Cloud-Dienstkunde auf die Zugriffsanfrage antworten muss.

---

### IAM-07.05B — Basic

**Kriterium (EN):**

> The information is provided in accordance with the contractual agreements, but no later than 72 hours from the initiation of the access.

**Deutsche Übersetzung:**

Die Information erfolgt gemäß den vertraglichen Vereinbarungen, jedoch spätestens **innerhalb von 72 Stunden** nach Beginn des Zugriffs.

---

### IAM-07.06B — Basic

**Kriterium (EN):**

> The cloud service provider discloses, through contractual agreements and before offering its services, all instances where the cloud service provider may access cloud service customer data in unencrypted form while it is processed, stored or transmitted in the cloud service.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter legt in vertraglichen Vereinbarungen und vor Angebot seines Dienstes alle Fälle offen, in denen er auf Kundendaten in unverschlüsselter Form während der Verarbeitung, Speicherung oder Übertragung im Cloud-Dienst zugreifen kann.

---

### IAM-07.06AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider discloses, through contractual agreements and before offering its services, all instances where the cloud service provider may access cloud service customer data or cloud service derived data in unencrypted form while it is processed, stored or transmitted in the cloud service.

**Deutsche Übersetzung:**

Wie IAM-07.06B, zusätzlich auch für **abgeleitete Daten**.

---

### IAM-07.01AC — Additional (Complementing)

**Kriterium (EN):**

> If the cloud service provider might access the cloud service customer data transmitted, handled or stored in the cloud service in a non-encrypted way, the cloud service provider includes provisions through contractual agreements for cases in which seeking prior consent for such an access is not feasible.

**Deutsche Übersetzung:**

Wenn der Cloud-Diensteanbieter auf Kundendaten in unverschlüsselter Form zugreifen könnte, sind in vertraglichen Vereinbarungen Regelungen für Fälle enthalten, in denen die vorherige Zustimmung nicht durchführbar ist. (Dieses Unterkriterium ist nur anwendbar, wenn IAM-07.03AS ebenfalls angewandt wird.)

**Zusatzinformation (DE):**

Die Einholung einer vorherigen Zustimmung ist z. B. dann nicht durchführbar, wenn der Cloud-Dienst zur Aufrechterhaltung von Vertraulichkeit, Integrität und Verfügbarkeit der Kundendaten fehlerbehoben werden muss.

---

### IAM-07.02AC — Additional (Complementing)

**Kriterium (EN):**

> In order to be able to directly or indirectly access cloud service customer data, any internal or external personnel of the cloud service provider has to pass an appropriate assessment, or has to instead be supervised by personnel who has passed an appropriate assessment (cf. HR-01). The cloud service provider verifies that one of these conditions is met before the access is granted. This applies to support operations as well.

**Deutsche Übersetzung:**

Um direkt oder indirekt auf Kundendaten zugreifen zu können, muss jedes interne oder externe Personal des Cloud-Diensteanbieters ein angemessenes Assessment bestehen — oder aber von Personal beaufsichtigt werden, das ein solches Assessment bestanden hat (vgl. [[HR-01 Verification of Qualification and Trustworthiness|HR-01]]). Der Cloud-Diensteanbieter verifiziert vor Zugriffserteilung, dass eine dieser Bedingungen erfüllt ist. Dies gilt auch für Support-Operationen.

---

### IAM-07.03AC — Additional (Complementing)

**Kriterium (EN):**

> If the performed access is supervised, the cloud service provider ensures that:
>
> 1. The mechanisms used to perform the supervised access allow the supervising personnel to authorise or deny individual actions of the supervisee and ask for explanations in real time;
> 2. Any access rights that are granted as part of the supervised access are revoked at the end of the operation;
> 3. All operations that are performed as part of the supervised access are logged as administration actions;
> 4. The supervisee and the device used to perform the supervised access are authenticated by the supervision solution;
> 5. The operations that the supervisee proposes and the actions of the supervising personnel are logged by the supervision solution, including operations that were denied; and
> 6. Information flows towards the device of the supervisee are prevented by the supervision solution.

**Deutsche Übersetzung:**

Wenn der durchgeführte Zugriff beaufsichtigt wird, stellt der Cloud-Diensteanbieter sicher:

1. Die Mechanismen ermöglichen dem beaufsichtigenden Personal, einzelne Aktionen des Beaufsichtigten in Echtzeit zu genehmigen oder abzulehnen und Erklärungen einzufordern;
2. Alle im Rahmen des beaufsichtigten Zugriffs gewährten Zugriffsrechte werden am Ende der Operation entzogen;
3. Alle im Rahmen des beaufsichtigten Zugriffs durchgeführten Operationen werden als Administrations-Aktionen protokolliert;
4. Der Beaufsichtigte und das genutzte Gerät werden von der Aufsichtslösung authentifiziert;
5. Die vom Beaufsichtigten vorgeschlagenen Operationen und die Aktionen des beaufsichtigenden Personals werden von der Aufsichtslösung protokolliert — auch abgelehnte Operationen;
6. Informationsflüsse in Richtung des Geräts des Beaufsichtigten werden durch die Aufsichtslösung verhindert.

---

### IAM-07.04AC — Additional (Complementing)

**Kriterium (EN):**

> If the cloud service customer is given access to interfaces for administrators and for end users as part of the cloud service, the cloud service provider separates these interfaces from one another and ensures that access paths for customer administrators differ from those for end users.

**Deutsche Übersetzung:**

Wenn dem Cloud-Dienstkunden im Rahmen des Cloud-Dienstes Zugriff auf Interfaces für Administratoren und Endnutzer gewährt wird, trennt der Cloud-Diensteanbieter diese Interfaces und stellt sicher, dass die Zugriffswege für Kunden-Administratoren sich von denen für Endnutzer unterscheiden.

**Zusatzinformation (DE):**

Die Trennung sollte so konzipiert und implementiert sein, dass Kunden-Administratoren auch dann auf den Cloud-Dienst zugreifen können, wenn die Endnutzer-Interfaces nicht verfügbar sind.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zwei-Zonen-Architektur**: Data-Plane (isoliert, keine direkte Anbieter-Konnektivität) getrennt von Management-Plane (Anbieter-Admin-Access via Bastion); IAM-System selbst separiert von Kundendaten-Storage (Kompromittierung des einen bricht nicht das andere)
- **Kunden-Consent-Workflow für Zugriffe** (Sharpening): Ticket im Kunden-Portal, mit Grund + Timeframe + betroffenen Datenumfang; Autorisierte Kunden-Person bestätigt via signiertem Approval (DocuSign / Adobe Sign / Portal); Session-Recording obligatorisch
- **72h-Notification-Prozess**: bei jedem Zugriff auf unverschlüsselte Kundendaten (auch mit vorheriger Zustimmung) automatischer Report an definierten Kunden-Kontakt (E-Mail + Portal); enthält Ursache, Zeit, Dauer, Ort, Umfang, Log-Retention
- **Sovereign-Cloud-Konzept**: Kundendaten nur in DE-Rechenzentren; Personal-Prüfung (§ 5 BSIG, § 30 BDSG); Verpflichtung auf § 203 StGB; wichtig für KRITIS-Krankenhäuser und Behörden
- **Supervised Access für L3-Support**: seltene Fälle des Kunden-Support benötigen Fehleranalyse mit Klartext-Daten — via PAM-System mit Live-Approval-Workflow (2-Personen-Regel), Session-Recording, Blockade jeglichen Datenexports

## Verwandte Kriterien

- [[IAM-06 Privileged Access Rights]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[OPS-15 Logging and Monitoring - Accountability]]
- [[HR-01 Verification of Qualification and Trustworthiness]]
- [[INQ-03 Technical Support in Investigation Requests|INQ-03]] *(noch nicht angelegt)*
- [[GC-06 Information on how third-party requests to access data are handled|GC-06 · Zugriffe Dritter]]
