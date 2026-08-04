---
title: GC-01 Information on applicable law, jurisdiction, countries, partitions, regions, zones and locations
project: "[[C5 Katalog 2026]]"
c5-id: GC-01
c5-type: Condition
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/condition
  - c5/gc
aliases:
  - GC-01
---

# GC-01 · Information on applicable law, jurisdiction, countries, partitions, regions, zones and locations

> [!info] General Condition (BSI C5:2026)
> **ID:** GC-01 · **Titel (DE):** Informationen zu anwendbarem Recht, Jurisdiktion, Ländern, Partitionen, Regionen, Zonen und Standorten

## Original (EN)

### Information on the General Conditions of the Cloud service

> In the description of the cloud service provider's system of internal control relevant to the development and operation of the cloud service and the contractual agreements (e.g. service level agreements), the cloud service provider clearly provides comprehensible and transparent information on:
>
> 1. Its applicable law;
> 2. Its jurisdiction (courts that will hear disputes);
> 3. The country in which the cloud service provider's entity or entities that prepared the description is/are registered as a legal entity;
> 4. The country in which the cloud service provider's headquarters (ultimate parent) is registered as a legal entity;
> 5. The partitions, regions, zones and locations that are provided to cloud service customers for the operation of the cloud service, where the cloud service customer data, cloud service derived data and account data is processed, stored and backed up, based on service offering type (SaaS, PaaS, IaaS); and
> 6. If certain of these partitions, regions, zones and locations are not in scope of the assurance engagement, an indication for their exclusion.
>
> The information is prepared to meet the common needs of a broad range of subject matter experts of the cloud service customers who define or implement information security requirements, validate their effectiveness or assess the suitability of the cloud service from a legal and regulatory perspective (e.g. IT, compliance, internal audit).

### Supplementary Information — Notes on the General Conditions

> For definitions of the terms partitions, regions, zones, locations and the data types cf. section 1.2. If the processing, backup and storage of customer data take place in different partitions, regions, zones and locations, this has to be described comprehensibly and transparently in the system description.

## Deutsche Übersetzung

### Informationen zu den Allgemeinen Bedingungen des Cloud-Dienstes

In der Beschreibung des internen Kontrollsystems des Cloud-Diensteanbieters, das für die Entwicklung und den Betrieb des Cloud-Dienstes relevant ist, sowie in den vertraglichen Vereinbarungen (z. B. Service Level Agreements) stellt der Cloud-Diensteanbieter nachvollziehbar und transparent Informationen zu folgenden Punkten bereit:

1. Anwendbares Recht;
2. Zuständige Gerichtsbarkeit (Jurisdiktion, d. h. welche Gerichte über Streitigkeiten entscheiden);
3. Land, in dem die Rechtsperson(en) des Cloud-Diensteanbieters, welche die Beschreibung erstellt hat/haben, als juristische Person eingetragen ist/sind;
4. Land, in dem der Hauptsitz des Cloud-Diensteanbieters (letzte Muttergesellschaft) als juristische Person eingetragen ist;
5. Die Partitionen, Regionen, Zonen und Standorte, die den Cloud-Dienstkunden für den Betrieb des Cloud-Dienstes zur Verfügung gestellt werden und in denen Kundendaten, abgeleitete Daten und Kontodaten verarbeitet, gespeichert und gesichert werden — differenziert nach Angebotstyp (SaaS, PaaS, IaaS);
6. Falls bestimmte dieser Partitionen, Regionen, Zonen oder Standorte nicht im Prüfumfang liegen, ein Hinweis auf deren Ausschluss.

Die Informationen sind so aufbereitet, dass sie den typischen Anforderungen einer Vielzahl von Fachexperten der Cloud-Dienstkunden entsprechen, die Anforderungen an die Informationssicherheit definieren oder umsetzen, deren Wirksamkeit validieren oder den Cloud-Dienst aus rechtlicher und regulatorischer Sicht beurteilen (z. B. IT, Compliance, interne Revision).

### Ergänzende Hinweise

Für die Definitionen der Begriffe *Partitionen*, *Regionen*, *Zonen*, *Standorte* sowie der Datentypen siehe Abschnitt 1.2 des C5-Katalogs. Wenn Verarbeitung, Sicherung und Speicherung der Kundendaten in unterschiedlichen Partitionen, Regionen, Zonen oder Standorten erfolgen, muss dies in der Systembeschreibung nachvollziehbar und transparent dargelegt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Rechts- und Gerichtsstands-Klausel** in AGB und Auftragsverarbeitungsvertrag (AVV) klar formulieren: z. B. „Deutsches Recht unter Ausschluss des UN-Kaufrechts, Gerichtsstand Frankfurt am Main" — für Gesundheitsdaten (Art. 9 DSGVO) EU/DACH-Jurisdiktion zwingend empfohlen
- **Konzernstruktur transparent dokumentieren**: welche Tochtergesellschaft betreibt den Service (z. B. deutsche GmbH), welche ist Muttergesellschaft (z. B. AG in DE oder anderes EU-Land); relevant für Prüfung nach §203 StGB bei Auftragsdatenverarbeitung im Krankenhauskontext
- **Standort- und Regionen-Übersicht** in der Service-Description veröffentlichen: Primär-Rechenzentrum (z. B. Frankfurt), Georedundanz-RZ (z. B. Berlin), Backup-Standort — mit ausdrücklicher Zusicherung, dass keine Verarbeitung außerhalb der EU stattfindet
- **Scope-Exclusion transparent kennzeichnen**: falls z. B. Entwicklungs- oder Test-Regionen nicht im C5-Prüfumfang sind, dies explizit im Systembeschreibungsdokument benennen

## Verwandte Kriterien

- [[GC-05 Information on how investigation requests from government agencies are handled|GC-05 · Behördliche Ermittlungsersuchen]] (rechtliche Grundlagen je nach Jurisdiktion)
- [[COM-01 Identification of Applicable Compliance Requirements|COM-01]] *(noch nicht angelegt)*
