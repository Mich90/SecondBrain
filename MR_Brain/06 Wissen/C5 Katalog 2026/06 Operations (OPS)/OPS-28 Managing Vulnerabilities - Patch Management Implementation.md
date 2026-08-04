---
title: OPS-28 Managing Vulnerabilities - Patch Management Implementation
project: "[[C5 Katalog 2026]]"
c5-id: OPS-28
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-28
---

# OPS-28 · Managing Vulnerabilities — Patch Management Implementation

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-28 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-28.01B — Basic

**Kriterium (EN):**

> The cloud service provider designs, implements and maintains technical and organisational measures for the deployment of patches on the systems and applications under its responsibility according to the patch management policies and procedures (cf. OPS-27).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter konzipiert, implementiert und pflegt technische und organisatorische Maßnahmen zum Ausrollen von Patches auf den Systemen und Anwendungen in seinem Verantwortungsbereich gemäß den Patch-Management-Richtlinien und -Verfahren (vgl. [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures|OPS-27]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **CI/CD-Pipeline mit Patch-Automation**: GitOps für Container-Rebuilds bei Base-Image-Updates; automatischer PR bei neuen Patches; Merge nach erfolgreichem Test-Durchlauf
- **Cloud-native Patch-Management**: für IaaS-Ressourcen (VMs, DBs) Auto-Patching via Cloud-Provider-Features; Wartungsfenster in Terraform kodiert; Ausnahmen dokumentiert im ISMS
- **Emergency Patching**: dokumentierter Notfall-Prozess für Zero-Day-Exploits (Log4j-Style); Aktivierung mit CISO-Freigabe; verkürzter Test-Prozess (nur Kritischtests) + verstärktes Monitoring nach Deployment
- **Patch-KPIs**: Patch Compliance Rate (Ziel > 95 % innerhalb SLA), Mean Time to Patch (MTTP) pro Severity, unpatchable Systeme (z. B. Legacy) mit dokumentierten kompensierenden Maßnahmen

## Verwandte Kriterien

- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-29 Managing Vulnerabilities, Incidents and Crashes - Externally Sourced Components]]
- [[DEV-03 Policies for Changes to System Components|DEV-03]] *(noch nicht angelegt)*
