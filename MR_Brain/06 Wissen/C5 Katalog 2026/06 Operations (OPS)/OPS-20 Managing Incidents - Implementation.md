---
title: OPS-20 Managing Incidents - Implementation
project: "[[C5 Katalog 2026]]"
c5-id: OPS-20
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-20
---

# OPS-20 · Managing Incidents — Implementation

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-20 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-20.01B — Basic

**Kriterium (EN):**

> The cloud service provider identifies, records, classifies, prioritises, and addresses incidents according to the policies and procedures for the identification and management of incidents and crashes (cf. OPS-19).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter identifiziert, erfasst, klassifiziert, priorisiert und behandelt Incidents gemäß den Richtlinien und Verfahren zur Identifikation und Behandlung von Incidents und Crashes (vgl. [[OPS-19 Managing Incidents and Crashes - Policies and Procedures|OPS-19]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Incident-Management-System** (z. B. Jira Service Management, ServiceNow, PagerDuty): jeder Incident als Ticket erfasst mit Klassifizierung, Priorität, Assignee, Status, Timeline; verpflichtender Post-Mortem bei S1/S2
- **24×7-On-Call-Rotation** mit definierten Reaktionszeiten (S1: 15 min, S2: 1 h, S3: 4 h); Escalation-Path bei fehlender Reaktion (Primary → Secondary → Manager → CTO)
- **Runbook-basierte Response**: für bekannte Muster automatisierte Playbooks (Restart-Sequenz, Failover, Rollback); nicht bekannte Fälle → Improvisation dokumentieren → nachträgliches Runbook
- **Incident-Metriken tracken**: MTTR (Mean Time To Recover), MTTA (Mean Time To Acknowledge), Incident-Frequenz pro Komponente; monatliches Review durch CISO + CTO; Trends → Verbesserungsmaßnahmen

## Verwandte Kriterien

- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OPS-21 Managing Crashes - Implementation]]
- [[OPS-23 Managing Vulnerabilities, Incidents and Crashes - Measurements, Analyses and Assessments of Procedures]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[SIM-02 Processing of Security Incidents|SIM-02]] *(noch nicht angelegt)*
