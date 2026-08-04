---
title: OPS-19 Managing Incidents and Crashes - Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-19
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-19
---

# OPS-19 · Managing Incidents and Crashes — Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-19 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-19.01B — Basic

**Kriterium (EN):**

> Policies and procedures with technical and organisational measures are documented, communicated, and provided in accordance with SP-01 to govern the timely identification and management of incidents and crashes in the system components used to provide the cloud service or of parts or the whole cloud service. These policies and procedures include specifications regarding the following aspects:
>
> 1. Classification and prioritisation of incidents and crashes;
> 2. Standardised incident-handling procedures for addressing known issues;
> 3. Escalation rules and procedures, including criteria for triggering Security Incident Management (SIM) processes in accordance with SIM-02 or internal incident management procedures;
> 4. Knowledge sources for incidents and crashes;
> 5. Criteria for determining when crashes are classified as incidents and when they trigger incident management processes;
> 6. Mechanisms ensuring that access to crash files is restricted to authorised personnel only;
> 7. Safeguards to prevent exposure of sensitive, personal, or confidential data within crash files;
> 8. Encryption of crash files for storage and during transmission;
> 9. Access management, logging, and review processes for access logs of crash files; and
> 10. Retention periods and secure deletion processes for crash files once no longer needed.

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit technischen und organisatorischen Maßnahmen sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt, um die zeitnahe Identifikation und Behandlung von Incidents und Crashes in Systemkomponenten oder Teilen bzw. des gesamten Cloud-Dienstes zu regeln. Sie enthalten Vorgaben zu folgenden Aspekten:

1. Klassifizierung und Priorisierung von Incidents und Crashes;
2. Standardisierte Incident-Handling-Verfahren zur Behandlung bekannter Probleme;
3. Eskalations-Regeln und -Verfahren, einschließlich Kriterien zur Auslösung von Security Incident Management (SIM)-Prozessen gemäß [[SIM-02 Processing of Security Incidents|SIM-02]] oder interner Incident-Management-Verfahren;
4. Wissensquellen zu Incidents und Crashes;
5. Kriterien zur Bestimmung, wann Crashes als Incidents klassifiziert werden und wann sie Incident-Management-Prozesse auslösen;
6. Mechanismen, die den Zugriff auf Crash-Dateien nur auf autorisiertes Personal beschränken;
7. Schutzmaßnahmen zur Verhinderung der Offenlegung sensitiver, personenbezogener oder vertraulicher Daten in Crash-Dateien;
8. Verschlüsselung von Crash-Dateien für Speicherung und Übertragung;
9. Access-Management, Logging und Review-Prozesse für Zugriffslogs von Crash-Dateien;
10. Aufbewahrungsfristen und sichere Löschverfahren für Crash-Dateien, sobald sie nicht mehr benötigt werden.

**Zusatzinformation (DE):**

Ein Crash ist ein Vorfall, der zu einem plötzlichen und vollständigen Ausfall eines Systems oder einer Systemkomponente führt. Er kann Hinweis auf ein größeres Problem sein, wie einen versuchten DDoS-Angriff oder eine nicht gemitigierte Schwachstelle.

Eine Crash-Datei ist der Dump des Ausführungszustands eines Systems, typischerweise einschließlich der Inhalte seines Speichers oder seiner Register zum Zeitpunkt des Crashes (z. B. Memory Dump).

Kriterien zur Bestimmung, wann ein Incident oder Crash SIM-Prozesse auslöst, umfassen u. a. dass der Incident oder Crash zu einem oder mehreren der folgenden führt:

1. Verletzung interner Sicherheitsrichtlinien, vertraglicher Vereinbarungen oder relevanter rechtlicher/regulatorischer Anforderungen;
2. Unautorisierter Zugriff auf Kundendaten oder produktiv genutzte Systemkomponenten;
3. Verlust oder Exfiltration von Kundendaten;
4. Unautorisierte Änderungen an produktiv genutzten Systemkomponenten;
5. Verletzung der SLA-Verfügbarkeitsanforderungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Incident-Klassifizierung** in Severity-Klassen S1–S4: S1 (Ausfall Patientendaten-Zugriff) → sofortige Eskalation an CISO + CTO; S4 (kosmetischer Fehler) → normaler Sprint-Kanal
- **Krankenhaus-spezifisches Runbook**: definierte Standard-Prozeduren für „Zugriffs-Anomalie auf Patientendaten", „Auth-Ausfall", „Ransomware-Verdacht"; Übergabe an SIM sobald Vertraulichkeit/Integrität von Kundendaten betroffen
- **Crash-Dump-Schutz**: automatisches Scrubbing von Patientendaten in Crash Dumps (Regex-Filter für PID-Muster wie Versicherten-Nummern); Verschlüsselung with kundenspezifischen Keys (BYOK); Zugriff nur mit CISO-Approval + Session-Recording
- **Retention Crash-Files**: 14 Tage aktiv, 90 Tage archiviert, dann sichere Löschung; falls für laufende Analyse länger benötigt → dokumentierter Legal-Hold-Prozess

## Verwandte Kriterien

- [[OPS-20 Managing Incidents - Implementation]]
- [[OPS-21 Managing Crashes - Implementation]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
- [[SIM-02 Processing of Security Incidents|SIM-02]] *(noch nicht angelegt)*
