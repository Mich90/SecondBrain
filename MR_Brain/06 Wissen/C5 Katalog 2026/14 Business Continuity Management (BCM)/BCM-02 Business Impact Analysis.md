---
title: BCM-02 Business Impact Analysis
project: "[[C5 Katalog 2026]]"
c5-id: BCM-02
c5-area: BCM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/bcm
aliases:
  - BCM-02
---

# BCM-02 · Business Impact Analysis

> [!info] Kontext
> **Bereich:** Business Continuity Management (BCM) · **Kriterium-ID:** BCM-02 · **Unterkriterien:** 2 (2 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die Szenarien für einen Ausfall des Cloud-Dienstes oder des Cloud-Diensteanbieters im Rahmen ihrer eigenen Business Impact Analyse ausreichend berücksichtigt werden.

## Unterkriterien

### BCM-02.01B — Basic

**Kriterium (EN):**

> The cloud service provider performs a Business Impact Analysis (BIA). In this BIA, the cloud service provider analyses the impact of disrupting activities to its organisation with respect the development and operations of the cloud service in accordance with applicable policies and procedures with at least the following aspects:
>
> 1. Possible scenarios based on a risk assessment that includes cybersecurity risks;
> 2. Identification of critical products and services;
> 3. Identification of dependencies, including processes (including resources required), applications, business partners and third parties;
> 4. Capturing threats to critical products and services;
> 5. Identification of effects resulting from planned and unplanned outages, service degradations and changes over time;
> 6. Determination of the maximum tolerable period of downtime and service degregation;
> 7. Identification of restoration priorities;
> 8. Determination of time targets for the resumption of critical products and services within the maximum acceptable time period (i.e. RTO);
> 9. Determination of time targets for the maximum reasonable period during which cloud service derived data, cloud service provider data, account data and, if its processing is contractually agreed upon, cloud service customer data can be lost and not recovered (i.e. RPO); and
> 10. Estimation of the resources needed for resumption.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter führt eine **Business Impact Analysis (BIA)** durch. In dieser BIA analysiert der Cloud-Diensteanbieter die Auswirkung von Störungen der Aktivitäten auf seine Organisation bezüglich Entwicklung und Betrieb des Cloud-Dienstes gemäß den anwendbaren Richtlinien und Verfahren mit mindestens folgenden Aspekten:

1. Mögliche Szenarien basierend auf einer Risikobewertung, die Cybersecurity-Risiken einschließt;
2. Identifikation kritischer Produkte und Dienste;
3. Identifikation von Abhängigkeiten — einschließlich Prozessen (mit erforderlichen Ressourcen), Anwendungen, Geschäftspartnern und Dritten;
4. Erfassung von Bedrohungen für kritische Produkte und Dienste;
5. Identifikation der Auswirkungen aus geplanten und ungeplanten Ausfällen, Service-Degradierungen und Änderungen über die Zeit;
6. Bestimmung der **maximal tolerierbaren Ausfall- und Service-Degradierungs-Dauer** (MTPD);
7. Identifikation von Wiederherstellungs-Prioritäten;
8. Bestimmung von Zeitzielen für die Wiederaufnahme kritischer Produkte und Dienste innerhalb des maximal akzeptablen Zeitraums (**RTO**);
9. Bestimmung von Zeitzielen für den maximal vertretbaren Zeitraum, in dem abgeleitete Daten, Anbieter-Daten, Kontodaten und — sofern deren Verarbeitung vertraglich vereinbart ist — Kundendaten verloren gehen und nicht wiederhergestellt werden können (**RPO**);
10. Schätzung der für die Wiederaufnahme benötigten Ressourcen.

**Zusatzinformation (DE):**

Zu berücksichtigende Szenarien gemäß Basiskriterium sind z. B. der Verlust von Personal, Gebäuden, Infrastruktur und Dienstleistern.

---

### BCM-02.02B — Basic

**Kriterium (EN):**

> The business impact analysis adheres to the applicable policies and procedures and is reviewed at regular intervals, at least once a year, or after significant organisational or environment-related changes.

**Deutsche Übersetzung:**

Die Business Impact Analysis hält sich an die anwendbaren Richtlinien und Verfahren und wird in regelmäßigen Abständen — **mindestens einmal jährlich** — oder nach signifikanten organisatorischen oder umweltbezogenen Änderungen überprüft.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **BIA-Katalog** pro kritischem Service: Patient-Data-API (RTO 4h, RPO 15min — Krankenhäuser brauchen Zugriff auf aktuelle Daten), Reporting-Dashboard (RTO 24h, RPO 24h), Admin-Portal (RTO 8h, RPO 1h); Priorisierung nach Krankenhaus-Betriebs-Kritikalität
- **Szenario-Katalog**: Cloud-Region-Ausfall (AWS Frankfurt down), Ransomware auf Prod-Systemen, Personalengpass (Pandemie), Cyber-Angriff auf Kunden-Portal, Sub-Auftragsverarbeiter-Ausfall (z. B. IAM-Provider), regulatorischer Ausfall (Data-Location-Änderung)
- **Dependency-Mapping**: für jeden kritischen Service Abhängigkeiten dokumentiert (z. B. Patient-Data-API → PostgreSQL → EBS → AWS eu-central-1 + KMS → HSM); ausgelegt in Service-Karte im BCM-Tool; kritische Abhängigkeiten mit Alternativen
- **Jährlicher Review-Zyklus**: Q1 komplette BIA-Revision; Ad-hoc bei größeren Änderungen (neue Cloud-Region, neuer kritischer Vendor, Merger); Ergebnisse fließen in BCP-Update (BCM-03) und Test-Plan (BCM-04)

## Verwandte Kriterien

- [[BCM-01 Business Continuity and Emergency Management System]]
- [[BCM-03 Business Continuity Plans]]
- [[BCM-04 Testing Business Continuity]]
- [[OIS-07 Risk Management Policy]]
- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[OPS-15 Availability of Cloud Services and Services Provided]]
- [[SSO-06 Contract Termination Strategy for Service Organisations]]
