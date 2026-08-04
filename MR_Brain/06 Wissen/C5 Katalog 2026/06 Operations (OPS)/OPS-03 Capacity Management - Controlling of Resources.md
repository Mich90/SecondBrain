---
title: OPS-03 Capacity Management - Controlling of Resources
project: "[[C5 Katalog 2026]]"
c5-id: OPS-03
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-03
---

# OPS-03 · Capacity Management — Controlling of Resources

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-03 · **Unterkriterien:** 2 (2 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie die System-Ressourcen in ihrem Verantwortungsbereich verwalten und überwachen.

## Unterkriterien

### OPS-03.01B — Basic

**Kriterium (EN):**

> Depending on the capabilities of the respective service model, the cloud service customer can control and monitor the allocation of the system components assigned to the customer for administration/use in order to avoid overcrowding of resources and to achieve sufficient performance.

**Deutsche Übersetzung:**

Je nach Möglichkeiten des jeweiligen Service-Modells kann der Cloud-Dienstkunde die Zuweisung der ihm zur Administration/Nutzung überlassenen Systemkomponenten steuern und überwachen, um Ressourcenüberlastung zu vermeiden und ausreichende Performance zu erreichen.

**Zusatzinformation (DE):**

Vom Cloud-Dienstkunden zu allozierende und verwaltende Systemkomponenten können je nach Service-Modell umfassen:

1. Rechenkapazität;
2. Speicherkapazität;
3. Konfiguration von Netzwerkeigenschaften;
4. Application Programming Interfaces (APIs);
5. Datenbanken.

Die Allokation von Systemkomponenten kann eine ggf. verwendete container-basierte Infrastruktur berücksichtigen.

---

### OPS-03.02B — Basic

**Kriterium (EN):**

> If there are significant security changes, or planned significant security changes, in the system components provided as part of the cloud service and allocated by the cloud service customer, the cloud service provider informs the cloud service customer about them.

**Deutsche Übersetzung:**

Bei wesentlichen sicherheitsrelevanten Änderungen — oder geplanten wesentlichen sicherheitsrelevanten Änderungen — in den vom Cloud-Diensteanbieter bereitgestellten und vom Cloud-Dienstkunden allozierten Systemkomponenten informiert der Cloud-Diensteanbieter den Cloud-Dienstkunden darüber.

**Zusatzinformation (DE):**

Wesentliche sicherheitsrelevante Änderungen in diesem Kontext können die Änderung der Sicherheitsfunktion selbst umfassen (z. B. Änderung der Service-Architektur). Nicht-wesentliche Änderungen können die Änderung der Implementierung einer Sicherheitsfunktion sein, ohne deren Funktionalität zu ändern oder das Sicherheitsniveau zu reduzieren (z. B. Austausch einer verwendeten kryptografischen Primitive durch eine gleichwertige).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Self-Service-Portal mit Quota-Management**: Krankenhaus-Admin sieht aktuelle Nutzung (Nutzer, Speicher, Abfragen) und kann Bedarfsanpassung anfordern; alerts bei > 80 % Auslastung
- **Change-Kommunikation nach Bedeutung gestaffelt**: Security-relevante Änderungen (z. B. neues Auth-Verfahren, geänderte Krypto-Suite) mit 30–90 Tagen Vorlauf per E-Mail an dokumentierten Kunden-Kontakt UND Statuspage; nicht-security-relevante Updates via Changelog
- **API-Rate-Limits pro Kunde**: Multi-Tenant-Isolation über Quotas verhindert, dass ein Krankenhaus (z. B. bei Ansturm nach IT-Ausfall) andere Kunden beeinträchtigt (Noisy Neighbor)
- **Container-Ressourcen pro Kunden**: CPU/Memory-Limits in K8s per Namespace; Prometheus-Metriken exportiert; Kunden können via Grafana-Dashboards eigene Nutzung sehen

## Verwandte Kriterien

- [[OPS-01 Capacity Management - Planning]]
- [[OPS-02 Capacity Management - Monitoring]]
- [[OIS-03 Interfaces and Dependencies]] (SSRM)
- [[OPS-31 Separation of Datasets - Implementation]]
- [[DEV-03 Policies for Changes to System Components|DEV-03]] *(noch nicht angelegt)*
