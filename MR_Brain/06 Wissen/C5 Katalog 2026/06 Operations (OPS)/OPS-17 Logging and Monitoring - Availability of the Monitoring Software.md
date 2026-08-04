---
title: OPS-17 Logging and Monitoring - Availability of the Monitoring Software
project: "[[C5 Katalog 2026]]"
c5-id: OPS-17
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-17
---

# OPS-17 · Logging and Monitoring — Availability of the Monitoring Software

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-17 · **Unterkriterien:** 4 (2 Basic · 2 Complementing)

## Unterkriterien

### OPS-17.01B — Basic

**Kriterium (EN):**

> The cloud service provider monitors the availability of the system components for logging and monitoring in its area of responsibility.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter überwacht die Verfügbarkeit der Systemkomponenten für Logging und Monitoring in seinem Verantwortungsbereich.

---

### OPS-17.02B — Basic

**Kriterium (EN):**

> Failures are automatically and timely reported to the cloud service provider's responsible departments so that these can assess the failures and take required action.

**Deutsche Übersetzung:**

Ausfälle werden automatisch und zeitnah an die verantwortlichen Abteilungen des Cloud-Diensteanbieters gemeldet, sodass diese die Ausfälle bewerten und die erforderlichen Maßnahmen ergreifen können.

---

### OPS-17.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider provides resilience for the logs and the associated infrastructure by defining, documenting and implementing measures to protect their integrity, availability and confidentiality.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter gewährleistet Resilienz für die Logs und die zugehörige Infrastruktur durch Definition, Dokumentation und Umsetzung von Maßnahmen zum Schutz von Integrität, Verfügbarkeit und Vertraulichkeit.

---

### OPS-17.02AC — Additional (Complementing)

**Kriterium (EN):**

> The system components for logging and monitoring are designed in such a way that the overall functionality is not restricted if individual components fail.

**Deutsche Übersetzung:**

Die Systemkomponenten für Logging und Monitoring sind so ausgelegt, dass die Gesamt-Funktionalität bei Ausfall einzelner Komponenten nicht eingeschränkt wird.

**Zusatzinformation (DE):**

Einzelne Komponenten, die die Gesamt-Funktionalität einschränken könnten, sind Single Points of Failure. Solche Einschränkungen können durch Identifikation potenzieller SPOFs und Adressierung durch Redundanz oder das Design und die Implementierung einer resilienten Architektur vermieden werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Meta-Monitoring**: separates, unabhängiges System überwacht Verfügbarkeit der Log-Pipeline (Ingestion-Rate, Latency, Fehler); Dead Letter Queue bei Verarbeitungsfehlern; Alarm binnen 5 min bei Ingestion-Stopp
- **Redundante SIEM-Cluster** in mind. 2 Availability Zones; Load-Balancing + Automatic Failover; Log-Duplizierung bei kritischen Sources (Prod → Primary SIEM + Failover-SIEM)
- **Fallback-Buffer** in Log-Shippern: bei SIEM-Ausfall werden Logs lokal auf Nodes gepuffert (mind. 24 h) und nachgesendet; kein Log-Verlust bei kurzen Ausfällen der Ingestion-Pipeline
- **Regelmäßige Chaos-Tests**: gezieltes Abschalten einzelner SIEM-Komponenten während Übungen; Verifikation dass Detection weiter funktioniert; dokumentierte Post-Mortems

## Verwandte Kriterien

- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[OPS-14 Logging and Monitoring - Retention of the Logging Data]]
- [[OPS-02 Capacity Management - Monitoring]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
