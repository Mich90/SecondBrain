---
title: PS-07 Surveillance of Operational and Environmental Parameters
project: "[[C5 Katalog 2026]]"
c5-id: PS-07
c5-area: PS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ps
aliases:
  - PS-07
---

# PS-07 · Surveillance of Operational and Environmental Parameters

> [!info] Kontext
> **Bereich:** Physical Security (PS) · **Kriterium-ID:** PS-07 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### PS-07.01B — Basic

**Kriterium (EN):**

> The operating parameters of the technical utilities (cf. PS-06) and the environmental parameters of the premises and buildings related to the cloud service provided are monitored and controlled in accordance with the security requirements of the cloud service provider (cf. PS-01).

**Deutsche Übersetzung:**

Die Betriebsparameter der technischen Versorgungseinrichtungen (vgl. [[PS-06 Protection against Interruptions caused by Power Failures and similar Risks to Supply Facilities|PS-06]]) und die Umgebungsparameter der Räume und Gebäude im Zusammenhang mit dem Cloud-Dienst werden gemäß den Sicherheitsanforderungen des Cloud-Diensteanbieters (vgl. [[PS-01 Physical Security and Environmental Control Requirements|PS-01]]) überwacht und gesteuert.

**Zusatzinformation (DE):**

Diese Maßnahmen umfassen typischerweise:

1. Umgebungs-Monitoring-Systeme (z. B. Temperatur- und Feuchtigkeitssensoren);
2. Brandbekämpfungsanlagen;
3. Klimatisierungs-(HVAC-)Systeme;
4. Leckage-Erkennung und Alarme.

---

### PS-07.02B — Basic

**Kriterium (EN):**

> When the permitted control range is exceeded, the responsible departments at the cloud service provider are automatically informed in order to timely initiate the necessary measures for return to the control range.

**Deutsche Übersetzung:**

Beim Überschreiten des zulässigen Bereichs werden die verantwortlichen Abteilungen des Cloud-Diensteanbieters automatisch informiert, um zeitnah die erforderlichen Maßnahmen zur Rückkehr in den zulässigen Bereich einzuleiten.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **BMS/DCIM-System** (Building Management / Data Center Infrastructure Management, z. B. Schneider EcoStruxure, ABB, Nlyte) mit Live-Dashboards: Temperatur, Luftfeuchtigkeit, Stromverbrauch, PUE, USV-Status, Kühlung, Türsensoren
- **Alarm-Schwellwerte** dokumentiert und getestet: Yellow bei 25 °C, Red bei 30 °C in Serverräumen; automatische Weiterleitung an 24×7-Leitstelle via SMS/Pager; Eskalation bei Nicht-Reaktion binnen 5 min
- **Integration mit SIEM**: physische Sensor-Alarme fließen als Events in die zentrale Security-Plattform; Korrelation mit anderen Vorfällen (z. B. Stromausfall + IT-Systemausfall = koordinierte Reaktion)
- **Predictive Analytics**: Trendanalysen auf HVAC-Auslastung, USV-Batterie-Alterung, Kühlung-Effizienz — proaktive Wartung vor Ausfall

## Verwandte Kriterien

- [[PS-01 Physical Security and Environmental Control Requirements]]
- [[PS-05 Protection against Threats from Outside and from the Environment]]
- [[PS-06 Protection against Interruptions caused by Power Failures and similar Risks to Supply Facilities]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures|OPS-10]] *(noch nicht angelegt)*
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
