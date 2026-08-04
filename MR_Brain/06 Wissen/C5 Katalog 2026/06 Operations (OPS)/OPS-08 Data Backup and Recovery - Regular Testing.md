---
title: OPS-08 Data Backup and Recovery - Regular Testing
project: "[[C5 Katalog 2026]]"
c5-id: OPS-08
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-08
---

# OPS-08 · Data Backup and Recovery — Regular Testing

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-08 · **Unterkriterien:** 7 (5 Basic · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Wurde die Datensicherung nicht vertraglich zwischen Cloud-Diensteanbieter und Cloud-Dienstkunde vereinbart, ist dieses Kriterium für Kundendaten nicht anwendbar. Der Cloud-Diensteanbieter stellt diese Situation in der Systembeschreibung transparent dar.
>
> Die Nutzung von Kundendaten in Backup- und Restore-Verfahren ist eine sorgfältig abgewogene Ausnahme. Diese Ausnahme erstreckt sich nicht auf allgemeine Softwareentwicklungs- oder Testumgebungen — die Nutzung von Kundendaten für Tests ist ausdrücklich auf Backup- und Restore-Verfahren beschränkt.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie aktiv Informationen zu Ergebnissen der Restore-Tests vom Cloud-Diensteanbieter anfordern. Kunden bewerten die Wirksamkeit der angewandten Datenwiederherstellungsstrategien und integrieren Erkenntnisse in ihre eigenen Notfallpläne im Einklang mit ihren Geschäftsanforderungen und Sicherheitsstandards.

## Unterkriterien

### OPS-08.01B — Basic

**Kriterium (EN):**

> Restore procedures are tested regularly, at least annually. The tests include cloud service provider data and, if contractually agreed upon, cloud service customer data and cloud service derived data.

**Deutsche Übersetzung:**

Restore-Verfahren werden regelmäßig, mindestens jährlich, getestet. Die Tests umfassen Anbieter-Daten und — sofern vertraglich vereinbart — Kundendaten und abgeleitete Daten.

---

### OPS-08.02B — Basic

**Kriterium (EN):**

> The tests allow an assessment as to whether the contractual agreements as well as the specifications for the maximum tolerable downtime (Recovery Time Objective, RTO) and the maximum permissible data loss (Recovery Point Objective, RPO) are adhered to (cf. BCM-02).

**Deutsche Übersetzung:**

Die Tests ermöglichen eine Bewertung, ob die vertraglichen Vereinbarungen sowie die Vorgaben für die maximal tolerierbare Ausfallzeit (RTO) und den maximal zulässigen Datenverlust (RPO) eingehalten werden (vgl. [[BCM-02 Business Impact Analysis|BCM-02]]).

---

### OPS-08.03B — Basic

**Kriterium (EN):**

> Cloud service customer data is only restored in environments that are subject to the same access restrictions as the production environment.

**Deutsche Übersetzung:**

Kundendaten werden ausschließlich in Umgebungen wiederhergestellt, die denselben Zugriffsbeschränkungen wie die Produktivumgebung unterliegen.

**Zusatzinformation (DE):**

Wenn Kundendaten in einer Umgebung mit abweichenden Zugriffsbeschränkungen wiederhergestellt werden, kann die Vertraulichkeit der Daten beeinträchtigt werden.

---

### OPS-08.04B — Basic

**Kriterium (EN):**

> Performed restore tests are thoroughly documented. This also includes the documentation of the safe disposal of the restored data.

**Deutsche Übersetzung:**

Durchgeführte Restore-Tests sind umfassend dokumentiert. Dies umfasst auch die Dokumentation der sicheren Entsorgung der wiederhergestellten Daten.

---

### OPS-08.05B — Basic

**Kriterium (EN):**

> Deviations from the specifications are reported to the responsible personnel or system components so that these can timely assess the deviations and initiate the necessary actions.

**Deutsche Übersetzung:**

Abweichungen von den Vorgaben werden an das verantwortliche Personal oder die verantwortlichen Systemkomponenten gemeldet, damit diese die Abweichungen zeitnah bewerten und die erforderlichen Maßnahmen einleiten können.

---

### OPS-08.01AC — Additional (Complementing)

**Kriterium (EN):**

> At the customer's request, the cloud service provider informs the cloud service customer of the results of the restore tests.

**Deutsche Übersetzung:**

Auf Anfrage des Kunden informiert der Cloud-Diensteanbieter den Cloud-Dienstkunden über die Ergebnisse der Restore-Tests.

---

### OPS-08.02AC — Additional (Complementing)

**Kriterium (EN):**

> Restore tests are included in the cloud service provider's business continuity management.

**Deutsche Übersetzung:**

Restore-Tests sind Bestandteil des Business Continuity Managements des Cloud-Diensteanbieters.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Quartalsweise Restore-Tests** unter Volllast: rotieren durch verschiedene Datenklassen (Anbieter-Config, abgeleitete Daten, Kundendaten von 3 zufälligen Kliniken); Restore in isolierte Test-Region mit gleicher Access-Kontrolle wie Prod
- **RTO/RPO-Nachweis**: Zeitmessung Restore-Start bis Verfügbarkeit; Vergleich mit SLA-Vorgaben (z. B. RTO 2 h für Patientendaten); dokumentierte Abweichungen führen zu Verbesserungs-Tickets
- **Same-Access-Restrictions**: Test-Restore erfolgt in einer separaten, aber gleich geschützten VPC/Netzwerksegment mit gleicher IAM-Policy; keine Prod-Daten in Dev/Test-Umgebungen; sichere Löschung nach Test dokumentiert
- **BCM-Integration**: Restore-Tests als Teil des jährlichen BCM-Übungsplans, gemeinsam mit Failover-Tests (PS-02.03B) und Notfall-Kommunikations-Übungen; Post-Mortem und Verbesserungen im ISMS

## Verwandte Kriterien

- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[OPS-07 Data Backup and Recovery - Monitoring]]
- [[OPS-09 Data Backup and Recovery - Storage]]
- [[BCM-02 Business Impact Analysis|BCM-02]] *(noch nicht angelegt)*
- [[BCM-04 Business Continuity Tests and Exercises|BCM-04]] *(noch nicht angelegt)*
