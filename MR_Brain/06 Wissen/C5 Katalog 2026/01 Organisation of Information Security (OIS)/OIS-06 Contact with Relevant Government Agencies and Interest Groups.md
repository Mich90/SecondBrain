---
title: OIS-06 Contact with Relevant Government Agencies and Interest Groups
project: "[[C5 Katalog 2026]]"
c5-id: OIS-06
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-06
---

# OIS-06 · Contact with Relevant Government Agencies and Interest Groups

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-06  
> **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OIS-06.01B — Basic

**Kriterium (EN):**

> If the cloud service is used by public sector organisations in Germany, the cloud service provider establishes and maintains contacts with the National IT Situation Centre and the CERT Association of the BSI as appropriate.

**Deutsche Übersetzung:**

Wenn der Cloud-Dienst von Organisationen der öffentlichen Verwaltung in Deutschland genutzt wird, etabliert und pflegt der Cloud-Diensteanbieter angemessene Kontakte zum Nationalen IT-Lagezentrum und zum CERT-Verbund des BSI.

**Zusatzinformation (EN):**

> Public sector organisations in Germany are e.g. ministries and authorities. If the cloud service provider does not have customers in the public sector, this criterion is not applicable.
>
> As appropriate means that contacts are established when there is an actual need to do so. For instance, establishing contact with CERT typically involves the reporting of security incidents to CERT and following CERT's communication channels to stay informed about current threats, vulnerabilities and security guidance. Maintaining contact in the sense of OIS-06.01B does in this instance not require the cloud service provider to proactively communicate with CERT unprompted.
>
> For KRITIS (critical infrastructure), as defined in section 2(10) of the BSI Act (BSIG), similar requirements to maintain contact with government agencies and stakeholders may apply under German national law.

**Zusatzinformation (DE):**

Organisationen der öffentlichen Verwaltung in Deutschland sind z. B. Ministerien und Behörden. Hat der Cloud-Diensteanbieter keine Kunden im öffentlichen Sektor, ist dieses Kriterium nicht anwendbar.

„Angemessen" bedeutet, dass Kontakte etabliert werden, wenn ein tatsächlicher Bedarf besteht. Die Kontaktaufnahme zum CERT umfasst typischerweise die Meldung von Sicherheitsvorfällen an das CERT und die Nutzung der CERT-Kommunikationskanäle, um über aktuelle Bedrohungen, Schwachstellen und Sicherheitshinweise informiert zu bleiben. Die Aufrechterhaltung des Kontakts im Sinne von OIS-06.01B verlangt in diesem Fall nicht, dass der Cloud-Diensteanbieter unaufgefordert proaktiv mit dem CERT kommuniziert.

Für **KRITIS** (Kritische Infrastrukturen) gemäß § 2 Abs. 10 BSI-Gesetz (BSIG) können nach deutschem nationalem Recht ähnliche Anforderungen zur Kontaktpflege mit Behörden und Interessengruppen gelten.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **KRITIS-Meldeweg etablieren**, sofern der Service KRITIS-relevante Kunden bedient (Kliniken ≥ 30.000 stationäre Fälle pro Jahr sind i. d. R. KRITIS): Registrierung als KRITIS-Betreiber bei BSI, benannte Kontaktperson (KRITIS-Ansprechpartner), gesicherter Meldeweg für Störungsmeldungen nach § 8b BSIG
- **CERT-Bund Warnmelde-Feed** abonnieren (WID-Warnmeldungen) und in interne Threat-Intelligence-Prozesse einbinden; wechselseitige technische Kontakte im Security-Team pflegen
- **Interessenverband-Mitgliedschaft** in relevanten Gremien: z. B. bvitg (Bundesverband Gesundheits-IT), TeleTrusT, Bitkom AG Cloud Computing, um branchenspezifische Sicherheitsstandards mitzugestalten und frühzeitig Informationen zu erhalten
- **KHZG-/DiGA-Kontext berücksichtigen**: bei Diensten für Krankenhäuser im Rahmen des Krankenhauszukunftsgesetzes (KHZG) oder für DiGA-Hersteller entstehen zusätzliche Meldewege (z. B. BfArM); dokumentierte Ansprechpartner im Compliance-Team

## Verwandte Kriterien

- [[GC-05 Information on how investigation requests from government agencies are handled|GC-05 · Behördliche Ermittlungsersuchen]]
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
- [[COM-01 Identification of Applicable Compliance Requirements|COM-01]] *(noch nicht angelegt)*
- [[INQ-01 Legal Assessment of Investigation Requests|INQ-01]] *(noch nicht angelegt)*
