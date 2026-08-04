---
title: COM-04 Information on Information Security Performance and Management Assessment of the ISMS
project: "[[C5 Katalog 2026]]"
c5-id: COM-04
c5-area: COM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/com
aliases:
  - COM-04
---

# COM-04 · Information on Information Security Performance and Management Assessment of the ISMS

> [!info] Kontext
> **Bereich:** Compliance (COM) · **Kriterium-ID:** COM-04 · **Unterkriterien:** 3 (1 Basic · 2 Complementing)

## Unterkriterien

### COM-04.01B — Basic

**Kriterium (EN):**

> The top management of the cloud service provider is regularly informed about the information security performance within the scope of the ISMS in order to ensure its continued suitability, adequacy and effectiveness. The information is included in the management review of the ISMS. This management review is performed at least once a year.

**Deutsche Übersetzung:**

Die **oberste Leitung** des Cloud-Diensteanbieters wird regelmäßig über die Informationssicherheits-Performance im Scope des ISMS informiert, um dessen fortgesetzte Eignung, Angemessenheit und Wirksamkeit sicherzustellen. Die Informationen werden im **Management Review** des ISMS berücksichtigt. Dieses Management Review wird **mindestens einmal jährlich** durchgeführt.

**Zusatzinformation (DE):**

Die oberste Leitung ist eine natürliche Person oder Gruppe von Personen, die finale Entscheidungen für die Institution trifft und dafür verantwortlich ist. Die im Management Review des ISMS zu behandelnden Aspekte sind in Abschnitt 9.3 der ISO/IEC 27001 aufgeführt.

---

### COM-04.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider defines and implements technical and operational metrics that align with the organisation's business objectives, security requirements, and compliance obligations. These metrics are documented and included in the management review of the ISMS to ensure their continued suitability, adequacy, and effectiveness.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert und implementiert **technische und operative Metriken**, die mit den Geschäftszielen, Sicherheitsanforderungen und Compliance-Verpflichtungen der Organisation abgestimmt sind. Diese Metriken werden dokumentiert und im Management Review des ISMS berücksichtigt.

---

### COM-04.02AC — Additional (Complementing)

**Kriterium (EN):**

> The responsible business units of the cloud service provider report at least annually to the top management on the the status and effectiveness of the policies and procedures that are relevant to the top management review of the information security management system. This reporting includes at least:
>
> 1. Implemented changes to address cybersecurity risks for the topic addressed in the policy or procedure;
> 2. Information security incidents for the topic addressed in the policy or procedure and the follow-up;
> 3. Performance of the internal controls regarding information security for the topic addressed in the policy or procedure; and
> 4. Planned changes for the topic addressed in the policy or procedure to address cybersecurity risks and information security and cybersecurity.

**Deutsche Übersetzung:**

Die verantwortlichen Geschäftseinheiten des Cloud-Diensteanbieters berichten **mindestens jährlich** an die oberste Leitung über den Status und die Wirksamkeit der Richtlinien und Verfahren, die für das Top-Management-Review des ISMS relevant sind. Dieses Reporting umfasst mindestens:

1. Umgesetzte Änderungen zur Adressierung von Cybersecurity-Risiken für das in der Richtlinie oder dem Verfahren behandelte Thema;
2. Informationssicherheits-Vorfälle für das in der Richtlinie oder dem Verfahren behandelte Thema und das Follow-up;
3. Performance der internen Kontrollen bezüglich Informationssicherheit für das in der Richtlinie oder dem Verfahren behandelte Thema;
4. Geplante Änderungen für das in der Richtlinie oder dem Verfahren behandelte Thema zur Adressierung von Cybersecurity-Risiken.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Management-Review-Kadenz**: quartalsweiser CISO-Report an CEO (Kurzform, KPI-Fokus), jährlicher formeller Management-Review-Workshop (ISO 27001 Abschnitt 9.3-konform, dokumentiert im Meeting-Protokoll mit Entscheidungen)
- **Security-KPI-Set** (Complementing): MTTD (Mean Time to Detect), MTTR (Mean Time to Respond), Anzahl offener High/Critical-Vulns, Patch-Compliance-Rate, Phishing-Simulations-Klickrate, Coverage aktueller Security-Trainings, Kunden-Vorfall-Anzahl, SLA-Verfügbarkeit
- **Business-Aligned Metrics**: Security-Awareness-Score korreliert mit HR-Retention, Krankenhaus-Kunden-NPS gekoppelt an Incident-Rate, Time-to-Cert (neuer Krankenhaus-Kunde bis Onboarding-Abschluss) als Business-Metrik; Cross-Reporting mit anderen Bereichen (Legal, Sales, Support)
- **Policy-Owner-Reports**: jeder Policy-Owner (z. B. Krypto-Owner, Access-Owner, Vendor-Risk-Owner) berichtet jährlich strukturiert; Standardvorlage in GRC-Tool; automatische Erinnerung 60 Tage vor Management-Review; Ergebnisse fließen in Roadmap-Priorisierung

## Verwandte Kriterien

- [[COM-01 Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements]]
- [[COM-02 Policy for Planning and Conducting Audits]]
- [[COM-03 Internal Audits of the Information Security Management System]]
- [[OIS-01 Information Security Management System (ISMS)]]
- [[OIS-03 Information Security Officer]]
- [[OIS-07 Risk Management Policy]]
- [[SIM-06 Evaluation and Learning Process]]
