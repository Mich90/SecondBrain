---
title: PI-02 Contractual Agreements for the Provision of Data
project: "[[C5 Katalog 2026]]"
c5-id: PI-02
c5-area: PI
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pi
aliases:
  - PI-02
---

# PI-02 · Contractual Agreements for the Provision of Data

> [!info] Kontext
> **Bereich:** Portability and Interoperability (PI) · **Kriterium-ID:** PI-02 · **Unterkriterien:** 3 (1 Basic · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Art und Umfang der Daten sowie die Verantwortlichkeiten für ihre Bereitstellung hängen vom Service-Modell bzw. den bereitgestellten Diensten und Funktionen ab. Bei IaaS- und PaaS-ähnlichen Diensten ist der Cloud-Dienstkunde generell dafür verantwortlich, die im Cloud-Dienst gespeicherten Daten vor Beendigung des Vertragsverhältnisses zu extrahieren und zu sichern. Die Verantwortung des Cloud-Diensteanbieters ist typischerweise auf die Bereitstellung geeigneter Schnittstellen beschränkt.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die Daten, auf die sie vertraglich Anspruch haben, am Vertragsende beim Cloud-Diensteanbieter angefordert oder über definierte Schnittstellen abgerufen werden (Art und Umfang der Daten entsprechen den beim Vertragsschluss getroffenen Vereinbarungen).

## Unterkriterien

### PI-02.01B — Basic

**Kriterium (EN):**

> In contractual agreements, the following aspects are defined for provisioning of cloud service customer data following termination of the contractual relationship, insofar as these are applicable to the cloud service:
>
> 1. Type, scope and format of the cloud service customer data the cloud service provider provides to the cloud service customer;
> 2. Methods for delivering the data to the cloud service customer;
> 3. Conditions and time frames for cloud service customer data provisioning throughout the duration of the contractual relationship;
> 4. Right of termination of the contract and definition of the time frame within which the cloud service provider makes the cloud service customer data available to the cloud service customer after termination of the contract;
> 5. Definition of the point in time as of which the cloud service provider makes the cloud service customer data inaccessible to the cloud service customer and deletes these after termination of the contract;
> 6. The cloud service customers' responsibilities and obligations to cooperate for the provision of the cloud service customer data; and
> 7. Cloud service customer data remains the property of the cloud service customer throughout the entire contractual relationship. After its termination, the data is once again the sole property and possession of the cloud service customer.
>
> The definitions are based on the needs of subject matter experts of potential customers who assess the suitability of the cloud service with regard to a dependency on the cloud service provider as well as legal and regulatory requirements.

**Deutsche Übersetzung:**

In vertraglichen Vereinbarungen werden folgende Aspekte für die Bereitstellung von Kundendaten nach Beendigung des Vertragsverhältnisses definiert, sofern für den Cloud-Dienst anwendbar:

1. Art, Umfang und Format der Kundendaten, die der Cloud-Diensteanbieter dem Cloud-Dienstkunden bereitstellt;
2. Methoden zur Übergabe der Daten an den Cloud-Dienstkunden;
3. Bedingungen und Zeitrahmen für die Kundendaten-Bereitstellung während der Vertragslaufzeit;
4. Kündigungsrecht des Vertrags und Definition des Zeitrahmens, innerhalb dessen der Cloud-Diensteanbieter die Kundendaten nach Vertragsende dem Cloud-Dienstkunden zur Verfügung stellt;
5. Definition des Zeitpunkts, ab dem der Cloud-Diensteanbieter die Kundendaten für den Cloud-Dienstkunden unzugänglich macht und diese nach Vertragsende löscht;
6. Verantwortlichkeiten und Mitwirkungspflichten des Cloud-Dienstkunden für die Bereitstellung der Kundendaten;
7. Kundendaten bleiben während der gesamten Vertragslaufzeit Eigentum des Cloud-Dienstkunden. Nach Beendigung sind die Daten wieder ausschließliches Eigentum und Besitz des Cloud-Dienstkunden.

Die Definitionen basieren auf den Bedürfnissen von Fachexperten potenzieller Kunden, die die Eignung des Cloud-Dienstes hinsichtlich Anbieter-Abhängigkeit und rechtlicher/regulatorischer Anforderungen bewerten.

---

### PI-02.01AC — Additional (Complementing)

**Kriterium (EN):**

> The design of the aspects is based on legal and regulatory requirements in the environment of the cloud service provider. The cloud service provider identifies the requirements regularly, at least once a year, and checks these for actuality and adjusts the contractual agreements accordingly.

**Deutsche Übersetzung:**

Die Ausgestaltung der Aspekte basiert auf rechtlichen und regulatorischen Anforderungen im Umfeld des Cloud-Diensteanbieters. Der Cloud-Diensteanbieter identifiziert die Anforderungen regelmäßig, **mindestens einmal jährlich**, prüft sie auf Aktualität und passt die vertraglichen Vereinbarungen entsprechend an.

---

### PI-02.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider also provides cloud service derived data to the cloud service customer upon termination of the contractual relationship. The provision of this data is also defined in the contractual agreements and includes the aspects specified in the basic criterion.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt dem Cloud-Dienstkunden bei Vertragsende auch **abgeleitete Daten** zur Verfügung. Die Bereitstellung dieser Daten ist ebenfalls in den vertraglichen Vereinbarungen definiert und umfasst die im Basiskriterium spezifizierten Aspekte.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Datenrückgabe-Klausel im AVV**: definierte Formate (FHIR-Bundles für Patientenstammdaten, DICOM für Bilddaten, PDF/A-3 für Dokumente); Rückgabezeitraum 30-90 Tage nach Vertragsende; danach unwiderrufliche Löschung mit Nachweis
- **Continuous Data Portability** während des Vertrags: Kunde kann jederzeit Export via API/SFTP anstoßen; kein Vendor Lock-in; wichtig für § 630g BGB (Recht des Patienten auf Datenherausgabe) — Krankenhaus muss Daten stets abrufen können
- **Ownership klar geregelt**: Krankenhaus bleibt Verantwortlicher gemäß Art. 4 Nr. 7 DSGVO; Cloud-Anbieter ist Auftragsverarbeiter (Art. 28); nach Vertragsende verbleiben Daten NICHT bei Anbieter; Löschung nach Ablauf gesetzlicher Fristen
- **Legal-Review annually** (Complementing): Änderungen in DSGVO, EHDS, DiGA-Verordnung, KHZG, § 630f BGB werden erfasst; Anpassung der Standardverträge; Kommunikation an Bestandskunden bei materiellen Änderungen

## Verwandte Kriterien

- [[PI-01 Safety of Input and Output Interfaces]]
- [[PI-03 Secure Deletion of Data]]
- [[AM-11 Handling of Assets]]
- [[COM-01 Identification of Applicable Compliance Requirements|COM-01]] *(noch nicht angelegt)*
- [[GC-01 Information on jurisdiction and locations of data processing and storage|GC-01 · Jurisdiktion und Standorte]]
