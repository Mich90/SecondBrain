---
title: COS-03 Monitoring of Connections in the Cloud Service Provider's Network
project: "[[C5 Katalog 2026]]"
c5-id: COS-03
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-03
---

# COS-03 · Monitoring of Connections in the Cloud Service Provider's Network

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-03 · **Unterkriterien:** 5 (5 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die virtuellen Netzwerke innerhalb des Cloud-Dienstes, für die sie verantwortlich sind, gemäß ihren Netzwerksicherheitsanforderungen entworfen, konfiguriert und dokumentiert sind (z. B. logische Segmentierung der Organisationseinheiten des Kunden).

## Unterkriterien

### COS-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider distinguishes between trusted and untrusted networks. Based on a risk assessment according to OIS-07, these are separated into different security zones for internal and external network areas (and DMZ, if applicable).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter unterscheidet zwischen vertrauenswürdigen und nicht vertrauenswürdigen Netzwerken. Basierend auf einer Risikobewertung gemäß [[OIS-07 Risk Management Policy|OIS-07]] werden diese in verschiedene Sicherheitszonen für interne und externe Netzwerkbereiche (und ggf. DMZ) getrennt.

---

### COS-03.02B — Basic

**Kriterium (EN):**

> Physical and virtualised network environments are designed and configured to restrict and monitor the established connection to trusted or untrusted networks according to the defined security requirements (cf. COS-02).

**Deutsche Übersetzung:**

Physische und virtualisierte Netzwerkumgebungen sind so entworfen und konfiguriert, dass die etablierte Verbindung zu vertrauenswürdigen oder nicht vertrauenswürdigen Netzwerken gemäß den definierten Sicherheitsanforderungen (vgl. [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network|COS-02]]) beschränkt und überwacht wird.

---

### COS-03.03B — Basic

**Kriterium (EN):**

> The cloud service provider ensures that the configuration of networks matches the security requirements (cf. COS-02). The cloud service provider reviews at least annually and in case of significant changes to the cloud service the design and implementation of the configuration of the connections with regard to the defined security requirements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt sicher, dass die Konfiguration der Netzwerke den Sicherheitsanforderungen entspricht. Der Cloud-Diensteanbieter überprüft **mindestens jährlich** und bei wesentlichen Änderungen am Cloud-Dienst das Design und die Implementierung der Verbindungs-Konfiguration in Bezug auf die definierten Sicherheitsanforderungen.

---

### COS-03.04B — Basic

**Kriterium (EN):**

> Identified vulnerabilities and deviations are subject to risk assessment in accordance with the risk management procedure (cf. OIS-07) and follow-up measures are defined and tracked (cf. OPS-18).

**Deutsche Übersetzung:**

Identifizierte Schwachstellen und Abweichungen werden gemäß dem Risikomanagement-Verfahren (vgl. OIS-07) einer Risikobewertung unterzogen und Folgemaßnahmen definiert und nachverfolgt (vgl. [[OPS-18 Managing Vulnerabilities - Policies and Procedures|OPS-18]]).

---

### COS-03.05B — Basic

**Kriterium (EN):**

> At specified intervals, the business justification for using all services, protocols, and ports is reviewed. The review also includes the justifications for compensatory measures for the use of protocols that are considered insecure.

**Deutsche Übersetzung:**

In festgelegten Intervallen wird die Business-Begründung für die Nutzung aller Dienste, Protokolle und Ports überprüft. Der Review umfasst auch die Begründungen für kompensierende Maßnahmen bei Nutzung von Protokollen, die als unsicher angesehen werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zone-Model dokumentiert**: Untrusted (Internet) → DMZ (WAF, Load Balancer) → Trusted App-Zone → Restricted Data-Zone → Isolated Compliance-Zone (Patientendaten, TEE); Firewall-Regeln je Zonenübergang, Default Deny
- **Firewall-as-Code**: Regeln in Git-Repo verwaltet, jede Änderung via PR + Approval; automatisierte Compliance-Prüfung (drift detection); CI-Pipeline verhindert öffnende Rules ohne Business Case
- **Jährlicher Firewall-Review**: strukturierte Prüfung aller offenen Ports/Protokolle: gibt es noch Business-Bedarf? Sind kompensierende Maßnahmen bei „unsicheren" Protokollen (z. B. FTP nur intern) noch aktuell? Ergebnisse in Ticket-Backlog
- **Insecure-Protocol-Register**: alle Ausnahmen (SNMP v1, unverschlüsselte Legacy-DB-Ports) mit Ablaufdatum + Migrationsziel + kompensierenden Maßnahmen (isoliertes VLAN, EDR-Monitoring, Zeit-limitierter Zugriff)

## Verwandte Kriterien

- [[COS-01 Technical Safeguards]]
- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-04 Cross-Network Access]]
- [[COS-07 Documentation of the Network Topology]]
- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OIS-07 Risk Management Policy]]
