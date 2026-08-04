---
title: COM-01 Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements
project: "[[C5 Katalog 2026]]"
c5-id: COM-01
c5-area: COM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/com
aliases:
  - COM-01
---

# COM-01 · Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements

> [!info] Kontext
> **Bereich:** Compliance (COM) · **Kriterium-ID:** COM-01 · **Unterkriterien:** 2 (1 Basic · 1 Complementing)

## Unterkriterien

### COM-01.01B — Basic

**Kriterium (EN):**

> The legal, regulatory, self-imposed and contractual requirements relevant to the information security of the cloud service as well as the cloud service provider's procedures for complying with these requirements are explicitly defined and documented.

**Deutsche Übersetzung:**

Die für die Informationssicherheit des Cloud-Dienstes relevanten rechtlichen, regulatorischen, selbst-auferlegten und vertraglichen Anforderungen sowie die Verfahren des Cloud-Diensteanbieters zu deren Einhaltung sind explizit definiert und dokumentiert.

**Zusatzinformation (DE):**

Die Dokumentation kann sich u. a. auf folgende Anforderungen beziehen:

1. Anforderungen zum Schutz personenbezogener Daten (z. B. **DSGVO**);
2. Anforderungen zur Informationssicherheits-Posture des Cloud-Diensteanbieters (z. B. **NIS-2**-Richtlinie, BSIG soweit auf KRITIS anwendbar);
3. Compliance-Anforderungen aus vertraglichen Verpflichtungen.

---

### COM-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider provides an overview of the procedures described in the basic criterion upon request by the cloud service customer.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt auf Anforderung des Cloud-Dienstkunden eine Übersicht über die im Basiskriterium beschriebenen Verfahren bereit.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Compliance-Register**: strukturierte Übersicht aller relevanten Rechtsakte und Standards — DSGVO, BDSG, § 203 StGB, PatDG, § 630f BGB, SGB V, KHZG, DigiG, DVG, TTDSG, NIS-2 (falls anwendbar), BSIG (bei KRITIS-Bezug), MDR/IVDR, ISO 27001, ISO 27017, ISO 27018, ISO 27799
- **Anforderungs-Owner** pro Rechtsakt/Standard: DPO für DSGVO/BDSG, CISO für ISO-Standards, Legal für vertragliche Anforderungen, Compliance-Officer für Meldepflichten; Aufgabe: Änderungen der Rechtsgrundlage nachverfolgen und in interne Verfahren einarbeiten
- **Mapping Requirement → Verfahren**: für jede Anforderung dokumentiertes internes Verfahren (z. B. DSGVO Art. 32 → Umsetzung in [[OIS-07 Risk Management Policy]] und CRY-Familie); C5-Testat-Zuordnung; jährlicher Review durch Compliance-Team
- **Kunden-Overview** (Complementing): standardisiertes „Compliance Statement" im Trust Center; Übersicht über Verfahren zur DSGVO-, NIS-2-, C5-, ISO-27001-Einhaltung; PDF-Download für Kunden-Auditoren; ergänzt Testate ohne diese zu ersetzen

## Verwandte Kriterien

- [[COM-02 Policy for Planning and Conducting Audits]]
- [[COM-03 Internal Audits of the Information Security Management System]]
- [[COM-04 Information on Information Security Performance and Management Assessment of the ISMS]]
- [[OIS-01 Information Security Management System (ISMS)]]
- [[OIS-04 Information Security in Project Management]]
- [[OIS-07 Risk Management Policy]]
- [[GC-02 Information on legal and regulatory requirements|GC-02 · Rechtliche Anforderungen]]
