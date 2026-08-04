---
title: OPS-01 Capacity Management - Planning
project: "[[C5 Katalog 2026]]"
c5-id: OPS-01
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-01
---

# OPS-01 · Capacity Management — Planning

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-01 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Aus wirtschaftlichen Gründen streben Cloud-Diensteanbieter typischerweise eine hohe Auslastung der Systemkomponenten (CPU, RAM, Storage, Netzwerk) an. In Multi-Mandanten-Umgebungen sollten vorhandene Ressourcen dennoch so zwischen Cloud-Dienstkunden geteilt werden, dass Service Level Agreements eingehalten werden. Ordnungsgemäße Planung und Überwachung ist deshalb kritisch für Verfügbarkeit und Wettbewerbsfähigkeit. Wenn die Verfahren nicht dokumentiert sind oder als Geschäftsgeheimnis vertraulicher Natur sind, sollte der Cloud-Diensteanbieter die Verfahren im Prüfrahmen mindestens mündlich erklären können.
>
> Kapazitätsengpässe sind Einschränkungen der Ressourcen des Cloud-Diensteanbieters, die zu Störungen des Cloud-Dienstes führen oder die Einhaltung vertraglicher Vereinbarungen und Service Levels beeinträchtigen.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die vom Cloud-Diensteanbieter abzudeckenden Kapazitäts- und Ressourcenanforderungen geplant und im SLA reflektiert werden. Die Anforderungen werden regelmäßig geprüft und die Anpassung des SLAs entsprechend gefordert.

## Unterkriterien

### OPS-01.01B — Basic

**Kriterium (EN):**

> The planning of capacities and resources (personnel and system components) follows an established procedure in order to avoid possible capacity restrictions.

**Deutsche Übersetzung:**

Die Planung von Kapazitäten und Ressourcen (Personal und Systemkomponenten) folgt einem etablierten Verfahren, um mögliche Kapazitätsengpässe zu vermeiden.

---

### OPS-01.02B — Basic

**Kriterium (EN):**

> The procedures include forecasting future capacity requirements in order to identify usage trends and manage system overload.

**Deutsche Übersetzung:**

Die Verfahren umfassen die Prognose zukünftiger Kapazitätsanforderungen, um Nutzungstrends zu erkennen und Systemüberlastung zu steuern.

---

### OPS-01.03B — Basic

**Kriterium (EN):**

> The cloud service provider takes appropriate measures to ensure that they continue to meet the requirements agreed with cloud service customers for the provision of the cloud service in the event of capacity restrictions or outages regarding personnel and system components. This applies in particular to those relating to the dedicated use of system components, in accordance with the respective agreements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter ergreift angemessene Maßnahmen, um sicherzustellen, dass er die mit Cloud-Dienstkunden für die Erbringung des Cloud-Dienstes vereinbarten Anforderungen auch im Falle von Kapazitätsengpässen oder Ausfällen von Personal und Systemkomponenten weiterhin erfüllt. Dies gilt insbesondere für Vereinbarungen über die dedizierte Nutzung von Systemkomponenten.

---

### OPS-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> The forecasts are considered in accordance with the service level agreement for planning and preparing the provisioning.

**Deutsche Übersetzung:**

Die Prognosen werden gemäß den SLAs bei der Planung und Vorbereitung der Bereitstellung berücksichtigt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Capacity-Planning-Board** quartalsweise mit Growth-Forecast pro Ressource (CPU/RAM/Storage/Netzwerk); Berücksichtigung geplanter Kunden-Onboardings (z. B. neues KRITIS-Krankenhaus mit 2000 Nutzern) und saisonaler Peaks (Grippewelle → höhere Auslastung Radiologie-Bilddaten)
- **Auto-Scaling für elastische Layer** (Web/API); statische Reservierung für stateful Komponenten (DB, Storage) mit 30 %-Puffer über Peak; monatliches Review der Kapazitäts-KPIs
- **Personal-Kapazitätsplanung**: 24×7-Ops-Team mit Bereitschaftsdiensten, Skill-Matrix pflegen, Nachfolgeplanung für kritische Rollen (Krypto-Admin, DB-Chief); Urlaubs- und Ausfallplanung
- **Failover-Reserve** in redundanten RZ so dimensioniert, dass Ausfall eines RZ den Betrieb ohne Kapazitätsverlust ermöglicht (N+1 auf Site-Ebene)

## Verwandte Kriterien

- [[OPS-02 Capacity Management - Monitoring]]
- [[OPS-03 Capacity Management - Controlling of Resources]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[BCM-02 Business Impact Analysis|BCM-02]] *(noch nicht angelegt)*
