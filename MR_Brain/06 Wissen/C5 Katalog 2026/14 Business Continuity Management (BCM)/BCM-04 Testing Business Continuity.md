---
title: BCM-04 Testing Business Continuity
project: "[[C5 Katalog 2026]]"
c5-id: BCM-04
c5-area: BCM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/bcm
aliases:
  - BCM-04
---

# BCM-04 · Testing Business Continuity

> [!info] Kontext
> **Bereich:** Business Continuity Management (BCM) · **Kriterium-ID:** BCM-04 · **Unterkriterien:** 6 (2 Basic · 4 Complementing)

> [!note] Gemeinsame Zusatzinformation
> **Tests** werden primär auf operativer Ebene durchgeführt und richten sich an operative Zielgruppen. Tests umfassen z. B. Tests technischer Schutzmaßnahmen, funktionale Tests und Plan-Review.
>
> **Exercises** finden auch auf taktischer und strategischer Ebene statt. Diese umfassen z. B. Plan Meeting, Personal-Übung, Command-Post-Übung, Kommunikations- und Alarmierungs-Übung, Full-Exercise.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass Maßnahmen zur Vermeidung der Auswirkung eines Cloud-Service- oder Cloud-Diensteanbieter-Ausfalls regelmäßig überprüft, aktualisiert, getestet und geübt werden. Der Cloud-Diensteanbieter wird gemäß den vertraglichen Vereinbarungen in die Tests und Übungen einbezogen.

## Unterkriterien

### BCM-04.01B — Basic

**Kriterium (EN):**

> Business continuity plans are tested on a regular basis (at least annually) or after significant organisational or environmental changes. Tests involve affected cloud service customers and relevant third parties (e.g. service organisations).

**Deutsche Übersetzung:**

Business Continuity Plans werden regelmäßig — **mindestens jährlich** — oder nach signifikanten organisatorischen oder umweltbezogenen Änderungen getestet. Tests beziehen betroffene Cloud-Dienstkunden und relevante Dritte (z. B. Service-Organisationen) mit ein.

---

### BCM-04.02B — Basic

**Kriterium (EN):**

> The tests are documented and results are taken into account to review the business continuity plans and for future business continuity measures.

**Deutsche Übersetzung:**

Die Tests werden dokumentiert, und die Ergebnisse werden zur Überprüfung der Business Continuity Plans und für zukünftige Business-Continuity-Maßnahmen berücksichtigt.

---

### BCM-04.01AC — Additional (Complementing)

**Kriterium (EN):**

> In addition to the tests, exercises are also carried out which, among other things, have resulted in scenarios from security incidents that have already occurred in the past.

**Deutsche Übersetzung:**

Zusätzlich zu den Tests werden auch **Übungen** durchgeführt, die u. a. Szenarien aus bereits in der Vergangenheit aufgetretenen Sicherheitsvorfällen zum Ergebnis hatten.

---

### BCM-04.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider has procedures in place to ensure that cloud service customers are timely informed about planned activities related to business continuity tests and exercises that could affect the information security of the cloud service (e.g. regarding its availability). This information includes the scheduled time frame for the operations as well as a description of the work to be carried out.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren, um sicherzustellen, dass Cloud-Dienstkunden zeitnah über geplante Aktivitäten in Zusammenhang mit Business-Continuity-Tests und -Übungen informiert werden, die die Informationssicherheit des Cloud-Dienstes betreffen könnten (z. B. bezüglich Verfügbarkeit). Diese Informationen umfassen den geplanten Zeitrahmen der Operationen sowie eine Beschreibung der durchzuführenden Arbeiten.

---

### BCM-04.03AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider provides cloud service customers an assessment of the potential impacts of those tests and excercises concerning the information security of the cloud service and with details for contacting the cloud service provider.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt Cloud-Dienstkunden eine Bewertung der potenziellen Auswirkungen dieser Tests und Übungen auf die Informationssicherheit des Cloud-Dienstes sowie Details zur Kontaktaufnahme mit dem Cloud-Diensteanbieter bereit.

---

### BCM-04.04AC — Additional (Complementing)

**Kriterium (EN):**

> After a completed exercise, the existing alarm and notification plan is reviewed and (if needed) adapted.

**Deutsche Übersetzung:**

Nach einer abgeschlossenen Übung wird der bestehende **Alarmierungs- und Benachrichtigungsplan** überprüft und (bei Bedarf) angepasst.

**Zusatzinformation (DE):**

Der Begriff „Alarmierungs- und Benachrichtigungsplan" bezieht sich auf das dokumentierte Verfahren zur Alarmierung von verantwortlichem Personal und Stakeholdern bei Vorfällen oder Störungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Test-Katalog** jährlich: Tabletop-Übung (Szenario durchsprechen ohne Aktion), Table-Test (Ausführung Sub-Schritte), Live-Failover-Test (echter Region-Switch in Off-Hours), Vollständige DR-Übung mit Kunden-Beteiligung; jedes Szenario mindestens einmal jährlich
- **Chaos-Engineering** (Complementing): kontrollierte Fehlerinjektion mit Chaos Monkey / Gremlin in Produktion (klein dimensioniert, mit Kunden-Notification); Erweiterung um GameDays mit realen Angriffs-Simulationen; Findings ins BCP-Backlog
- **Kunden-Notification-Prozess**: 30 Tage vor geplantem Failover-Test schriftliche Info an alle Krankenhaus-Kunden mit erwartetem Zeitrahmen, potenzieller Impact (z. B. „5 Minuten erhöhte Latenz"), Ansprechpartner; Nachbereitung nach Test mit Ergebnis-Report
- **Alarmierungs-Test** nach jeder größeren Übung: funktioniert die Kaskade (SOC → CSIRT → CISO → CEO)? Sind Kontaktdaten aktuell? Werden Backup-Kontakte erreicht? Findings direkt behoben und dokumentiert; jährliche kalt-Prüfung der Kontaktliste

## Verwandte Kriterien

- [[BCM-01 Business Continuity and Emergency Management System]]
- [[BCM-02 Business Impact Analysis]]
- [[BCM-03 Business Continuity Plans]]
- [[OPS-08 Data Backup and Recovery - Regular Testing]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[SIM-02 Security Incident Response Plans]]
- [[SIM-03 Processing of Security Incidents]]
- [[SIM-06 Evaluation and Learning Process]]
