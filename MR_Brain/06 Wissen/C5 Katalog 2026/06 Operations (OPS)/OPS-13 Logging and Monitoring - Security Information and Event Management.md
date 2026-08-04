---
title: OPS-13 Logging and Monitoring - Security Information and Event Management
project: "[[C5 Katalog 2026]]"
c5-id: OPS-13
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-13
---

# OPS-13 · Logging and Monitoring — Security Information and Event Management

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-13 · **Unterkriterien:** 5 (2 Basic · 3 Complementing)

## Unterkriterien

### OPS-13.01B — Basic

**Kriterium (EN):**

> The cloud service provider integrates relevant log data (cloud service derived data and cloud service provider data) into a Security Information and Event Management (SIEM) system to establish a seamless connection between logging, monitoring, and security incident management.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter integriert relevante Log-Daten (abgeleitete Daten und Anbieter-Daten) in ein **Security Information and Event Management (SIEM)**-System, um eine nahtlose Verbindung zwischen Logging, Monitoring und Security Incident Management herzustellen.

---

### OPS-13.02B — Basic

**Kriterium (EN):**

> The SIEM system is deployed within the cloud environment or externally and includes the following capabilities:
>
> 1. Standardisation of log data;
> 2. Automated analysis to identify and correlate potential security incidents;
> 3. Capabilities to detect unusual behaviour and potential threats;
> 4. Real-time alerting to inform the incident response team of critical events;
> 5. Reporting to the incident response team in case new information relevant to an event becomes available; and
> 6. Automated response mechanisms for addressing security incidents.

**Deutsche Übersetzung:**

Das SIEM-System wird in der Cloud-Umgebung oder extern betrieben und verfügt über folgende Fähigkeiten:

1. Standardisierung von Log-Daten;
2. Automatisierte Analyse zur Identifikation und Korrelation potenzieller Sicherheitsvorfälle;
3. Fähigkeiten zur Erkennung ungewöhnlichen Verhaltens und potenzieller Bedrohungen;
4. Echtzeit-Alerting zur Information des Incident-Response-Teams über kritische Ereignisse;
5. Reporting an das Incident-Response-Team, wenn neue Informationen zu einem Ereignis verfügbar werden;
6. Automatisierte Reaktionsmechanismen zur Adressierung von Sicherheitsvorfällen.

---

### OPS-13.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider validates the correct operation of event detection processes on appropriate assets. The appropriateness of the assets is identified in accordance with the asset classification schema (cf. AM-09).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter validiert die korrekte Funktion der Ereigniserkennungsprozesse auf geeigneten Assets. Die Eignung der Assets wird gemäß dem Asset-Klassifizierungsschema (vgl. [[AM-09 Asset Classification and Labelling|AM-09]]) identifiziert.

---

### OPS-13.02AC — Additional (Complementing)

**Kriterium (EN):**

> Timely and appropriate remediation measures address any deviations identified during validation.

**Deutsche Übersetzung:**

Zeitnahe und angemessene Behebungsmaßnahmen adressieren im Rahmen der Validierung festgestellte Abweichungen.

---

### OPS-13.03AC — Additional (Complementing)

**Kriterium (EN):**

> If an event that can lead to security incidents is identified, incident handling activities by the cloud service provider are triggered without undue delay.

**Deutsche Übersetzung:**

Wird ein Ereignis identifiziert, das zu Sicherheitsvorfällen führen kann, werden die Incident-Handling-Aktivitäten des Cloud-Diensteanbieters unverzüglich ausgelöst.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **SIEM-Implementierung** (z. B. Splunk ES, Elastic Security, Microsoft Sentinel, IBM QRadar): Log-Ingestion aus allen Prod-Systemen (Apps, DBs, OS, Netzwerk, Cloud APIs); Normalisierung via Common Information Model
- **Detection-Content**: SIGMA-Regeln + MITRE-ATT&CK-Mappings, für Healthcare-Kontext angepasst (Anomalie bei Massendownload Patientendaten, ungewöhnliche Zugriffe außerhalb Business Hours, Failed-Login-Muster); regelmäßige Content-Updates
- **UEBA für Insider-Threat-Detection**: Machine-Learning-Baseline pro Nutzerrolle; Alarme bei Abweichung (Nutzer greift auf 100× mehr Patientenakten zu als üblich); wichtig zur Erkennung von § 203 StGB-relevanten Zugriffen
- **SOAR-Integration** (z. B. Splunk SOAR, Palo Alto XSOAR): automatische Response bei bekannten Mustern (User-Session terminieren bei Anomalie + Alert an SOC + Case-Erstellung im Ticket-System); Reduktion der Reaktionszeit

## Verwandte Kriterien

- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-14 Logging and Monitoring - Retention of the Logging Data]]
- [[OPS-15 Logging and Monitoring - Accountability]]
- [[AM-09 Asset Classification and Labelling]]
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
- [[OIS-05 Threat Intelligence]]
