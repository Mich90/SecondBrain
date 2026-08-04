---
title: SIM-03 Processing of Security Incidents
project: "[[C5 Katalog 2026]]"
c5-id: SIM-03
c5-area: SIM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sim
aliases:
  - SIM-03
---

# SIM-03 · Processing of Security Incidents

> [!info] Kontext
> **Bereich:** Security Incident Management (SIM) · **Kriterium-ID:** SIM-03 · **Unterkriterien:** 10 (7 Basic · 3 Complementing)

## Unterkriterien

### SIM-03.01B — Basic

**Kriterium (EN):**

> Subject matter experts of the cloud service provider classify, prioritise and perform root-cause analyses for events that could constitute a security incident.

**Deutsche Übersetzung:**

Fachexperten des Cloud-Diensteanbieters klassifizieren, priorisieren und führen Ursachenanalysen (Root-Cause-Analyses) für Ereignisse durch, die einen Sicherheitsvorfall darstellen könnten.

---

### SIM-03.02B — Basic

**Kriterium (EN):**

> The results of these root-cause analyses are documented, shared with relevant stakeholders, and used as part of evaluation and learning processes.

**Deutsche Übersetzung:**

Die Ergebnisse dieser Ursachenanalysen werden dokumentiert, mit relevanten Stakeholdern geteilt und im Rahmen von Evaluations- und Lernprozessen genutzt.

---

### SIM-03.03B — Basic

**Kriterium (EN):**

> If the cloud service provider determines that it requires external assistance for processing a security incident, it selects an incident response service based on their competence and trustworthiness or by following the recommendations of a national cybersecurity authority.

**Deutsche Übersetzung:**

Wenn der Cloud-Diensteanbieter feststellt, dass er externe Unterstützung für die Bearbeitung eines Sicherheitsvorfalls benötigt, wählt er einen Incident-Response-Service basierend auf dessen Kompetenz und Vertrauenswürdigkeit aus — oder folgt den Empfehlungen einer nationalen Cybersecurity-Behörde.

---

### SIM-03.04B — Basic

**Kriterium (EN):**

> A catalogue providing clear identification of information security incidents affecting cloud service customer data is maintained and used for the classification of information security incidents.

**Deutsche Übersetzung:**

Ein Katalog zur klaren Identifikation von Informationssicherheits-Vorfällen, die Kundendaten betreffen, wird gepflegt und zur Klassifizierung von Informationssicherheits-Vorfällen genutzt.

---

### SIM-03.05B — Basic

**Kriterium (EN):**

> The cloud service provider also uses the incident classification mechanism for the correlation of information security events, and assesses as well as classifies the correlated information security events according to their criticality.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter nutzt den Klassifizierungsmechanismus auch für die **Korrelation von Informationssicherheits-Events** und bewertet sowie klassifiziert die korrelierten Events gemäß ihrer Kritikalität.

---

### SIM-03.06B — Basic

**Kriterium (EN):**

> All documents and evidence that provide details on security incidents related to the cloud service are archived in a secure and tamper-proof manner, in line with criticality and regulatory requirements.

**Deutsche Übersetzung:**

Alle Dokumente und Nachweise, die Details zu Sicherheitsvorfällen im Zusammenhang mit dem Cloud-Dienst liefern, werden sicher und **manipulationssicher** archiviert — im Einklang mit Kritikalität und regulatorischen Anforderungen.

**Zusatzinformation (DE):**

Regulatorische Anforderungen können die Aufrechterhaltung einer **Chain of Custody** erforderlich machen, um sicherzustellen, dass Dokumente in Gerichtsverfahren verwendet werden können.

---

### SIM-03.07B — Basic

**Kriterium (EN):**

> The analysis process provides sufficient traceability to understand root causes and attack progression, appropriate to the risk and impact of the security incident.

**Deutsche Übersetzung:**

Der Analyseprozess bietet ausreichende Nachvollziehbarkeit, um Ursachen und Angriffsverläufe zu verstehen — angemessen zum Risiko und zur Auswirkung des Sicherheitsvorfalls.

---

### SIM-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider simulates the identification, analysis and defence of security incidents and attacks at least once a year through appropriate tests and exercises (e.g. Red Team training).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter simuliert die Identifikation, Analyse und Abwehr von Sicherheitsvorfällen und Angriffen **mindestens einmal jährlich** durch angemessene Tests und Übungen (z. B. **Red Team Training**).

---

### SIM-03.02AC — Additional (Complementing)

**Kriterium (EN):**

> An integrated team of forensic/incident responder personnel, specifically qualified to preserve evidence and manage a chain of custody, is established or contracted for their services.

**Deutsche Übersetzung:**

Ein integriertes Team aus Forensikern/Incident-Respondern, speziell qualifiziert zur Beweissicherung und zum Chain-of-Custody-Management, ist etabliert oder für seine Dienste unter Vertrag genommen.

---

### SIM-03.03AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider verifies the application of incident management policies and procedures by monitoring the information security incident handling processes. Timely and appropriate remediation measures address any deviations identified during monitoring.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter verifiziert die Anwendung der Incident-Management-Richtlinien und -Verfahren durch Überwachung der Incident-Handling-Prozesse. Zeitnahe und angemessene Behebungsmaßnahmen adressieren im Rahmen des Monitorings festgestellte Abweichungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **SOC + Incident-Response-Prozess**: SOC-Analysten (24/7) klassifizieren Alerts → Verifikation als Incident → Übergabe an CSIRT → Root-Cause-Analyse mit dokumentiertem Timeline; alle Aktivitäten im Ticket-System nachvollziehbar
- **Incident-Klassifikations-Katalog**: strukturiert nach Datenkategorie (Patientendaten vs. Metadaten), Vertraulichkeitsverlust (bestätigt vs. Verdacht), Impact-Skala (Anzahl betroffener Datensätze); mapping zu DSGVO-Meldepflichten (≥ 72h-Grenze)
- **Red-Team-Übung** jährlich (Complementing): externer Anbieter simuliert realistischen Angriff (Phishing → laterale Bewegung → Datenexfiltration-Versuch); CSIRT reagiert wie im Ernstfall; Ergebnisse fließen in Verbesserungen und Trainings-Materialien
- **Tamper-Proof-Archiv**: WORM-Storage (Write-Once, Read-Many) für Incident-Evidence; Zeitstempel via qualifizierter Zeitstempeldienst (§ 5 VDG); getrennte Aufbewahrung nach Meldepflicht-Anforderungen (z. B. 10 Jahre für DSGVO-Vorfälle); Chain-of-Custody-Log für alle Zugriffe

## Verwandte Kriterien

- [[SIM-01 Policy for Security Incident Management]]
- [[SIM-02 Security Incident Response Plans]]
- [[SIM-04 Documentation and Reporting of Security Incidents]]
- [[SIM-06 Evaluation and Learning Process]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-13 Logging and Monitoring - Availability of the Monitoring Software]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[COM-04 Information Requests from Government Agencies|COM-04]] *(noch nicht angelegt)*
