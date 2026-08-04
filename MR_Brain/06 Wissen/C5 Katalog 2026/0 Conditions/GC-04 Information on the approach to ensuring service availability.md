---
title: GC-04 Information on the approach to ensuring service availability
project: "[[C5 Katalog 2026]]"
c5-id: GC-04
c5-type: Condition
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/condition
  - c5/gc
aliases:
  - GC-04
---

# GC-04 · Information on the approach to ensuring service availability

> [!info] General Condition (BSI C5:2026)
> **ID:** GC-04 · **Titel (DE):** Informationen zum Vorgehen bei der Sicherstellung der Service-Verfügbarkeit

## Original (EN)

### Information on the General Conditions of the Cloud service

> The cloud service provider shares comprehensible and transparent information subject matter experts of cloud service customers with on its approach to ensuring service availability, including relevant availability metrics and architecture design principles for both, datacentre-infrastructure and cloud services. This information addresses both, physical infrastructure resilience and logical service resilience, enabling cloud service customers to perform their business impact analysis effectively and understand how the cloud service provider's multi-layered resilience approach aligns with their own business continuity requirements at both, the infrastructure and service levels.

### Supplementary Information — Notes on the General Conditions

> The information may outline resilience capabilities, such as regional deployment strategies, datacentre redundancy configurations, service-level commitments, historical performance data, or architectural resilience patterns.
>
> The Uptime Institute's Tier classification system is a classification customary in the industry for the availability of data centres. It defines the following levels (Tiers) for availability and downtime in relation to one year:
>
> 1. Tier I: 99.671 %; up to 28.8 hours cumulative downtime per year;
> 2. Tier II: 99.741 %; up to 22.7 hours cumulative downtime per year;
> 3. Tier III: 99.982 %; up to 1.6 hours cumulative downtime per year; and
> 4. Tier IV: 99.995 %; up to 25 minutes cumulative downtime per year.
>
> An alternative definition of availability classes (AC) is provided by the BSI in the 'HV-Benchmark kompakt' (German for: 'High Availability Benchmark Compact', document only available in German):
>
> 1. AC 0: without availability requirements (~95%); up to 438 hours cumulative downtime per year;
> 2. AC 1: normal availability (99%); up to 88 hours cumulative downtime per year;
> 3. AC 2: high availability (99.9%); up to 9 hours cumulative downtime per year;
> 4. AC 3: very high availability (99.99%); up to 53 minutes cumulative downtime per year;
> 5. AC 4: highest availability (99.999%); up to 6 minutes cumulative downtime per year; and
> 6. AC 5: Disaster-tolerant.
>
> The description of the cloud service provider's system of internal control relevant to the development and operation of the cloud service indicates where this information can be found. In addition to the reference in the description of the cloud service provider, the information itself may also be an optional part of the report, e.g. in a section 'Other information provided by the Cloud Service Provider'. Only in the latter case, this information is not subject to the auditor's procedures, and, accordingly, the auditor does not issue an opinion on it.

## Deutsche Übersetzung

### Informationen zu den Allgemeinen Bedingungen des Cloud-Dienstes

Der Cloud-Diensteanbieter stellt Fachexperten der Cloud-Dienstkunden nachvollziehbare und transparente Informationen zu seinem Vorgehen bei der Sicherstellung der Service-Verfügbarkeit bereit. Dazu gehören relevante Verfügbarkeitskennzahlen sowie Architektur-Design-Prinzipien sowohl für die Rechenzentrums-Infrastruktur als auch für die Cloud-Dienste. Die Informationen adressieren die Resilienz auf physischer Infrastruktur-Ebene und die logische Resilienz der Services. Dadurch können Cloud-Dienstkunden ihre Business Impact Analysis wirksam durchführen und nachvollziehen, wie der mehrschichtige Resilienz-Ansatz des Cloud-Diensteanbieters mit ihren eigenen Business-Continuity-Anforderungen auf Infrastruktur- und Service-Ebene zusammenspielt.

### Ergänzende Hinweise

Die Informationen können Resilienz-Fähigkeiten beschreiben, etwa regionale Deployment-Strategien, Rechenzentrums-Redundanz-Konfigurationen, Service-Level-Zusagen, historische Performance-Daten oder Architektur-Muster zur Resilienz.

Das Tier-Klassifizierungssystem des **Uptime Institute** ist eine branchenübliche Klassifikation für die Verfügbarkeit von Rechenzentren. Es definiert die folgenden Stufen für Verfügbarkeit und Ausfallzeit bezogen auf ein Jahr:

1. **Tier I:** 99,671 %; bis zu 28,8 Stunden kumulierte Ausfallzeit pro Jahr;
2. **Tier II:** 99,741 %; bis zu 22,7 Stunden kumulierte Ausfallzeit pro Jahr;
3. **Tier III:** 99,982 %; bis zu 1,6 Stunden kumulierte Ausfallzeit pro Jahr;
4. **Tier IV:** 99,995 %; bis zu 25 Minuten kumulierte Ausfallzeit pro Jahr.

Eine alternative Definition von Verfügbarkeitsklassen (VK) findet sich im BSI-Dokument **„HV-Benchmark kompakt"** (nur auf Deutsch verfügbar):

1. **VK 0:** ohne Verfügbarkeitsanforderungen (~95 %); bis zu 438 Stunden kumulierte Ausfallzeit pro Jahr;
2. **VK 1:** normale Verfügbarkeit (99 %); bis zu 88 Stunden kumulierte Ausfallzeit pro Jahr;
3. **VK 2:** hohe Verfügbarkeit (99,9 %); bis zu 9 Stunden kumulierte Ausfallzeit pro Jahr;
4. **VK 3:** sehr hohe Verfügbarkeit (99,99 %); bis zu 53 Minuten kumulierte Ausfallzeit pro Jahr;
5. **VK 4:** höchste Verfügbarkeit (99,999 %); bis zu 6 Minuten kumulierte Ausfallzeit pro Jahr;
6. **VK 5:** katastrophentolerant.

In der Beschreibung des internen Kontrollsystems des Cloud-Diensteanbieters ist angegeben, wo diese Informationen zu finden sind. Zusätzlich zum Verweis in dieser Beschreibung können die Informationen selbst optional Bestandteil des Prüfberichts sein, z. B. in einem Abschnitt „Sonstige Informationen des Cloud-Diensteanbieters". Nur in diesem Fall unterliegen die Informationen nicht den Prüfhandlungen des Auditors, und dieser gibt entsprechend auch kein Prüfurteil dazu ab.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Resilienz-Whitepaper** veröffentlichen, das die Multi-Layer-Architektur erklärt: RZ-Redundanz (z. B. Uptime Tier III+), Active-Active-Deployment über zwei Regionen, Health Checks, automatisches Failover
- **Zielverfügbarkeit an BSI-Verfügbarkeitsklassen ausrichten**: für patientenrelevante Services i. d. R. mindestens VK 3 (99,99 %), für Reporting-Services VK 2 (99,9 %) — Zuordnung transparent kommunizieren
- **Historische Performance-Daten** monatlich auf der Statuspage bereitstellen (Uptime-Berichte pro Service-Komponente, Post-Mortems zu Vorfällen)
- **Architektur-Referenz-Diagramm** mit allen Redundanz-Ebenen: DNS-Failover, Load-Balancer-Redundanz, aktive Datenbank-Replikation, georedundante Backups — freigegeben für Kunden-Audits

## Verwandte Kriterien

- [[GC-02 Information on availability and incident handling during regular operation|GC-02 · SLA Regelbetrieb]]
- [[GC-03 Information on recovery parameters in emergency operation|GC-03 · Recovery-Parameter Notbetrieb]]
- [[PS-02 Redundancy Model|PS-02]] *(noch nicht angelegt)*
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
