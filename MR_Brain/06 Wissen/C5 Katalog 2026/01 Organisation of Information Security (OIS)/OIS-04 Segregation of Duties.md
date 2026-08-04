---
title: OIS-04 Segregation of Duties
project: "[[C5 Katalog 2026]]"
c5-id: OIS-04
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-04
---

# OIS-04 · Segregation of Duties

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-04  
> **Unterkriterien:** 6 (4 Basic · 2 Complementing)

## Unterkriterien

### OIS-04.01B — Basic

**Kriterium (EN):**

> Conflicting tasks and responsibilities are segregated based on a risk assessment in accordance with OIS-07 to reduce the risk of unauthorised or unintended changes or misuse of cloud service customer data, cloud service derived data and cloud service provider data. The risk assessment covers the following areas, insofar as these are applicable to the provision of the cloud service and are in the area of responsibility of the cloud service provider:
>
> 1. Administration of a role, rights and authorisation framework based on role-based access control and the business and security requirements of the cloud service provider (cf. IAM-01);
> 2. Development, testing and release of changes (cf. DEV-01);
> 3. Risk management (cf. OIS-07); and
> 4. Operation of the system components.

**Deutsche Übersetzung:**

Konfliktäre Aufgaben und Verantwortlichkeiten werden auf Basis einer Risikobewertung gemäß [[OIS-07 Risk Management Policy|OIS-07]] getrennt, um das Risiko unautorisierter oder unbeabsichtigter Änderungen bzw. eines Missbrauchs von Cloud-Kundendaten, abgeleiteten Daten und Anbieterdaten zu reduzieren. Die Risikobewertung deckt die folgenden Bereiche ab, soweit sie für die Erbringung des Cloud-Dienstes anwendbar sind und im Verantwortungsbereich des Cloud-Diensteanbieters liegen:

1. Verwaltung eines Rollen-, Rechte- und Berechtigungs-Frameworks basierend auf rollenbasierter Zugriffskontrolle und den geschäftlichen und sicherheitsbezogenen Anforderungen des Cloud-Diensteanbieters (vgl. [[IAM-01 Policy for Identities and Access Rights|IAM-01]]);
2. Entwicklung, Test und Freigabe von Änderungen (vgl. [[DEV-01 Policies for the Development-Procurement of System Components|DEV-01]]);
3. Risikomanagement (vgl. [[OIS-07 Risk Management Policy|OIS-07]]);
4. Betrieb der Systemkomponenten.

**Zusatzinformation (EN):**

> Identified events that may constitute unauthorised or unintentional changes to or misuse of cloud service customer data, cloud service derived data and cloud service provider data may, for example, be treated as a security incident, cf. SIM-01.
> The area of risk management in the context of segregation of duties refers to the so-called different lines of defense, i.e. roles that review risks (2nd line of defense) are different from roles that own risks (1st line of defense).

**Zusatzinformation (DE):**

Identifizierte Ereignisse, die unautorisierte oder unbeabsichtigte Änderungen oder einen Missbrauch von Cloud-Kundendaten, abgeleiteten Daten oder Anbieterdaten darstellen könnten, können z. B. als Sicherheitsvorfall behandelt werden (vgl. [[SIM-01 Policy for Security Incident Management|SIM-01]]).

Der Bereich Risikomanagement im Kontext der Aufgabentrennung bezieht sich auf die sogenannten Lines of Defense: Rollen, die Risiken prüfen (2nd Line of Defense), sind verschieden von Rollen, die Risiken verantworten (1st Line of Defense).

---

### OIS-04.02B — Basic

**Kriterium (EN):**

> Mitigating measures are outlined in the risk treatment plan (cf. OIS-09) and implemented by the cloud service provider in a way that prioritises the segregation of duties.

**Deutsche Übersetzung:**

Ausgleichende Maßnahmen sind im Risikobehandlungsplan (vgl. [[OIS-09 Application of the Risk Management Policy - Risk Treatment|OIS-09]]) beschrieben und werden vom Cloud-Diensteanbieter so umgesetzt, dass die Aufgabentrennung priorisiert wird.

---

### OIS-04.03B — Basic

**Kriterium (EN):**

> If segregation of duties cannot be implemented due to organisational or technical constraints, the cloud service provider establishes and operates compensating controls to monitor relevant activities. These controls are designed to detect unauthorised or unintended changes, misuse of data, or violations of operational policies, and enable timely and appropriate response actions.

**Deutsche Übersetzung:**

Kann eine Aufgabentrennung aus organisatorischen oder technischen Gründen nicht umgesetzt werden, etabliert und betreibt der Cloud-Diensteanbieter kompensierende Kontrollen zur Überwachung der relevanten Aktivitäten. Diese Kontrollen sind darauf ausgelegt, unautorisierte oder unbeabsichtigte Änderungen, Datenmissbrauch oder Verstöße gegen operative Richtlinien zu erkennen und zeitnahe, angemessene Reaktionen zu ermöglichen.

---

### OIS-04.04B — Basic

**Kriterium (EN):**

> An inventory consisting of conflicting tasks, responsibilities and resolving measures is established and maintained by the cloud service provider. For the assignment, change or revocation of roles, rights and authorities, the cloud service provider enforces the segregation of duties.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter erstellt und pflegt ein Inventar konfliktärer Aufgaben, Verantwortlichkeiten und dazugehöriger Lösungsmaßnahmen. Bei Zuweisung, Änderung oder Entzug von Rollen, Rechten und Befugnissen setzt der Cloud-Diensteanbieter die Aufgabentrennung durch.

---

### OIS-04.01AC — Additional (Complementing)

**Kriterium (EN):**

> To resolve conflicting roles, measures associated with the segregation of duties are monitored and enforced by the cloud service provider.

**Deutsche Übersetzung:**

Zur Auflösung konfliktärer Rollen werden die mit der Aufgabentrennung verbundenen Maßnahmen vom Cloud-Diensteanbieter überwacht und durchgesetzt.

---

### OIS-04.02AC — Additional (Complementing)

**Kriterium (EN):**

> Timely and appropriate remediation measures address any deviations identified during monitoring.

**Deutsche Übersetzung:**

Zeitnahe und angemessene Behebungsmaßnahmen adressieren sämtliche im Rahmen des Monitorings identifizierten Abweichungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Vier-Augen-Prinzip in kritischen Prozessen**: Deployments in Produktion (mit Zugriff auf Patientendaten) erfordern Freigabe durch zwei getrennte Rollen — Developer erstellt Merge Request, Release-Manager approved; separater DBA für DB-Schema-Änderungen
- **Rollen-Konflikt-Matrix (SoD-Matrix)** pflegen und in IAM-System als „mutually exclusive roles" erzwingen: z. B. „Systemadmin Prod" kann nicht gleichzeitig „Compliance Reviewer" sein; automatische Alerts, wenn Konflikte durch Rollen-Zuweisungen entstehen
- **Kompensierende Kontrollen** für Kleinteams (< 5 Personen im Betrieb), wo Trennung nicht praktikabel: Session-Recording bei privilegiertem Zugriff auf Prod-Systeme, tägliche Log-Review durch externen Auditor oder Security-Team, Alarmierung bei Zugriff außerhalb Business Hours
- **Line of Defense modellieren**: Betrieb (1st LoD) → Security- und Compliance-Team (2nd LoD, unabhängig vom Betrieb) → Interne Revision (3rd LoD, direkt an Geschäftsführung berichtend)

## Verwandte Kriterien

- [[OIS-07 Risk Management Policy]]
- [[OIS-09 Application of the Risk Management Policy - Risk Treatment]]
- [[IAM-01 Policy for Identities and Access Rights|IAM-01]] *(noch nicht angelegt)*
- [[DEV-01 Policies for the Development-Procurement of System Components|DEV-01]] *(noch nicht angelegt)*
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
