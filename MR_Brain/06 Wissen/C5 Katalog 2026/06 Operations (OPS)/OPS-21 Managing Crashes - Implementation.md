---
title: OPS-21 Managing Crashes - Implementation
project: "[[C5 Katalog 2026]]"
c5-id: OPS-21
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-21
---

# OPS-21 · Managing Crashes — Implementation

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-21 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-21.01B — Basic

**Kriterium (EN):**

> Crashes of system components, parts of or the whole cloud service under the responsibility of the cloud service provider are identified, recorded, and addressed according to the policies and procedures for the identification and management of incidents and crashes (cf. OPS-19).

**Deutsche Übersetzung:**

Crashes von Systemkomponenten, Teilen des Cloud-Dienstes oder des gesamten Cloud-Dienstes im Verantwortungsbereich des Cloud-Diensteanbieters werden gemäß den Richtlinien und Verfahren zur Identifikation und Behandlung von Incidents und Crashes (vgl. [[OPS-19 Managing Incidents and Crashes - Policies and Procedures|OPS-19]]) identifiziert, erfasst und behandelt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Crash-Detection** via automatisches Monitoring: OOM-Killer-Events, Kernel-Panics, Service-Restarts (K8s), Auth-Provider-Ausfälle; automatisches Ticket bei Wiederholung > 3× / 5 min
- **Automatisierte Crash-Dump-Verarbeitung**: bei Crash → Dump-Erzeugung → PII-Scrubbing (Regex für Versichertennummern, Namensfelder, IBANs) → verschlüsselte Ablage → Ticket-Verlinkung
- **Root-Cause-Analyse**: Post-Mortem mit 5-Why-Analyse, gerichtet an Verbesserung (Softwarefehler → Fix in Backlog; Config-Fehler → Change-Kontrolle prüfen; DDoS → WAF-Regeln anpassen)
- **Trend-Analyse**: monatliches Crash-Report an Engineering-Management: welche Services crashen häufig, Root-Causes, präventive Maßnahmen (Chaos-Testing, Load-Testing)

## Verwandte Kriterien

- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[OPS-20 Managing Incidents - Implementation]]
- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
