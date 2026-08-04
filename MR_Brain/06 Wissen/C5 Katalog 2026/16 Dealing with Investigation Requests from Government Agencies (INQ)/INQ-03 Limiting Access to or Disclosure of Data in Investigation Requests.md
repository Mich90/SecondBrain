---
title: INQ-03 Limiting Access to or Disclosure of Data in Investigation Requests
project: "[[C5 Katalog 2026]]"
c5-id: INQ-03
c5-area: INQ
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/inq
aliases:
  - INQ-03
---

# INQ-03 · Limiting Access to or Disclosure of Data in Investigation Requests

> [!info] Kontext
> **Bereich:** Dealing with Investigation Requests from Government Agencies (INQ) · **Kriterium-ID:** INQ-03 · **Unterkriterien:** 4 (2 Basic · 2 Complementing)

## Unterkriterien

### INQ-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider's procedures for granting access to or disclosing cloud service customer data and cloud service derived data in the context of investigation requests from government agencies ensure that the agencies only gain access to or insight into the data that is the subject of the investigation request.

**Deutsche Übersetzung:**

Die Verfahren des Cloud-Diensteanbieters zur Gewährung von Zugriff auf oder Offenlegung von Kundendaten und abgeleiteten Daten im Kontext von Behörden-Ermittlungsanfragen stellen sicher, dass die Behörden nur Zugriff auf oder Einblick in die Daten erhalten, die **Gegenstand der Ermittlungsanfrage** sind.

---

### INQ-03.02B — Basic

**Kriterium (EN):**

> If no clear limitation of the cloud service customer data and cloud service derived data is possible, the cloud service provider anonymises or pseudonymises this data so that government agencies can only assign it to those cloud service customers who are subject of the investigation request.

**Deutsche Übersetzung:**

Ist keine klare Begrenzung der Kundendaten und abgeleiteten Daten möglich, **anonymisiert oder pseudonymisiert** der Cloud-Diensteanbieter diese Daten, sodass Behörden diese nur den Cloud-Dienstkunden zuordnen können, die Gegenstand der Ermittlungsanfrage sind.

---

### INQ-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> The access and activities performed by or on behalf of investigators are monitored by the cloud service provider as determined by the process described in INQ-01.

**Deutsche Übersetzung:**

Der Zugriff und die von oder im Auftrag von Ermittlern durchgeführten Aktivitäten werden vom Cloud-Diensteanbieter gemäß dem in [[INQ-01 Legal Assessment of Investigation Requests|INQ-01]] beschriebenen Prozess **überwacht**.

---

### INQ-03.02AC — Additional (Complementing)

**Kriterium (EN):**

> Timely and appropriate remediation measures address any deviations identified during the monitoring of the activities performed by or on behalf of investigators.

**Deutsche Übersetzung:**

Zeitnahe und angemessene Behebungsmaßnahmen adressieren Abweichungen, die im Rahmen der Überwachung der von oder im Auftrag von Ermittlern durchgeführten Aktivitäten festgestellt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Data-Minimization bei Extraktion**: technisch präzise Extraktion nur der spezifischen Datenmengen (z. B. Patient X in Zeitraum Y, keine „alle Patienten des Krankenhauses"); Extraktion durch spezialisiertes Data-Extraction-Team mit dokumentierten Query-Filtern
- **Anonymisierung anderer Kunden**: bei Datenextrakten, die technisch Datenbestände mehrerer Krankenhäuser tangieren (z. B. gemeinsame Referenztabellen), werden die Daten anderer Krankenhäuser pseudonymisiert; nur Zielkunde bleibt identifizierbar
- **Schlüssel-Übergabe** (INQ-01-Kontext): bei geforderter Krypto-Schlüssel-Übergabe wird geprüft, ob dieser Schlüssel auch andere Kundendaten schützt; wenn ja, Schlüssel-Rotation für andere Kunden vor Übergabe; dedizierte Kunden-Schlüssel (BYOK) reduzieren dieses Risiko strukturell
- **Investigator-Monitoring** (Complementing): wenn Behörden vor-Ort-Zugriff erhalten (selten), begleitet interner Sicherheitsbeauftragter; alle Zugriffe aufgezeichnet (Session-Recording); nach Zugriff Vollständigkeits-Review durchgeführt; Deviations → CISO-Eskalation

## Verwandte Kriterien

- [[INQ-01 Legal Assessment of Investigation Requests]]
- [[INQ-02 Informing Cloud Service Customers about Investigation Requests]]
- [[INQ-04 Communication of Technical Procedures for Data Disclosure in Investigation Requests]]
- [[CRY-08 Encryption of Cloud Service Customer Data in Transit]]
- [[CRY-09 Secure Key Provisioning]]
- [[CRY-13 BYOK / HYOK|CRY-13 Bring-Your-Own-Key / Hold-Your-Own-Key]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[IAM-07 Access to Cloud Service Customer Data]]
