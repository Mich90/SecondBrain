---
title: IAM-05 Regular Review of Access Rights
project: "[[C5 Katalog 2026]]"
c5-id: IAM-05
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-05
---

# IAM-05 · Regular Review of Access Rights

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-05 · **Unterkriterien:** 6 (5 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium gilt für Identitäten, die sich auf einzelne, mehrere oder nicht-menschliche Entitäten beziehen. Als Alternative zu regelmäßigen Reviews können auch zeitgebundene Zugriffsrechte, die automatisch ablaufen, vergeben werden. Wenn ein Review durch wesentliche Änderungen ausgelöst wird, müssen nur die betroffenen Identitäten und Zugriffsrechte in den Review einbezogen werden.

## Unterkriterien

### IAM-05.01B — Basic

**Kriterium (EN):**

> Identities and the associated access rights of internal and external personnel of the cloud service provider as well as of system components that play a role in automated authorisation processes of the cloud service provider are reviewed at least once a year and in case of significant changes to the cloud service to ensure that they still correspond to the actual area of use.

**Deutsche Übersetzung:**

Identitäten und zugehörige Zugriffsrechte des internen und externen Personals des Cloud-Diensteanbieters sowie von Systemkomponenten in automatisierten Autorisierungsprozessen werden **mindestens jährlich** und bei wesentlichen Änderungen am Cloud-Dienst überprüft, um sicherzustellen, dass sie noch dem tatsächlichen Nutzungsbereich entsprechen.

---

### IAM-05.02B — Basic

**Kriterium (EN):**

> The review is carried out by authorised persons from the cloud service provider's organisational units, who can assess the appropriateness of the assigned access rights based on their knowledge of the task areas of the personnel or system components.

**Deutsche Übersetzung:**

Der Review wird von autorisierten Personen aus den Organisationseinheiten des Cloud-Diensteanbieters durchgeführt, die auf Basis ihrer Kenntnis der Aufgabenbereiche des Personals oder der Systemkomponenten die Angemessenheit der zugewiesenen Zugriffsrechte bewerten können.

---

### IAM-05.03B — Basic

**Kriterium (EN):**

> Identified deviations are dealt with timely, but no later than seven days after their detection, through appropriate modification or withdrawal of the access rights.

**Deutsche Übersetzung:**

Identifizierte Abweichungen werden zeitnah, jedoch spätestens **innerhalb von sieben Tagen** nach ihrer Erkennung, durch angemessene Anpassung oder Widerruf der Zugriffsrechte behandelt.

---

### IAM-05.04B — Basic

**Kriterium (EN):**

> When revoking identities, the system ensures that all production associated system components (e.g., virtual machines, storage, access rights) are identified, reassigned, or deleted to prevent the creation of orphaned resources. Clear processes and technical controls are established to identify and handle any orphaned resources that occur despite preventive measures, ensuring their timely reassignment or secure deletion.

**Deutsche Übersetzung:**

Beim Widerruf von Identitäten stellt das System sicher, dass alle produktions-assoziierten Systemkomponenten (z. B. VMs, Storage, Zugriffsrechte) identifiziert, neu zugewiesen oder gelöscht werden, um das Entstehen von **Orphan Resources** zu verhindern. Klare Prozesse und technische Kontrollen sind zur Identifikation und Behandlung von trotz präventiver Maßnahmen auftretenden Orphan Resources etabliert.

---

### IAM-05.05B — Basic

**Kriterium (EN):**

> For system components that are not production associated, the cloud service provider designs, implements and maintains appropriate controls for the prevention of orphan resources based on a risk assessment (cf. OIS-07).

**Deutsche Übersetzung:**

Für Systemkomponenten, die nicht produktions-assoziiert sind, konzipiert, implementiert und pflegt der Cloud-Diensteanbieter angemessene Kontrollen zur Vermeidung von Orphan Resources basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]).

**Zusatzinformation (DE):**

Die hier gemeinten Systemkomponenten sind Komponenten in Entwicklungs-, Test- oder anderen nicht-produktiven Umgebungen. Orphan Resources sind Systemkomponenten ohne zugewiesenen Owner.

---

### IAM-05.01AC — Additional (Complementing)

**Kriterium (EN):**

> Privileged access rights are reviewed at least every six months, and in case of significant changes to the cloud service.

**Deutsche Übersetzung:**

Privilegierte Zugriffsrechte werden **mindestens alle sechs Monate** sowie bei wesentlichen Änderungen am Cloud-Dienst überprüft.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Access-Recertification-Kampagne** halbjährlich für Privileged (Complementing), jährlich für Standard: Manager erhält Report seiner Reports mit deren Zugriffen; muss binnen 30 Tagen bestätigen oder Änderungen anfordern; Nicht-Bestätigung = automatischer Rechte-Entzug
- **Automatisiertes Access-Review-Tool** (z. B. SailPoint, Saviynt, Omada, Azure Access Reviews): Kampagnen-Verwaltung, Approvals, Reporting, Compliance-Nachweis für Auditoren
- **Orphan-Resource-Erkennung**: nächtlicher Scan über Cloud-Ressourcen ohne Owner-Tag (AWS Cost Allocation Tags, Azure Resource Tags); automatisches Ticket an Team, das die Ressource erstellt hat; nach 30 Tagen ohne Reaktion Löschung angekündigt
- **Deviation-Handling in 7 Tagen**: Findings aus Review haben SLA von 7 Werktagen bis zur Umsetzung; Compliance-Dashboard zeigt Offene, KPI-Report an CISO monatlich

## Verwandte Kriterien

- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-04 Withdrawal or Adjustment of Access Rights as the Task Area Changes]]
- [[IAM-06 Privileged Access Rights]]
- [[AM-03 Ownership of Assets]]
- [[OIS-07 Risk Management Policy]]
