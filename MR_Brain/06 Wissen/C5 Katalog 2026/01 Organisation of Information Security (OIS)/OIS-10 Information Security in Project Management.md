---
title: OIS-10 Information Security in Project Management
project: "[[C5 Katalog 2026]]"
c5-id: OIS-10
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-10
---

# OIS-10 · Information Security in Project Management

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-10  
> **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OIS-10.01B — Basic

**Kriterium (EN):**

> Information security is integrated into project management. Risks are assessed by the cloud service provider according to OIS-07, and the risk treatment is performed if necessary. Risks are treated in all projects that may have a direct or significant impact on the provision, operation, or security of the cloud service.

**Deutsche Übersetzung:**

Informationssicherheit ist in das Projektmanagement integriert. Risiken werden vom Cloud-Diensteanbieter gemäß [[OIS-07 Risk Management Policy|OIS-07]] bewertet und die Risikobehandlung wird bei Bedarf durchgeführt. Risiken werden in allen Projekten behandelt, die einen direkten oder wesentlichen Einfluss auf Bereitstellung, Betrieb oder Sicherheit des Cloud-Dienstes haben können.

**Zusatzinformation (EN):**

> Risks with a significant impact are those that, if they were to occur, would cause a damage of such a scale as to materially affect the information security of the cloud service, control effectiveness or service commitments of the cloud service provider.

**Zusatzinformation (DE):**

Risiken mit wesentlicher Auswirkung sind solche, die bei Eintreten einen Schaden in einem Umfang verursachen würden, der die Informationssicherheit des Cloud-Dienstes, die Wirksamkeit der Kontrollen oder die Service-Zusagen des Cloud-Diensteanbieters materiell beeinträchtigt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Security-by-Design als Pflicht-Gate** im Projektlebenszyklus: bei jedem größeren Projekt (neue Features, Architekturänderungen, Onboarding neuer Sub-Prozessoren) ist eine Security-Review durch das Security-Team vor dem Kick-off Pflicht; Ergebnis dokumentiert im Projekt-Handbuch
- **Threat Modeling Workshop** zu Projektbeginn: STRIDE/LINDDUN-Session mit Product Owner, Architekten und Security-Team; für Projekte mit Verarbeitung von Gesundheitsdaten zusätzlich DSFA (Datenschutz-Folgenabschätzung nach Art. 35 DSGVO)
- **Security-Anforderungen als User Stories/Acceptance Criteria** in Jira/Azure DevOps: z. B. „AC: Alle personenbezogenen Datenfelder sind at-rest verschlüsselt", „AC: Zugriff auf Patientendaten wird im Audit-Log erfasst"; Definition of Done erfordert Security-Freigabe
- **Projekt-Risikoregister** mit Verknüpfung zum zentralen ISMS-Risikoregister: nach Projektabschluss werden verbleibende Risiken in den regulären Risikomanagement-Prozess übergeben, keine „Waisenrisiken" nach Projektende

## Verwandte Kriterien

- [[OIS-07 Risk Management Policy]]
- [[OIS-08 Application of the Risk Management Policy - Risk Assessment]]
- [[OIS-09 Application of the Risk Management Policy - Risk Treatment]]
- [[DEV-01 Policies for the Development-Procurement of System Components|DEV-01]] *(noch nicht angelegt)*
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] *(noch nicht angelegt)*
