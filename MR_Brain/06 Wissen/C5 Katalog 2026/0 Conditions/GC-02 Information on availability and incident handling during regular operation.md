---
title: GC-02 Information on availability and incident handling during regular operation
project: "[[C5 Katalog 2026]]"
c5-id: GC-02
c5-type: Condition
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/condition
  - c5/gc
aliases:
  - GC-02
---

# GC-02 · Information on availability and incident handling during regular operation

> [!info] General Condition (BSI C5:2026)
> **ID:** GC-02 · **Titel (DE):** Informationen zu Verfügbarkeit und Incident-Handling im Regelbetrieb

## Original (EN)

### Information on the General Conditions of the Cloud service

> In contractual agreements (e.g. service level agreements), the cloud service provider presents comprehensible, binding and transparent information on:
>
> 1. Availability of the cloud service;
> 2. Categorisation and prioritisation of incidents;
> 3. Response times for disruptions of regular operation according to the categorisation (time elapsed between the reporting of the disruption and the first response by the cloud service provider);
> 4. Recovery time (time elapsed until the incident has been resolved); and
> 5. Contractual consequences of non-compliance.
>
> The information is based on definitions that allow subject matter experts of the cloud service customers to assess the cloud service against their business requirements.
> Contractual agreements may refer to operational documentation (e.g. service documentation, technical specifications, or other publicly accessible resources) that can be regularly updated.
> The description of the cloud service provider's system of internal control relevant to the development and operation of the cloud service indicates where this information can be found. References relate precisely to the individual aspects specified above, allowing readers who are not familiar with the contractual agreement or the operational documentation to find the information in a timely manner.
>
> If information on availability and remediation of disruptions represent average values that are not binding in individual cases, this is highlighted separately.

### Supplementary Information — Notes on the General Conditions

> In addition to the reference in the description of the cloud service provider, the information itself may also be an optional part of the report, e.g. in a section 'Other information provided by the Cloud Service Provider'. Only in the latter case, this information is not subject to the auditor's procedures, and, accordingly, the auditor does not issue an opinion on it.

## Deutsche Übersetzung

### Informationen zu den Allgemeinen Bedingungen des Cloud-Dienstes

In den vertraglichen Vereinbarungen (z. B. Service Level Agreements) stellt der Cloud-Diensteanbieter nachvollziehbare, verbindliche und transparente Informationen zu folgenden Punkten bereit:

1. Verfügbarkeit des Cloud-Dienstes;
2. Kategorisierung und Priorisierung von Störungen (Incidents);
3. Reaktionszeiten bei Störungen des Regelbetriebs entsprechend der Kategorisierung (Zeit zwischen Meldung der Störung und erster Reaktion des Cloud-Diensteanbieters);
4. Wiederherstellungszeit (Zeit bis zur Behebung des Incidents);
5. Vertragliche Konsequenzen bei Nichteinhaltung.

Die Informationen basieren auf Definitionen, die es Fachexperten der Cloud-Dienstkunden ermöglichen, den Cloud-Dienst gegen ihre Geschäftsanforderungen zu bewerten.

Vertragliche Vereinbarungen dürfen auf operative Dokumentationen verweisen (z. B. Servicebeschreibungen, technische Spezifikationen oder andere öffentlich zugängliche Ressourcen), die regelmäßig aktualisiert werden können.

In der Beschreibung des internen Kontrollsystems des Cloud-Diensteanbieters ist angegeben, wo diese Informationen zu finden sind. Verweise beziehen sich präzise auf die oben genannten Einzelaspekte und ermöglichen es Lesern, die mit der vertraglichen Vereinbarung oder der operativen Dokumentation nicht vertraut sind, die Informationen zeitnah zu finden.

Sofern Angaben zu Verfügbarkeit und Behebung von Störungen als Durchschnittswerte dargestellt werden, die im Einzelfall nicht verbindlich sind, ist dies gesondert hervorzuheben.

### Ergänzende Hinweise

Zusätzlich zum Verweis in der Beschreibung des Cloud-Diensteanbieters können die Informationen selbst optional Bestandteil des Prüfberichts sein, z. B. in einem Abschnitt „Sonstige Informationen des Cloud-Diensteanbieters". Nur in diesem Fall unterliegen die Informationen nicht den Prüfhandlungen des Auditors, und dieser gibt entsprechend auch kein Prüfurteil dazu ab.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **SLA mit klar messbaren Verfügbarkeitszusagen** aufsetzen, z. B. 99,9 % monatliche Verfügbarkeit für den produktiven Service (relevant für KIS-/PVS-Integration im Krankenhausbetrieb, da während OP oder Notaufnahme keine Ausfälle tolerierbar)
- **Incident-Kategorisierung nach Severity** (S1–S4) mit definierten Reaktions- und Wiederherstellungszeiten je Kategorie — S1 (Total-Ausfall Patientendaten-Zugriff): Reaktion 15 min, Recovery 2 h; S3 (kosmetischer Bug): Reaktion 2 Werktage
- **Statuspage** öffentlich unter z. B. `status.example.com` mit Live-Zustand aller Services, Vorfalls-Historie und Wartungsfenstern; per Webhook an Kunden-Alerting anbindbar
- **Vertragsstrafen und Service Credits** bei SLA-Verletzung explizit dokumentieren (z. B. 5 % monatliche Servicegebühr pro 0,1 %-Punkt unter Ziel-Verfügbarkeit)

## Verwandte Kriterien

- [[GC-03 Information on recovery parameters in emergency operation|GC-03 · Recovery-Parameter im Notbetrieb]]
- [[GC-04 Information on the approach to ensuring service availability|GC-04 · Verfügbarkeits-Konzept]]
- [[OPS-24 Reporting of Capacity Restrictions|OPS-24]] *(noch nicht angelegt)*
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
