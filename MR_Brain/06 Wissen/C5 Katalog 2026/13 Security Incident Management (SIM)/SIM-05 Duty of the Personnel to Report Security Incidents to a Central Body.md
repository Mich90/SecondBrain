---
title: SIM-05 Duty of the Personnel to Report Security Incidents to a Central Body
project: "[[C5 Katalog 2026]]"
c5-id: SIM-05
c5-area: SIM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sim
aliases:
  - SIM-05
---

# SIM-05 · Duty of the Personnel to Report Security Incidents to a Central Body

> [!info] Kontext
> **Bereich:** Security Incident Management (SIM) · **Kriterium-ID:** SIM-05 · **Unterkriterien:** 3 (3 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass identifizierte Sicherheits-Events, die der Cloud-Diensteanbieter bearbeiten muss, zeitnah an das zuvor benannte verantwortliche Personal kommuniziert werden.

## Unterkriterien

### SIM-05.01B — Basic

**Kriterium (EN):**

> The cloud service provider informs personnel and external business partners of their obligations. If necessary, they agree to or are contractually obliged to timely report all security events that become known to them and are directly related to the cloud service provided by the cloud service provider to a previously designated central office of the cloud service provider.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter informiert Personal und externe Geschäftspartner über ihre Verpflichtungen. Bei Bedarf verpflichten sie sich (oder werden vertraglich verpflichtet), alle ihnen bekannt werdenden Sicherheits-Events, die direkt mit dem Cloud-Dienst zusammenhängen, **zeitnah** an eine zuvor benannte **zentrale Stelle** des Cloud-Diensteanbieters zu melden.

---

### SIM-05.02B — Basic

**Kriterium (EN):**

> The cloud service provider communicates that 'false reports' of events that do not subsequently turn out to be incidents do not have any negative consequences.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter kommuniziert, dass **„Falschmeldungen"** von Events, die sich später nicht als Vorfälle herausstellen, **keine negativen Konsequenzen** haben.

---

### SIM-05.03B — Basic

**Kriterium (EN):**

> The information security incident reporting mechanisms are communicated to personnel, cloud service customers and service organisations of the cloud service provider.

**Deutsche Übersetzung:**

Die Meldemechanismen für Informationssicherheits-Vorfälle werden an Personal, Cloud-Dienstkunden und Service-Organisationen des Cloud-Diensteanbieters kommuniziert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zentraler Meldekanal**: dedizierte E-Mail-Adresse (security@anbieter.de) + interne Meldebutton in Slack/Teams + 24/7-Hotline für kritische Fälle; unter „Sicherheit melden" im Intranet prominent verlinkt
- **Just-Culture-Kommunikation**: „no-blame"-Kultur in Trainings und Führungs-Kommunikation etabliert; anonyme Meldemöglichkeit für kritische Beobachtungen; positive Verstärkung bei berechtigten Falschmeldungen („thank you for reporting")
- **Regelmäßige Awareness**: jährliches Security-Training mit konkreten Beispielen (Phishing-E-Mail, verdächtiges Verhalten von Kollege, verlorene Zugangskarte); Poster im Büro; Newsletter mit anonymisierten Fallbeispielen
- **Externe Meldemöglichkeit für Kunden und Vendoren**: dokumentiert im Kunden-Portal und in AVVs; „security@"-Kanal auch extern erreichbar; Meldung von Findings durch Bug-Bounty-Programm oder Coordinated Disclosure Policy

## Verwandte Kriterien

- [[SIM-01 Policy for Security Incident Management]]
- [[SIM-03 Processing of Security Incidents]]
- [[SIM-06 Evaluation and Learning Process]]
- [[HR-03 Security Training and Awareness Programme]]
- [[HR-04 Sanctions in Case of Violations of Policies and Instructions]]
- [[HR-05 Confidentiality Agreements]]
- [[OPS-20 Managing Incidents - Communication and Involvement of Cloud Service Customers]]
- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
