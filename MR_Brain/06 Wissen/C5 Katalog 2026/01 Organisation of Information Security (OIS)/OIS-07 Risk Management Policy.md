---
title: OIS-07 Risk Management Policy
project: "[[C5 Katalog 2026]]"
c5-id: OIS-07
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-07
---

# OIS-07 · Risk Management Policy

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-07  
> **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OIS-07.01B — Basic

**Kriterium (EN):**

> Policies and procedures for risk management procedures are documented, communicated and provided in accordance with SP-01. Risk management procedures are based on a methodology for risk assessments. The methodology allows comparability and reproducibility for the following aspects:
>
> 1. Identification of cybersecurity risks and other risks associated with the loss of confidentiality, integrity, availability and authenticity of information within the scope of the ISMS and assigning risk owners;
> 2. Analysis of the probability and impact of occurrence and determination of the level of risk;
> 3. Evaluation of the risk assessment based on defined criteria for risk acceptance and prioritisation of risk management;
> 4. Treatment of risks through measures, including approval of authorisation and acceptance of residual risks by risk owners;
> 5. Documentation of the activities implemented to enable consistent, valid and comparable results; and
> 6. Evaluation of the risk assessment and the status of risk treatment plans by the level of management responsible for the security of the cloud service.

**Deutsche Übersetzung:**

Richtlinien und Verfahren für das Risikomanagement sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt. Die Risikomanagement-Verfahren basieren auf einer Methodik für Risikobewertungen. Die Methodik erlaubt Vergleichbarkeit und Reproduzierbarkeit für die folgenden Aspekte:

1. Identifikation von Cybersecurity-Risiken und weiteren Risiken im Zusammenhang mit dem Verlust von Vertraulichkeit, Integrität, Verfügbarkeit und Authentizität von Informationen im Anwendungsbereich des ISMS sowie Zuweisung von Risikoeigentümern (Risk Owners);
2. Analyse von Eintrittswahrscheinlichkeit und Auswirkung sowie Bestimmung des Risikoniveaus;
3. Evaluierung der Risikobewertung anhand definierter Kriterien für Risikoakzeptanz und Priorisierung des Risikomanagements;
4. Behandlung von Risiken durch Maßnahmen, einschließlich Genehmigung und Akzeptanz der Restrisiken durch die Risikoeigentümer;
5. Dokumentation der umgesetzten Aktivitäten, um konsistente, valide und vergleichbare Ergebnisse zu ermöglichen;
6. Bewertung der Risikoeinschätzung und des Status der Risikobehandlungspläne durch die Managementebene, die für die Sicherheit des Cloud-Dienstes verantwortlich ist.

**Zusatzinformation (EN):**

> The risk level can be determined by qualitative, semiquantitative and quantitative methods (cf. ISO 31010) based on the likelihood and impact of the risks.
>
> For identifying, evaluating, and prioritising potential threats and vulnerabilities associated with processes, systems, and data flows, threat modelling can provide a structured methodology: The cloud service provider can systematically analyse attack vectors and possible impacts to support auditors and stakeholders in validating the suitability of the design of implemented controls, highlight gaps in existing security measures, and ensure alignment with best practices for proactive risk mitigation.

**Zusatzinformation (DE):**

Das Risikoniveau kann durch qualitative, semi-quantitative und quantitative Methoden (vgl. **ISO 31010**) auf Basis von Eintrittswahrscheinlichkeit und Auswirkung der Risiken bestimmt werden.

Zur Identifikation, Bewertung und Priorisierung potenzieller Bedrohungen und Schwachstellen im Zusammenhang mit Prozessen, Systemen und Datenflüssen kann **Threat Modelling** eine strukturierte Methodik bereitstellen: Der Cloud-Diensteanbieter kann Angriffsvektoren und mögliche Auswirkungen systematisch analysieren, um Auditoren und Stakeholder bei der Validierung der Angemessenheit des Designs der implementierten Kontrollen zu unterstützen, Lücken in bestehenden Sicherheitsmaßnahmen aufzudecken und die Ausrichtung an Best Practices für proaktive Risikominderung sicherzustellen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Risikomanagement-Policy** auf Basis ISO/IEC 27005 oder ISO 31000 dokumentieren; standardisiertes 5×5-Risk-Rating (Eintrittswahrscheinlichkeit × Impact); klare Risikoakzeptanz-Kriterien und Eskalationsstufen (z. B. Risiko > 15 → CEO-Genehmigung erforderlich)
- **Zentrales Risikoregister** im ISMS-Tool (z. B. Verinice, HiScout, Excel-Register) mit Feldern: Risiko-ID, Beschreibung, Asset, Bedrohung, Schwachstelle, aktuelle Kontrollen, Wahrscheinlichkeit, Impact, Risk Owner, Behandlungsplan, Zieltermin
- **Threat Modelling in Design-Reviews**: STRIDE-basierte Bewertung neuer Cloud-Service-Features vor Release; besondere Aufmerksamkeit auf Informationspreisgabe von Patientendaten (Information Disclosure), Elevation of Privilege in Multi-Mandanten-Umgebung
- **Quartalsweise Management-Reports** an CISO und Geschäftsleitung: Top-10-Risiken, Trend, Status Behandlungspläne; Verknüpfung mit KPIs des ISMS

## Verwandte Kriterien

- [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] *(noch nicht angelegt)*
- [[OIS-08 Application of the Risk Management Policy - Risk Assessment]]
- [[OIS-09 Application of the Risk Management Policy - Risk Treatment]]
- [[OIS-05 Threat Intelligence]]
- [[OIS-01 Information Security Management System (ISMS)]]
