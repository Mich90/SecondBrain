---
title: PS-02 Redundancy Model
project: "[[C5 Katalog 2026]]"
c5-id: PS-02
c5-area: PS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ps
aliases:
  - PS-02
---

# PS-02 · Redundancy Model

> [!info] Kontext
> **Bereich:** Physical Security (PS) · **Kriterium-ID:** PS-02 · **Unterkriterien:** 5 (3 Basic · 2 Sharpening)

> [!note] Complementary Customer Criteria (identisch für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass das bestehende Redundanzmodell des Cloud-Diensteanbieters und die Nachweise zur Verifikation des Modells ihren eigenen Anforderungen an Verfügbarkeit und Zuverlässigkeit des Cloud-Dienstes entsprechen.

## Unterkriterien

### PS-02.01B — Basic

**Kriterium (EN):**

> The cloud service is provided from at least two locations. The locations meet the security requirements of the cloud service provider (cf. PS-01) and are located in an adequate distance to each other to achieve operational redundancy and resilience.

**Deutsche Übersetzung:**

Der Cloud-Dienst wird von mindestens zwei Standorten erbracht. Die Standorte erfüllen die Sicherheitsanforderungen des Cloud-Diensteanbieters (vgl. [[PS-01 Physical Security and Environmental Control Requirements|PS-01]]) und liegen in angemessener Entfernung zueinander, um Betriebs-Redundanz und Resilienz zu erreichen.

**Zusatzinformation (DE):**

Betriebs-Redundanz der Standorte im Sinne dieses Kriteriums ist gegeben, wenn basierend auf der Bewertung elementarer Risiken am Standort entsprechende Abstände der Räume und Gebäude zu diesen Risiken eingehalten werden. Sehr großflächige Ereignisse, die aufgrund ihres Ausmaßes mehrere Standorte derselben Redundanzgruppe gleichzeitig oder zeitnah betreffen könnten (z. B. Überschwemmungen, Erdbeben), werden nicht betrachtet.

Es gibt Cloud-Diensteanbieter, die die Zuverlässigkeit nicht mehr über physische Redundanz zweier unabhängiger Standorte, sondern über Resilienz adressieren. Der Cloud-Dienst wird gleichzeitig von mehr als zwei Standorten erbracht. Die zugrundeliegende verteilte Rechenzentrums-Architektur stellt sicher, dass der Ausfall eines Standorts oder von Komponenten eines Standorts die definierten Verfügbarkeitskriterien nicht verletzt. Eine solche Architektur kann eine alternative Erfüllung (vgl. Abschnitt 3.4.12) des Kriteriums darstellen.

---

### PS-02.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service is provided from more than two locations. The locations meet the security requirements of the cloud service provider (cf. PS-01) and are located sufficiently far apart to achieve georedundancy and resilience. If two locations fail at the same time, at least one third location is still available to prevent a total service failure.

**Deutsche Übersetzung:**

Der Cloud-Dienst wird von **mehr als zwei Standorten** erbracht. Die Standorte erfüllen die Sicherheitsanforderungen des Cloud-Diensteanbieters (vgl. [[PS-01 Physical Security and Environmental Control Requirements|PS-01]]) und sind ausreichend weit voneinander entfernt, um **Georedundanz und Resilienz** zu erreichen. Fallen zwei Standorte gleichzeitig aus, steht mindestens ein dritter Standort zur Verfügung, um einen Totalausfall des Dienstes zu verhindern.

**Zusatzinformation (DE):**

Georedundanz im Sinne dieses Kriteriums ist gegeben, wenn ein sehr großflächiges Ereignis an einem Standort unter keinen Umständen mehrere Standorte derselben Redundanzgruppe gleichzeitig oder zeitnah betrifft. Die BSI-Publikation **„Kriterien für die Standortwahl von Rechenzentren"** gibt hierzu Empfehlungen.

---

### PS-02.02B — Basic

**Kriterium (EN):**

> Operational redundancy is designed in a way that ensures that the availability requirements specified in the service level agreement are met.

**Deutsche Übersetzung:**

Die Betriebs-Redundanz ist so ausgelegt, dass die im SLA festgelegten Verfügbarkeitsanforderungen erfüllt werden.

---

### PS-02.02AS — Additional (Sharpening)

**Kriterium (EN):**

> The georedundancy is designed in a way that ensures that the availability requirements specified in the service level agreement are met.

**Deutsche Übersetzung:**

Die Georedundanz ist so ausgelegt, dass die im SLA festgelegten Verfügbarkeitsanforderungen erfüllt werden.

---

### PS-02.03B — Basic

**Kriterium (EN):**

> The effectiveness of the redundancy is checked at least annually by suitable tests and exercises (cf. BCM-04).

**Deutsche Übersetzung:**

Die Wirksamkeit der Redundanz wird mindestens jährlich durch geeignete Tests und Übungen überprüft (vgl. [[BCM-04 Business Continuity Tests and Exercises|BCM-04]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zwei-RZ-Setup Active/Active** in adäquatem Abstand (z. B. Frankfurt + Berlin, mindestens 200 km, verschiedene Netzknoten, verschiedene Stromnetze); synchrone Replikation der Patientendaten mit RPO ≤ 1 min
- **Georedundanz für KRITIS-Kunden**: 3 unabhängige Standorte (Frankfurt + Berlin + München), automatisches Failover; Sharpening-Kriterium erfüllt, wichtig für KRITIS-relevante Krankenhäuser
- **BSI-Standortwahl-Kriterien** dokumentiert einhalten: keine Standorte im gleichen Hochwassergebiet, unterschiedliche Erdbebenzonen, unterschiedliche Fernstrom-Einspeisung, unterschiedliche TK-Backbones
- **Jährliche BCM-Failover-Tests**: dokumentierter Test mit Volltransfer aller produktiven Workloads auf Sekundär-RZ; RTO-Messung; Kunden-Kommunikation im Test; Nachbereitung mit Lessons Learned

## Verwandte Kriterien

- [[PS-01 Physical Security and Environmental Control Requirements]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
- [[BCM-04 Business Continuity Tests and Exercises|BCM-04]] *(noch nicht angelegt)*
- [[GC-03 Information on recovery parameters in emergency operation|GC-03 · Recovery-Parameter Notbetrieb]]
- [[GC-04 Information on the approach to ensuring service availability|GC-04 · Verfügbarkeits-Konzept]]
