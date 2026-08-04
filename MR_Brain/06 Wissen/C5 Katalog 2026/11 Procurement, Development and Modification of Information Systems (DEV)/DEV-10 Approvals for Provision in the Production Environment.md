---
title: DEV-10 Approvals for Provision in the Production Environment
project: "[[C5 Katalog 2026]]"
c5-id: DEV-10
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-10
---

# DEV-10 · Approvals for Provision in the Production Environment

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-10 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

## Unterkriterien

### DEV-10.01B — Basic

**Kriterium (EN):**

> Authorised personnel or system components of the cloud service provider approve changes to the cloud service based on defined criteria (e.g. test results and required approvals) before these are made available to the cloud service customers in the production environment.

**Deutsche Übersetzung:**

Autorisiertes Personal oder Systemkomponenten des Cloud-Diensteanbieters genehmigen Änderungen am Cloud-Dienst basierend auf definierten Kriterien (z. B. Testergebnisse und erforderliche Freigaben), bevor diese in der Produktivumgebung den Cloud-Dienstkunden zur Verfügung gestellt werden.

---

### DEV-10.02B — Basic

**Kriterium (EN):**

> Cloud service customers are involved in the release according to contractual agreements.

**Deutsche Übersetzung:**

Cloud-Dienstkunden werden gemäß den vertraglichen Vereinbarungen in das Release einbezogen.

**Zusatzinformation (DE):**

Sehen die vertraglichen Vereinbarungen keine Kunden-Einbindung in die Freigabe vor, sollte dies zur Erfüllung dieses Kriteriums in den vertraglichen Vereinbarungen klar angegeben werden.

---

### DEV-10.01AC — Additional (Complementing)

**Kriterium (EN):**

> The approval process is monitored. Timely and appropriate remediation measures address any deviations identified during monitoring.

**Deutsche Übersetzung:**

Der Freigabeprozess wird überwacht. Zeitnahe und angemessene Behebungsmaßnahmen adressieren im Rahmen des Monitorings festgestellte Abweichungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Automated Deployment Gates**: kein Prod-Deployment ohne bestandene Tests (SAST-Score, DAST-Ergebnis, Coverage), Compliance-Prüfungen (Signed Images, SBOM aktualisiert), CAB-Approval für High-Risk-Changes; sichtbar im Dashboard
- **Release-Manager-Rolle**: getrennt vom Developer (Segregation of Duties); prüft finale Deployment-Freigabe; kann Deployment stoppen bei Bedenken; Rotation der Rolle im Team
- **Kunden-Beta-Programm**: freiwillige Krankenhäuser testen Features 30 Tage vor allgemeinem Rollout; Feedback fließt in Freigabeentscheidung; Kunden-Kommunikations-Kanal (dediziertes Portal); wichtige Compliance-Signale (z. B. neue KIS-Integration bricht in speziellen Fällen)
- **Approval-Monitoring** (Complementing): jährliche Auswertung: welche Approvals wurden schnell durchgewinkt? welche Abweichungen (nicht getestet trotz Pflicht)? Ziel: verbesserte Prozesse, wo Ausnahmen zu häufig sind

## Verwandte Kriterien

- [[DEV-03 Policies for Changes to System Components]]
- [[DEV-06 Risk Assessment, Categorisation and Prioritisation of Changes]]
- [[DEV-07 Testing Changes]]
- [[DEV-08 Logging of Changes]]
- [[DEV-15 Exceptions to the Change Management Process]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
