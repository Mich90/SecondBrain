---
title: DEV-04 Safety Training and Awareness Programme Regarding Continuous Software Delivery
project: "[[C5 Katalog 2026]]"
c5-id: DEV-04
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-04
---

# DEV-04 · Safety Training and Awareness Programme Regarding Continuous Software Delivery and Associated Systems, Components or Tools

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-04 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### DEV-04.01B — Basic

**Kriterium (EN):**

> The cloud service provider provides a training programme for regular, role-based security training and awareness for internal and external personnel on standards and methods for:
>
> 1. Secure software development and provision as well as on how to use the tools used for this purpose; and
> 2. Risks linked to malicious code and best practices to reduce the impact of an infection.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt ein Trainingsprogramm für regelmäßige, rollenbasierte Sicherheits-Trainings und Awareness für internes und externes Personal zu Standards und Methoden bereit für:

1. Sichere Softwareentwicklung und -bereitstellung sowie zur Nutzung der dafür verwendeten Tools;
2. Risiken durch Schadsoftware und Best Practices zur Reduktion der Auswirkungen einer Infektion.

**Zusatzinformation (DE):**

Dies ist ein spezialisiertes Kriterium für Sicherheits-Trainings und Awareness-Programme für eine bestimmte Zielgruppe. In [[HR-03 Security Training and Awareness Programme|HR-03]] werden allgemeine Eigenschaften solcher Trainings und Programme definiert.

---

### DEV-04.02B — Basic

**Kriterium (EN):**

> The programme is regularly reviewed and updated with regard to the applicable policies and procedures, the assigned roles and responsibilities and the tools used.

**Deutsche Übersetzung:**

Das Programm wird regelmäßig überprüft und in Bezug auf die anwendbaren Richtlinien und Verfahren, die zugewiesenen Rollen und Verantwortlichkeiten sowie die genutzten Tools aktualisiert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Rollen-basiertes Trainings-Curriculum**: Developer (OWASP Top 10, Secure Coding, SAST-Tool-Nutzung), DevOps/SRE (CI/CD-Härtung, Secrets-Management, K8s Security), Architects (Threat Modelling STRIDE/LINDDUN, Cloud-Security-Patterns), QA (Security-Test-Design, DAST)
- **Healthcare-Spezifika**: DSGVO in der Softwareentwicklung, § 203 StGB-Bewusstsein für Zugriff auf Patientendaten, FHIR Security Considerations, DiGA-Zulassungsanforderungen, KHZG-Sicherheitsrichtlinien für Krankenhausdaten
- **Praktisches Training**: Secure-Code-Warrior oder ähnliche Plattformen mit sprachspezifischen Übungen; jährliche Capture-the-Flag-Events; „Attack & Defense"-Workshops mit realistischen Healthcare-Angriffsszenarien
- **Programm-Review** jährlich: nach neuen Sicherheitsvorfällen (interne + Branche), Änderung des Tech-Stacks (neue Frameworks, neue Cloud-Services), regulatorische Änderungen; KPI: Completion-Rate 95%+, Test-Pass-Rate 85%+

## Verwandte Kriterien

- [[DEV-01 Policies for the Development/Procurement of System Components]]
- [[HR-03 Security Training and Awareness Programme]]
- [[OPS-04 Protection Against Malware - Policies and Procedures]]
- [[OPS-05 Protection Against Malware - Implementation]]
- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
