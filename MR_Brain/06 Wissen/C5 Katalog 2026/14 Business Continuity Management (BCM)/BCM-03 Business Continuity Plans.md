---
title: BCM-03 Business Continuity Plans
project: "[[C5 Katalog 2026]]"
c5-id: BCM-03
c5-area: BCM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/bcm
aliases:
  - BCM-03
---

# BCM-03 · Business Continuity Plans

> [!info] Kontext
> **Bereich:** Business Continuity Management (BCM) · **Kriterium-ID:** BCM-03 · **Unterkriterien:** 2 (2 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die Ergebnisse ihrer Business Impact Analyse ausreichend berücksichtigt werden, wenn sie die betriebliche Kontinuität und den Business Plan planen — um für die Auswirkungen eines Ausfalls des Cloud-Dienstes oder Cloud-Diensteanbieters vorzusorgen.

## Unterkriterien

### BCM-03.01B — Basic

**Kriterium (EN):**

> Based on the results of the business impact analysis, business continuity plans are documented in a consistent manner, and in accordance with applicable policies and procedures.
>
> Business continuity plans take the following aspects into account:
>
> 1. Defined purpose and scope with consideration of the relevant dependencies;
> 2. Accessibility and comprehensibility of the plans for persons who are to act accordingly;
> 3. Ownership by at least one designated person responsible for review, updating and approval;
> 4. Defined communication channels, roles and responsibilities including notification of the customer;
> 5. Recovery procedures, manual interim solutions and reference information (taking into account prioritisation in the recovery of cloud hardware objects and services and alignment with customers);
> 6. Methods for putting the plans into effect;
> 7. Continuous process improvement;
> 8. Consistency over all locations, zones, regions and partitions; and
> 9. Interfaces to Security Incident Management.

**Deutsche Übersetzung:**

Basierend auf den Ergebnissen der Business Impact Analyse werden **Business Continuity Plans** konsistent und gemäß den anwendbaren Richtlinien und Verfahren dokumentiert.

Business Continuity Plans berücksichtigen:

1. Definierter Zweck und Anwendungsbereich unter Berücksichtigung relevanter Abhängigkeiten;
2. Zugänglichkeit und Verständlichkeit der Pläne für Personen, die entsprechend handeln sollen;
3. Ownership durch mindestens eine benannte Person, die für Review, Update und Freigabe verantwortlich ist;
4. Definierte Kommunikationskanäle, Rollen und Verantwortlichkeiten — einschließlich Kunden-Notification;
5. Recovery-Verfahren, manuelle Interimslösungen und Referenz-Informationen (unter Berücksichtigung der Priorisierung bei der Wiederherstellung von Cloud-Hardware-Objekten und -Diensten und Abstimmung mit Kunden);
6. Methoden zur Umsetzung der Pläne;
7. Kontinuierliche Prozessverbesserung;
8. Konsistenz über alle Standorte, Zonen, Regionen und Partitionen;
9. Schnittstellen zum Security Incident Management.

**Zusatzinformation (DE):**

Obwohl verschiedene Partitionen kein gemeinsames IAM (und daher kein gemeinsames Personal für BCM) haben, können Business Continuity Plans zwischen verschiedenen Partitionen geteilt werden, da dieselben Cloud-Dienste bereitgestellt werden.

---

### BCM-03.02B — Basic

**Kriterium (EN):**

> The business continuity plans are reviewed at regular intervals, at least once a year, or after significant organisational or environment-related changes.

**Deutsche Übersetzung:**

Die Business Continuity Plans werden in regelmäßigen Abständen — **mindestens einmal jährlich** — oder nach signifikanten organisatorischen oder umweltbezogenen Änderungen überprüft.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **BCP-Bibliothek** je Szenario: Multi-Region-Failover-Runbook für AWS-Ausfall (Aktivierung passive Region, DNS-Umschaltung, Kunden-Kommunikation), Ransomware-Recovery (Isolierung, Restore aus immutable Backups), Personalengpass (Cross-Training, Rufbereitschafts-Rotation)
- **Runbook-Zugänglichkeit**: BCPs in zwei separaten Systemen abgelegt (interne Wiki + Offline-PDF bei Team-Leads); Zugriff möglich auch bei totalem Prod-Ausfall (Notfall-Access via mobile Geräte); knappe, klare Sprache, keine Fach-Chinesisch
- **Owner-Verantwortlichkeit**: pro Runbook ein primärer Owner + Backup-Owner; automatische Review-Erinnerung; „stale-plan"-Alert wenn > 12 Monate ohne Review; Owner nimmt an jährlichen Übungen teil
- **Kunden-Kommunikations-Kanäle**: Multi-Channel (Trust-Center-Status-Page, E-Mail an Krankenhaus-IT, SMS an On-Call-Kontakte); pre-approved Templates pro Szenario; Kunden-Kontaktliste quartalsweise aktualisiert

## Verwandte Kriterien

- [[BCM-01 Business Continuity and Emergency Management System]]
- [[BCM-02 Business Impact Analysis]]
- [[BCM-04 Testing Business Continuity]]
- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[OPS-07 Data Backup and Recovery - Monitoring]]
- [[OPS-08 Data Backup and Recovery - Regular Testing]]
- [[OPS-15 Availability of Cloud Services and Services Provided]]
- [[OPS-20 Managing Incidents - Communication and Involvement of Cloud Service Customers]]
- [[SIM-02 Security Incident Response Plans]]
