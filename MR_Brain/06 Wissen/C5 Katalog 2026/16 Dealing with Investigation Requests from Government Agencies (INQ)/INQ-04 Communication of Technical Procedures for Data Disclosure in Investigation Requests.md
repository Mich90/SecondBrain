---
title: INQ-04 Communication of Technical Procedures for Data Disclosure in Investigation Requests
project: "[[C5 Katalog 2026]]"
c5-id: INQ-04
c5-area: INQ
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/inq
aliases:
  - INQ-04
---

# INQ-04 · Communication of Technical Procedures for Data Disclosure in Investigation Requests

> [!info] Kontext
> **Bereich:** Dealing with Investigation Requests from Government Agencies (INQ) · **Kriterium-ID:** INQ-04 · **Unterkriterien:** 3 (3 Basic)

> [!note] Gemeinsame Zusatzinformation
> Das Kriterium ist auf Kundendaten beschränkt. Der Cloud-Diensteanbieter hat typischerweise Zugriff auf andere Datentypen wie abgeleitete Daten und Kontodaten, sodass eine Ausdehnung auf diese anderen Datentypen möglicherweise nicht zu nützlichen Informationen für das Risikomanagement der Kunden führt.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie die potenzielle Offenlegung ihrer Kundendaten minimieren. Gemäß dem Schutzbedarf ihrer Kundendaten treffen die Kunden die Entscheidung, ob der jeweilige Cloud-Dienst genutzt werden kann oder ob das Risiko einer Offenlegung nicht tragbar ist.

## Unterkriterien

### INQ-04.01B — Basic

**Kriterium (EN):**

> The cloud service provider documents the technical procedures per service and other technical information regarding the provision or disclosure of cloud service customer data in response to valid investigation requests and provides it to cloud service customers.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter dokumentiert die **technischen Verfahren pro Dienst** und andere technische Informationen bezüglich der Bereitstellung oder Offenlegung von Kundendaten in Reaktion auf gültige Ermittlungsanfragen und stellt sie den Cloud-Dienstkunden zur Verfügung.

---

### INQ-04.02B — Basic

**Kriterium (EN):**

> The type and scope of the information provided to the cloud service customers is based on the needs of their expert personnel to assess risks to the cloud service customer's data confidentiality. At a minimum, the following aspects are addressed:
>
> 1. The process for the provision and disclosure of cloud service customer data in response to legitimate investigation requests;
> 2. The technical capabilities and limitations of the cloud service provider regarding disclosure of cloud service customer data;
> 3. Logging mechanisms implemented to records access for disclosure of cloud service customer data;
> 4. Access possibilities for cloud service customers to review such logs;
> 5. Methods and technical procedures per service for accessing and disclosing cloud service customer data; and
> 6. Laws, regulations, or other legal means and their applicability concerning the cloud service provider's ability to inform its customers about the provision and disclosure of cloud service customer data.

**Deutsche Übersetzung:**

Art und Umfang der bereitgestellten Informationen basieren auf den Bedürfnissen des Fachpersonals der Kunden zur Bewertung von Risiken für die Vertraulichkeit ihrer Kundendaten. Mindestens werden folgende Aspekte adressiert:

1. Der Prozess zur Bereitstellung und Offenlegung von Kundendaten in Reaktion auf legitime Ermittlungsanfragen;
2. Die **technischen Fähigkeiten und Grenzen** des Cloud-Diensteanbieters bezüglich der Offenlegung von Kundendaten;
3. Implementierte Logging-Mechanismen zur Aufzeichnung von Zugriffen zur Offenlegung von Kundendaten;
4. Zugriffsmöglichkeiten der Cloud-Dienstkunden zur Einsicht in solche Logs;
5. Methoden und technische Verfahren pro Dienst zum Zugriff auf und zur Offenlegung von Kundendaten;
6. Gesetze, Vorschriften oder andere rechtliche Mittel und deren Anwendbarkeit bezüglich der Fähigkeit des Cloud-Diensteanbieters, seine Kunden über die Bereitstellung und Offenlegung von Kundendaten zu informieren.

---

### INQ-04.03B — Basic

**Kriterium (EN):**

> The aforementioned document is maintained in accordance with SP-01 and aligned with the cloud service provider's guidelines on minimising access to cloud service customer data (cf. DEV-01) to ensure its relevance and accuracy for cloud service customers.

**Deutsche Übersetzung:**

Das genannte Dokument wird gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] gepflegt und ist mit den Leitlinien des Cloud-Diensteanbieters zur Minimierung des Zugriffs auf Kundendaten (vgl. [[DEV-01 Policies for the Development/Procurement of System Components|DEV-01]]) abgestimmt, um Relevanz und Genauigkeit für Cloud-Dienstkunden sicherzustellen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **„Government Access Whitepaper"** im Trust Center: strukturierte Dokumentation für jeden Dienst — welche Datentypen sind zugriffsfähig? Über welche Interfaces (Admin-Portal, DB-Access, Backup-Systeme)? Welche Verschlüsselung schützt was? Wer hat technische Möglichkeit zu Zugriff und wer autorisiert diese?
- **Technische Grenzen dokumentiert**: bei BYOK/HYOK-Nutzung ist Klartext-Zugriff durch Anbieter technisch nicht möglich (wichtiges Signal für Krankenhaus-Kunden); bei Ende-zu-Ende-Verschlüsselung ähnliche Aussage; Doku zeigt genau, welche Kombinationen von Deployment-Optionen welchen Schutz liefern
- **Kunden-Log-Zugriff**: dedizierter Log-Feed im Kunden-Portal, der Zugriffe auf ihre Daten im Rahmen von Investigation-Requests dokumentiert (soweit rechtlich zulässig); technische Details zur Log-Integrität (Signaturen, Zeitstempel, WORM-Speicher)
- **Rechtliches Umfeld**: Übersicht relevanter Gesetze — DSGVO, § 100a-b StPO, § 20g BKAG, TKG, ausländisches Recht (CLOUD Act, FISA); Erläuterung, welche Möglichkeiten der Anbieter zur Widerspruch/Widerlegung hat; Anwendung auf konkrete Anfrage-Typen

## Verwandte Kriterien

- [[INQ-01 Legal Assessment of Investigation Requests]]
- [[INQ-02 Informing Cloud Service Customers about Investigation Requests]]
- [[INQ-03 Limiting Access to or Disclosure of Data in Investigation Requests]]
- [[DEV-01 Policies for the Development/Procurement of System Components]]
- [[CRY-13 BYOK / HYOK|CRY-13 Bring-Your-Own-Key / Hold-Your-Own-Key]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
- [[GC-03 Information on legal jurisdiction of the cloud service provider|GC-03]] *(noch nicht angelegt)*
