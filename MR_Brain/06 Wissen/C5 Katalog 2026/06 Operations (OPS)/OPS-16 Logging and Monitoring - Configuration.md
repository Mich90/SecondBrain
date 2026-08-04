---
title: OPS-16 Logging and Monitoring - Configuration
project: "[[C5 Katalog 2026]]"
c5-id: OPS-16
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-16
---

# OPS-16 · Logging and Monitoring — Configuration

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-16 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### OPS-16.01B — Basic

**Kriterium (EN):**

> Access to system components for logging and monitoring in the cloud service provider's area of responsibility is restricted to authorised users and requires authentication with two or more factors.

**Deutsche Übersetzung:**

Der Zugriff auf Systemkomponenten für Logging und Monitoring im Verantwortungsbereich des Cloud-Diensteanbieters ist auf autorisierte Nutzer beschränkt und erfordert eine Authentifizierung mit zwei oder mehr Faktoren (**MFA**).

---

### OPS-16.02B — Basic

**Kriterium (EN):**

> Changes to the configuration are made in accordance with the applicable policies (cf. DEV-03).

**Deutsche Übersetzung:**

Änderungen an der Konfiguration erfolgen gemäß den anwendbaren Richtlinien (vgl. [[DEV-03 Policies for Changes to System Components|DEV-03]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **PAM-Zugriff auf SIEM/Log-System**: kein Direktzugriff möglich, nur via privilegiertem Access Manager (z. B. CyberArk, HashiCorp Boundary); Just-in-Time Access, Session-Recording, MFA-Zwang
- **Config-as-Code für SIEM**: SIEM-Regeln und Konfiguration in Git-Repo (versioniert), Peer-Review vor Deployment (Pull Request), CI/CD-Pipeline mit Tests; nichts direkt in UI ändern erlaubt (nur break-glass mit Alarm)
- **Break-Glass-Prozess**: für Notfall-Config-Änderungen (z. B. Silence bei False-Positive-Sturm) dokumentierter Notfall-Prozess mit Nachdokumentation binnen 24h; jede Nutzung als Security-Event geloggt
- **Change Approval**: Änderungen an Log-Retention, Ingestion-Pipeline, oder Alerting-Regeln erfordern CAB-Freigabe; Änderungen an Detection-Content per PR-Review durch mind. 2 SOC-Analysten

## Verwandte Kriterien

- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[IAM-08 Authentication Mechanisms|IAM-08]] *(noch nicht angelegt)*
- [[DEV-03 Policies for Changes to System Components|DEV-03]] *(noch nicht angelegt)*
