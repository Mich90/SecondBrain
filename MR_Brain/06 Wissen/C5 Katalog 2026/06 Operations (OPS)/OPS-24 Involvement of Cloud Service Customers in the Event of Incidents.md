---
title: OPS-24 Involvement of Cloud Service Customers in the Event of Incidents
project: "[[C5 Katalog 2026]]"
c5-id: OPS-24
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-24
---

# OPS-24 · Involvement of Cloud Service Customers in the Event of Incidents

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-24 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

## Unterkriterien

### OPS-24.01B — Basic

**Kriterium (EN):**

> The cloud service provider periodically informs the cloud service customer on the status of incidents affecting the cloud service customer, or, where appropriate and necessary, involve the customer in the resolution, in a manner consistent with the contractual agreements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter informiert den Cloud-Dienstkunden regelmäßig über den Status von Incidents, die den Cloud-Dienstkunden betreffen, oder bindet — wo sinnvoll und erforderlich — den Kunden in die Behebung ein, in einer mit den vertraglichen Vereinbarungen konsistenten Weise.

---

### OPS-24.02B — Basic

**Kriterium (EN):**

> As soon as an incident has been resolved from the cloud service provider's perspective, the cloud service customer is informed about the actions taken according to the contractual agreements.

**Deutsche Übersetzung:**

Sobald ein Incident aus Sicht des Cloud-Diensteanbieters behoben ist, wird der Cloud-Dienstkunde gemäß den vertraglichen Vereinbarungen über die ergriffenen Maßnahmen informiert.

---

### OPS-24.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider defines and documents procedures in contractual agreements with cloud service customers that specify the involvement of the customer in confirming, within a specified time period, that a resolution has effectively addressed the root cause of an incident.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert und dokumentiert in vertraglichen Vereinbarungen mit Cloud-Dienstkunden Verfahren, die die Einbindung des Kunden festlegen, um innerhalb eines definierten Zeitraums zu bestätigen, dass eine Behebung die Root Cause eines Incidents wirksam adressiert hat.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Kunden-Notifikations-Prozess** mit klaren SLAs pro Severity: S1 (kundenrelevant) → E-Mail + SMS + Statuspage-Update binnen 30 min; S2 → binnen 2 h; regelmäßige Updates alle 60/120 min bis Resolution
- **Kundenkommunikation-Templates** je Incident-Typ: Standard-Formulierungen für „Auth-Ausfall", „Performance-Probleme", „Sicherheitsvorfall mit Kundendaten"; DSGVO-relevant für Meldepflicht bei Datenschutzvorfällen (Art. 33 DSGVO, 72h)
- **Post-Incident-Reports** binnen 5 Werktagen: Root-Cause, ergriffene Maßnahmen, Präventions-Aktionen; für S1 mit CISO-Signatur; Krankenhaus kann Report für eigene Compliance (KRITIS-Prüfnachweis, KHZG-Reports) verwenden
- **Customer-Confirmation-Prozess**: Kunde bestätigt innerhalb von 5 Werktagen die Wirksamkeit der Behebung; Nicht-Bestätigung → automatisches Re-Opening des Tickets; wichtig für nachhaltige Fehleranalyse

## Verwandte Kriterien

- [[OPS-02 Capacity Management - Monitoring]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OPS-20 Managing Incidents - Implementation]]
- [[GC-02 Information on availability and incident handling during regular operation|GC-02 · SLA Regelbetrieb]]
- [[SIM-04 Duty of the Cloud Service Provider to Report Security Incidents|SIM-04]] *(noch nicht angelegt)*
