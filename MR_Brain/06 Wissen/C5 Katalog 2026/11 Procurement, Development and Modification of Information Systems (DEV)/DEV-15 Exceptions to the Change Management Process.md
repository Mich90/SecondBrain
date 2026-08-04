---
title: DEV-15 Exceptions to the Change Management Process
project: "[[C5 Katalog 2026]]"
c5-id: DEV-15
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-15
---

# DEV-15 · Exceptions to the Change Management Process

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-15 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### DEV-15.01B — Basic

**Kriterium (EN):**

> The cloud service provider's change management process implements procedures for managing exceptions, including emergency changes, to ensure related risks are appropriately mitigated.

**Deutsche Übersetzung:**

Der Change-Management-Prozess des Cloud-Diensteanbieters implementiert Verfahren zum Umgang mit Ausnahmen — einschließlich Emergency Changes —, um sicherzustellen, dass zugehörige Risiken angemessen gemindert werden.

**Zusatzinformation (DE):**

Dieses Kriterium bezieht sich hauptsächlich auf den in [[SP-03 Exceptions from Existing Policies and Procedures|SP-03]] geforderten Ausnahme-Prozess, wobei hier alle Ausnahmen vom Standard-Change-Verfahren gemeint sind.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Emergency-Change-Prozess** klar dokumentiert: Trigger-Ereignisse (Zero-Day-Exploit, Prod-Ausfall mit Kundenbeeinträchtigung); verkürzter Approval (CISO + Ops-Manager gemeinsam ausreichend); mandatorisches Post-Mortem binnen 48 h
- **Ausnahmen-Register**: alle Change-Ausnahmen (Skip Tests, Skip Peer-Review, Direct-to-Prod) mit Begründung, Approver, Kompensation, Ablaufdatum; regelmäßiger Report an CISO; Trend-Analyse (steigende Ausnahmen = Prozessverbesserung nötig)
- **Compensating Controls bei Ausnahmen**: verstärktes Monitoring (Sentinel-Alerts auf betroffenen Systemen für 30 Tage), Rollback-Bereitschaft (Blue/Green mit Traffic-Shift-Option), Kunden-Notification wenn relevant, Nachträgliche Test-Suite-Ergänzung
- **KPI-Tracking**: Anzahl Emergency Changes pro Monat (Ziel: < 5 % aller Changes); Anzahl Ausnahmen ohne Post-Mortem (Ziel: 0); Anteil Emergency Changes ohne dokumentiertes Rollback (Ziel: 0)

## Verwandte Kriterien

- [[DEV-03 Policies for Changes to System Components]]
- [[DEV-06 Risk Assessment, Categorisation and Prioritisation of Changes]]
- [[DEV-07 Testing Changes]]
- [[DEV-10 Approvals for Provision in the Production Environment]]
- [[SP-03 Exceptions from Existing Policies and Procedures]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
