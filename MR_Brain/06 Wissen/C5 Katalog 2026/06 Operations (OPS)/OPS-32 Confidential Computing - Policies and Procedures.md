---
title: OPS-32 Confidential Computing - Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-32
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-32
---

# OPS-32 · Confidential Computing — Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-32 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> **Confidential Computing** gemäß Definition des Confidential Computing Consortium und im Sinne dieses Kriteriums ist der Schutz von Daten „in use" durch Ausführung von Berechnungen in einer hardware-basierten, attestierten **Trusted Execution Environment (TEE)**. Eine TEE ist ein isolierter Teil eines Systems, der eine speziell geschützte Laufzeitumgebung bereitstellt. Die TEE kann Teil des Hauptprozessors (CPU) oder eines separaten Prozessors sein.

## Unterkriterien

### OPS-32.01B — Basic

**Kriterium (EN):**

> If the cloud service comprises capabilities for confidential computing, policies and procedures and technical safeguards are documented, communicated and provided according to SP-01, in which the following aspects are described:
>
> 1. Purpose and scope, including which information security risks on the cloud service provider's side are to be mitigated through the use of confidential computing (cf. OIS-07) and how the cloud service customers can use the provided features to manage information security risks on their side;
> 2. Available confidential computing technologies;
> 3. Determination of which parts of the cloud stack are protected with each technology and where third-party access is possible;
> 4. Listing of involved suppliers/service organisations; and
> 5. Utilisation of Trusted Execution Environments (TEEs) or secure enclaves.

**Deutsche Übersetzung:**

Wenn der Cloud-Dienst Confidential-Computing-Fähigkeiten umfasst, sind Richtlinien und Verfahren sowie technische Schutzmaßnahmen gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, in denen folgende Aspekte beschrieben sind:

1. Zweck und Umfang, einschließlich welche Informationssicherheits-Risiken auf Anbieter-Seite durch Confidential Computing gemindert werden (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) und wie Kunden die bereitgestellten Funktionen zur Risikomanagement nutzen können;
2. Verfügbare Confidential-Computing-Technologien;
3. Festlegung, welche Teile des Cloud-Stacks mit welcher Technologie geschützt sind und wo Drittzugriff möglich ist;
4. Auflistung beteiligter Lieferanten/Service-Organisationen;
5. Nutzung von **TEEs** oder Secure Enclaves.

---

### OPS-32.02B — Basic

**Kriterium (EN):**

> The cloud service provider provides its customers with information on the aspects specified in OPS-32.01B according to PSS-01.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt seinen Kunden Informationen zu den in OPS-32.01B genannten Aspekten gemäß [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]] zur Verfügung.

---

### OPS-32.03B — Basic

**Kriterium (EN):**

> Additional aspects addressed by the policies and procedures for confidential computing, not necessarily included in the information provided to the cloud service customers, include:
>
> 1. Responsibilities for the implementation and monitoring of confidential computing measures;
> 2. Security requirements to ensure the confidentiality, integrity, and authenticity of the data during processing; and
> 3. Relevant legal and regulatory requirements applicable to confidential computing.
>
> These security requirements to ensure the confidentiality, integrity, and authenticity of the data during processing include that:
>
> 1. Neither the cloud service provider nor any other unauthorised entity shall be able to access the cloud service customer data or the keys used for protecting that data; and
> 2. Cryptographic algorithms that comply with the cloud service provider's policy for the use of cryptographic mechanisms (cf. CRY-01) are used.

**Deutsche Übersetzung:**

Weitere Aspekte, die die Richtlinien und Verfahren für Confidential Computing adressieren — nicht zwingend Teil der Kunden-Informationen — umfassen:

1. Verantwortlichkeiten für Umsetzung und Monitoring von Confidential-Computing-Maßnahmen;
2. Sicherheitsanforderungen zur Sicherstellung von Vertraulichkeit, Integrität und Authentizität der Daten während der Verarbeitung;
3. Relevante rechtliche und regulatorische Anforderungen.

Die Sicherheitsanforderungen umfassen:

1. Weder der Cloud-Diensteanbieter noch andere nicht autorisierte Entitäten dürfen auf Kundendaten oder die zum Schutz genutzten Schlüssel zugreifen können;
2. Es werden kryptographische Algorithmen genutzt, die der Kryptographie-Policy (vgl. [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]]) entsprechen.

---

### OPS-32.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider documents and implements a technical framework for confidential computing, demonstrating how certain information security risks are mitigated (cf. OIS-07). The framework includes at least the following procedures and technical safeguards:
>
> 1. Usage of Trusted Execution Environments (TEEs) or secure enclaves to process sensitive data (data in use) in a protected environment;
> 2. Documentation of all associated interfaces;
> 3. Consideration of available hardware attestations;
> 4. Utilisation of encryption techniques to secure data during processing, including secure key management;
> 5. Remote attestation to verify the identity and measured state of the TEE as well as code executed within the TEE;
> 6. Implementation of monitoring and logging mechanisms to detect and respond to security incidents;
> 7. Conducting security reviews and penetration tests (cf. OPS-22) regularly as well as on an event-driven basis to verify the effectiveness of confidential computing measures; and
> 8. Performing regular updates on the Trusted Computing Base of the TEE.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter dokumentiert und implementiert ein technisches Framework für Confidential Computing, das darlegt, wie bestimmte Informationssicherheitsrisiken gemindert werden (vgl. OIS-07). Das Framework umfasst mindestens folgende Verfahren und technische Schutzmaßnahmen:

1. Nutzung von TEEs oder Secure Enclaves zur Verarbeitung sensitiver Daten (Data in Use) in geschützter Umgebung;
2. Dokumentation aller zugehörigen Schnittstellen;
3. Berücksichtigung verfügbarer Hardware-Attestierungen;
4. Nutzung von Verschlüsselungstechniken zur Sicherung von Daten während der Verarbeitung, einschließlich sicherer Schlüsselverwaltung;
5. Remote Attestation zur Verifikation von Identität und gemessenem Zustand der TEE sowie des in der TEE ausgeführten Codes;
6. Implementierung von Monitoring- und Logging-Mechanismen zur Erkennung und Reaktion auf Sicherheitsvorfälle;
7. Durchführung regelmäßiger sowie anlassbezogener Security Reviews und Penetration Tests (vgl. [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests|OPS-22]]) zur Verifikation der Wirksamkeit;
8. Regelmäßige Updates der Trusted Computing Base der TEE.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **TEE-Nutzung für höchst-sensitive Verarbeitung**: Intel SGX / AMD SEV-SNP / AWS Nitro Enclaves / Azure Confidential Computing für Berechnungen mit hochsensiblen Patientendaten (z. B. genetische Daten, HIV-Status); Insider-Threats mitigiert (auch CGM-Personal kann Daten nicht einsehen)
- **Remote Attestation** vor jeder sensitiven Operation: Krankenhaus-Client verifiziert TEE-Identität + Code-Hash über Attestation-Report; Vertrauen erst nach erfolgreicher Attestation
- **Key Management in TEE**: Schlüssel werden in TEE erzeugt und verlassen diese nie im Klartext; Sealing für Persistenz; wichtige Voraussetzung für „True End-to-End Encryption"
- **Anwendungsfall Multi-Party-Computation**: mehrere Krankenhäuser können anonyme statistische Analysen (Epidemiologie, KI-Modelle) in gemeinsamer TEE durchführen ohne Rohdatenzugriff — Datenschutz-konforme Kooperation

## Verwandte Kriterien

- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[OPS-33 Confidential Computing - Remote Attestation]]
- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
- [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]] *(noch nicht angelegt)*
