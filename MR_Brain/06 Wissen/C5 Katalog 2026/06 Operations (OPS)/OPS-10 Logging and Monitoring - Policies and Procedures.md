---
title: OPS-10 Logging and Monitoring - Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-10
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-10
---

# OPS-10 · Logging and Monitoring — Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-10 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-10.01B — Basic

**Kriterium (EN):**

> The cloud service provider has established policies and procedures that govern the logging and monitoring of events on system components within its area of responsibility. These policies and procedures are documented, communicated and provided according to SP-01 with respect to the following aspects:
>
> 1. Definition of events that could lead to a violation of the protection goals;
> 2. Specifications for activating, stopping and pausing the various logs;
> 3. Information regarding the purpose and retention period of the logs;
> 4. Definition of roles, responsibilities and authorities for setting up and monitoring logging;
> 5. Definition of log data allowed for transfer to cloud service customers and technical requirements of such a transfer;
> 6. Information regarding timestamps used in event creation;
> 7. Time synchronisation of system components with at least one approved time source that the cloud service provider considers to be reliable based on defined criteria. If several time sources are used, they are consistent with each other. The time sources can also be synchronised to several external reliable sources, except when used for isolated networks; and
> 8. Compliance with legal and regulatory frameworks.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Richtlinien und Verfahren etabliert, die das Logging und Monitoring von Ereignissen auf Systemkomponenten in seinem Verantwortungsbereich regeln. Diese sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und adressieren folgende Aspekte:

1. Definition von Ereignissen, die zu einer Verletzung der Schutzziele führen könnten;
2. Vorgaben zum Aktivieren, Stoppen und Pausieren der verschiedenen Logs;
3. Informationen zu Zweck und Aufbewahrungsdauer der Logs;
4. Definition von Rollen, Verantwortlichkeiten und Befugnissen für Einrichtung und Überwachung des Loggings;
5. Definition der an Cloud-Dienstkunden übermittelbaren Log-Daten und technische Anforderungen an eine solche Übermittlung;
6. Informationen zu bei der Ereigniserzeugung verwendeten Zeitstempeln;
7. Zeitsynchronisation von Systemkomponenten mit mindestens einer genehmigten Zeitquelle, die der Cloud-Diensteanbieter auf Basis definierter Kriterien als zuverlässig ansieht. Werden mehrere Zeitquellen genutzt, sind diese untereinander konsistent. Die Zeitquellen können auch mit mehreren externen zuverlässigen Quellen synchronisiert werden — außer bei Nutzung in isolierten Netzwerken;
8. Einhaltung rechtlicher und regulatorischer Rahmenbedingungen.

**Zusatzinformation (DE):**

Logs im Sinne des Basiskriteriums umfassen abgeleitete Daten und Anbieter-Daten. Rechtliche und regulatorische Rahmenbedingungen können z. B. gesetzliche Anforderungen an Aufbewahrung und Löschung von Daten definieren.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Logging-Policy** mit klarem Katalog der zu loggenden Ereignisse: Auth (Login/Logout/Fail), Autorisierung (Zugriffe auf Patientendaten), Config-Änderungen, Netzwerk-Anomalien, Systemabsturz; Retention nach Datentyp differenziert (Access-Logs zu Patientendaten: 10 Jahre wegen §630f BGB Dokumentationspflicht)
- **Zeitsynchronisation über NTP-Pool** mit mind. 3 externen Quellen (z. B. `ntp.dfn.de`, `de.pool.ntp.org`, `time.google.com`); interner PTP-Master für hochpräzise Timestamps in Prod; Deviation-Alerts bei > 100 ms Drift
- **Roles & Responsibilities** dokumentiert: Log-Produzenten (Apps/Systeme), Log-Aggregator (SOC-Team), Log-Analysten (SecOps), Log-Verwendung durch Compliance (nur Read-Only); mit klarer SoD zwischen Betrieb und Sicherheit
- **Rechtliche Aspekte** integriert: DSGVO Art. 6 Zweckbindung dokumentiert (Sicherheitsanalyse ≠ Werbezwecke); Betriebsrat-Zustimmung für Zugriffs-Monitoring; keine personenbezogenen Auswertungen ohne Anlass

## Verwandte Kriterien

- [[OPS-11 Logging and Monitoring - Policies and Procedures for Handling Cloud Service Derived Data and Account Data]]
- [[OPS-12 Logging and Monitoring - Access, Retention and Deletion]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[OPS-14 Logging and Monitoring - Retention of the Logging Data]]
- [[OPS-15 Logging and Monitoring - Accountability]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
