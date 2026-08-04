---
title: OPS-11 Logging and Monitoring - Policies and Procedures for Handling Cloud Service Derived Data and Account Data
project: "[[C5 Katalog 2026]]"
c5-id: OPS-11
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-11
---

# OPS-11 · Logging and Monitoring — Policies and Procedures for Handling Cloud Service Derived Data and Account Data

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-11 · **Unterkriterien:** 4 (2 Basic · 2 Complementing)

## Unterkriterien

### OPS-11.01B — Basic

**Kriterium (EN):**

> Policies and procedures for the secure handling of cloud service derived data and account data are documented, communicated and provided according to SP-01 with regard to at least the following aspects:
>
> 1. Cloud service derived data and account data is collected and used solely to administer and operate the cloud service, including purposes related to the implementation of security controls;
> 2. No commercial use beyond the aforementioned purpose to administer and operate the cloud service;
> 3. Storage for a fixed period reasonably related to the purposes of the collection;
> 4. The confidentiality and integrity of the logs is protected through appropriate security controls;
> 5. As far as technically possible, anonymised cloud service derived data is used only in a way so that no conclusions can be drawn about the usage behaviour of individual users of the cloud service customer;
> 6. Cloud service derived data that has been fully anonymised and cannot be traced back to individual cloud service customers may be further processed and retained, provided no contractual or legal restrictions exist, otherwise immediate deletion if the purposes of the collection are fulfilled and further storage is no longer necessary; and
> 7. Provision to cloud service customers according to contractual agreements.

**Deutsche Übersetzung:**

Richtlinien und Verfahren zum sicheren Umgang mit abgeleiteten Daten und Kontodaten sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und adressieren mindestens folgende Aspekte:

1. Abgeleitete Daten und Kontodaten werden ausschließlich zur Administration und zum Betrieb des Cloud-Dienstes erhoben und genutzt — einschließlich Zwecke der Umsetzung von Sicherheitskontrollen;
2. Keine kommerzielle Nutzung über den o. g. Zweck der Administration und des Betriebs hinaus;
3. Speicherung für einen definierten Zeitraum in angemessenem Verhältnis zu den Erhebungszwecken;
4. Vertraulichkeit und Integrität der Logs werden durch angemessene Sicherheitskontrollen geschützt;
5. Soweit technisch möglich, werden anonymisierte abgeleitete Daten nur so genutzt, dass keine Rückschlüsse auf das Nutzungsverhalten einzelner Nutzer des Cloud-Dienstkunden möglich sind;
6. Abgeleitete Daten, die vollständig anonymisiert und nicht auf einzelne Cloud-Dienstkunden zurückführbar sind, dürfen weiterverarbeitet und aufbewahrt werden, sofern keine vertraglichen oder rechtlichen Einschränkungen bestehen — andernfalls sofortige Löschung, wenn die Erhebungszwecke erfüllt sind und eine weitere Speicherung nicht mehr erforderlich ist;
7. Bereitstellung an Cloud-Dienstkunden gemäß vertraglichen Vereinbarungen.

**Zusatzinformation (DE):**

Erhebung und Nutzung abgeleiteter Daten und Kontodaten für Administration und Betrieb umfassen auch die Analyse dieser Daten zur Verbesserung des Cloud-Dienstes, sofern diese Verbesserung nicht nur den wirtschaftlichen Interessen des Cloud-Diensteanbieters dient.

Handelt der Cloud-Diensteanbieter als Cloud Service Broker, sollten die Richtlinien und Verfahren besonderen Betrachtungen der Komplexität im Umgang mit abgeleiteten Daten und Kontodaten in dieser Rolle Rechnung tragen.

---

### OPS-11.02B — Basic

**Kriterium (EN):**

> The cloud service provider specifies in the contractual agreements with cloud service customers all purposes for which cloud service derived data are collected and used, except for those purposes that are inherent to the general operation of all cloud services.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter spezifiziert in den vertraglichen Vereinbarungen mit den Cloud-Dienstkunden alle Zwecke, für die abgeleitete Daten erhoben und genutzt werden — mit Ausnahme jener Zwecke, die dem allgemeinen Betrieb aller Cloud-Dienste inhärent sind.

**Zusatzinformation (DE):**

Dem allgemeinen Betrieb inhärente Zwecke sind:

1. Kapazitätsplanung und Ressourcenmanagement;
2. Sicherheits-Monitoring und Incident Response;
3. Einhaltung regulatorischer Anforderungen;
4. Service-Performance und Zuverlässigkeit.

---

### OPS-11.01AC — Additional (Complementing)

**Kriterium (EN):**

> Personal data is automatically removed from the log data before the cloud service provider processes it, as far as technically possible. The removal is done in a way that allows the cloud service provider to continue to use the log data for the purpose for which it was collected.

**Deutsche Übersetzung:**

Personenbezogene Daten werden automatisch aus den Log-Daten entfernt, bevor der Cloud-Diensteanbieter diese verarbeitet — soweit technisch möglich. Die Entfernung erfolgt so, dass der Cloud-Diensteanbieter die Log-Daten weiterhin für die Zwecke, für die sie erhoben wurden, nutzen kann.

---

### OPS-11.02AC — Additional (Complementing)

**Kriterium (EN):**

> Cloud service derived data, particularly log data, is included in regulatory compliance assessments.

**Deutsche Übersetzung:**

Abgeleitete Daten — insbesondere Log-Daten — werden in regulatorische Compliance-Bewertungen einbezogen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zweckbindung dokumentiert** im AVV (Art. 28 DSGVO): Log-Daten ausschließlich für Betrieb, Sicherheit, Compliance; ausdrücklicher Ausschluss von kommerzieller Sekundärnutzung; Aufnahme in Verzeichnis der Verarbeitungstätigkeiten (Art. 30 DSGVO)
- **Log-Pseudonymisierung**: Nutzer-IDs in Logs via HMAC pseudonymisiert; Re-Identifikation nur mit separatem Schlüssel unter 4-Augen-Prinzip; IP-Adressen automatisch nach 30 Tagen anonymisiert (letztes Oktett auf 0)
- **Retention Policy**: Security-Logs 12 Monate, Audit-Logs zu Patientendaten-Zugriffen 10 Jahre (§630f BGB), Debug-Logs 30 Tage; Auto-Deletion via Lifecycle-Regeln in Log-Storage (z. B. Elastic ILM, Splunk retention policies)
- **DSGVO-Compliance-Integration**: Log-System (SIEM) Teil des jährlichen Datenschutz-Audits; DPIA (Datenschutz-Folgenabschätzung) für Logging von Patientendaten-Zugriffen; Betroffenenrechte (Auskunft, Löschung) über definierten Prozess

## Verwandte Kriterien

- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-12 Logging and Monitoring - Access, Retention and Deletion]]
- [[OPS-14 Logging and Monitoring - Retention of the Logging Data]]
- [[COM-01 Identification of Applicable Compliance Requirements|COM-01]] *(noch nicht angelegt)*
- [[GC-05 Information on how investigation requests from government agencies are handled|GC-05 · Behördliche Ermittlungsersuchen]]
