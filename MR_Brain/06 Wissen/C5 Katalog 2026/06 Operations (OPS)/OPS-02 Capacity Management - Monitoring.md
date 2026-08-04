---
title: OPS-02 Capacity Management - Monitoring
project: "[[C5 Katalog 2026]]"
c5-id: OPS-02
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-02
---

# OPS-02 · Capacity Management — Monitoring

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-02 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die mit dem Cloud-Diensteanbieter getroffenen vertraglichen Vereinbarungen für die Bereitstellung von Ressourcen oder Diensten überwacht werden können. Bei Abweichungen stellen geeignete Kontrollen sicher, dass der Cloud-Diensteanbieter informiert wird, damit dieser angemessene Maßnahmen ergreifen kann.

## Unterkriterien

### OPS-02.01B — Basic

**Kriterium (EN):**

> Procedures and technical safeguards for the monitoring, provisioning and de-provisioning of cloud services are defined. The cloud service provider ensures that resources are delivered as contractually agreed with the customers. The cloud service provider ensures compliance with the service level agreements.

**Deutsche Übersetzung:**

Verfahren und technische Schutzmaßnahmen für das Monitoring sowie das Provisioning und De-Provisioning von Cloud-Diensten sind definiert. Der Cloud-Diensteanbieter stellt sicher, dass Ressourcen wie vertraglich mit den Kunden vereinbart bereitgestellt werden, und gewährleistet die Einhaltung der SLAs.

**Zusatzinformation (DE):**

Technische und organisatorische Maßnahmen umfassen typischerweise:

1. Einsatz von Monitoring-Tools mit Alarmfunktion bei Überschreitung definierter Schwellwerte;
2. Prozess zur Korrelation von Ereignissen und Schnittstelle zum Incident Management;
3. Kontinuierliche Überwachung der Systeme durch qualifiziertes Personal;
4. Redundanzen in den IT-Systemen.

---

### OPS-02.02B — Basic

**Kriterium (EN):**

> Capacity restrictions that result in breaches of contractual obligations are to be reported to cloud service customers in accordance with OPS-24.

**Deutsche Übersetzung:**

Kapazitätsengpässe, die zu Verletzungen vertraglicher Pflichten führen, sind den Cloud-Dienstkunden gemäß [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents|OPS-24]] zu melden.

**Zusatzinformation (DE):**

Cloud-Diensteanbieter können den Cloud-Dienstkunden ein Health Dashboard bereitstellen. Dieses Unterkriterium kann durch die Bereitstellung eines solchen Health Dashboards erfüllt werden, wenn dieses die Cloud-Dienstkunden über Verletzungen vertraglicher Pflichten wie SLA-Bruch informiert.

---

### OPS-02.01AC — Additional (Complementing)

**Kriterium (EN):**

> To monitor capacity and availability managed by the cloud service customer, the relevant information is available to the cloud service customer in a self-service portal.

**Deutsche Übersetzung:**

Zur Überwachung von Kapazität und Verfügbarkeit, die vom Cloud-Dienstkunden verwaltet werden, stehen die relevanten Informationen in einem Self-Service-Portal zur Verfügung.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zentrales Monitoring-Stack** (z. B. Prometheus + Grafana, Datadog, Dynatrace): Live-Metriken CPU/RAM/Netzwerk/Latenz/Response-Time; Alerts bei Schwellenüberschreitung an On-Call-Engineer via PagerDuty
- **Public Status Page** (z. B. Statuspage.io, Instatus) für Kunden: Live-Zustand aller Services, historische Uptime, aktuelle Incidents, geplante Wartungsfenster; automatischer RSS-/Webhook-Feed
- **Kunden-Self-Service-Portal**: pro Kunde-Instanz Metriken zur eigenen Nutzung (aktive User, Abfragevolumen, verbleibendes Kontingent); wichtig für Krankenhäuser mit eigenem Reporting-Bedarf gegenüber Klinikleitung
- **SLA-Reporting** monatlich automatisiert: Verfügbarkeit pro Service (Ziel 99,9 %), Antwortzeiten, Anzahl Vorfälle, Compliance-Score; bei SLA-Verletzung proaktive Kunden-Benachrichtigung + Service Credits

## Verwandte Kriterien

- [[OPS-01 Capacity Management - Planning]]
- [[OPS-03 Capacity Management - Controlling of Resources]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[GC-02 Information on availability and incident handling during regular operation|GC-02 · SLA Regelbetrieb]]
