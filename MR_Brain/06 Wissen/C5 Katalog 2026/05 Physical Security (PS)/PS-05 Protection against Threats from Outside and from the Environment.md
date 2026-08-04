---
title: PS-05 Protection against Threats from Outside and from the Environment
project: "[[C5 Katalog 2026]]"
c5-id: PS-05
c5-area: PS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ps
aliases:
  - PS-05
---

# PS-05 · Protection against Threats from Outside and from the Environment

> [!info] Kontext
> **Bereich:** Physical Security (PS) · **Kriterium-ID:** PS-05 · **Unterkriterien:** 4 (4 Basic)

## Unterkriterien

### PS-05.01B — Basic

**Kriterium (EN):**

> Premises and buildings related to the cloud service provided are protected from fire, smoke, lightning and unwanted water by structural, technical and organisational measures that meet the security requirements of the cloud service provider (cf. PS-01).

**Deutsche Übersetzung:**

Räume und Gebäude im Zusammenhang mit dem Cloud-Dienst sind durch bauliche, technische und organisatorische Maßnahmen gemäß den Sicherheitsanforderungen des Cloud-Diensteanbieters (vgl. [[PS-01 Physical Security and Environmental Control Requirements|PS-01]]) vor Feuer, Rauch, Blitzschlag und ungewolltem Wasser geschützt.

---

### PS-05.02B — Basic

**Kriterium (EN):**

> Structural Measures include the following aspects:
>
> 1. Establishment of fire sections with a fire resistance duration of at least 90 minutes for all structural parts, or alternatively, equivalent organisational and technical measures that ensure the same level of protection standard as 90-minutes fire-resistant structural parts or establishment of compensating measures for containing fires and maintaining operational capability. If compensating measures are taken into account, the fire resistance of structural parts has to be at least 60 minutes;
> 2. Effective implementation of measures to protect against lightning and overvoltage damage; and
> 3. Effective implementation of measures to protect against flooding, unless critical facilities are located significantly above the highest flood level at the location of the cloud data centre. Additionally, appropriate measures to mitigate the effects of heavy rain are implemented, unless critical facilities are located significantly above the backwater level at the location of the cloud data centre.

**Deutsche Übersetzung:**

Bauliche Maßnahmen umfassen folgende Aspekte:

1. Einrichtung von Brandabschnitten mit einer Feuerwiderstandsdauer von **mindestens 90 Minuten** für alle Bauteile — alternativ gleichwertige organisatorische und technische Maßnahmen, die denselben Schutzstandard wie 90-minütige feuerwiderstandsfähige Bauteile gewährleisten, oder kompensierende Maßnahmen zur Brandeindämmung und Aufrechterhaltung der Betriebsfähigkeit. Werden kompensierende Maßnahmen berücksichtigt, muss die Feuerwiderstandsfähigkeit der Bauteile **mindestens 60 Minuten** betragen;
2. Wirksame Umsetzung von Maßnahmen zum Schutz vor Blitzschlag- und Überspannungsschäden;
3. Wirksame Umsetzung von Maßnahmen zum Schutz vor Überflutung, sofern kritische Einrichtungen nicht deutlich oberhalb des höchsten Hochwasserstands am Standort liegen. Zusätzlich werden angemessene Maßnahmen zur Minderung der Auswirkungen von Starkregen umgesetzt, sofern kritische Einrichtungen nicht deutlich oberhalb des Rückstauniveaus am Standort liegen.

**Zusatzinformation (DE):**

Bauteile sind Wände, Decken, Böden, Türen, Fenster und andere Durchbrüche (z. B. Lüftungsklappen).

Kompensierende Maßnahmen können folgende Aspekte berücksichtigen:

1. Aufteilung und Anordnung von Brandabschnitten;
2. Löschanlagen innerhalb der Brandabschnitte;
3. Frühe und sehr frühe Branderkennungsmechanismen;
4. Redundanz von Systemen und Versorgungseinrichtungen innerhalb des Standorts;
5. Zeitraum, in dem die Standorte und Räume einem Feuer, das eine Datenhalle beeinträchtigt, standhalten können, ohne dass eine zweite Datenhalle Feuer fängt.

Der Cloud-Diensteanbieter sollte die zum Brandschutz getroffenen Maßnahmen als Teil der Systembeschreibung darlegen.

Der Standort aller kritischen Einrichtungen in Relation zum höchsten historisch erfassten Hochwasserstand bzw. Rückstauniveau am Standort dient als Ausgangspunkt für Hochwasser- und Starkregenschutzmaßnahmen.

---

### PS-05.03B — Basic

**Kriterium (EN):**

> Technical Measures include the following aspects:
>
> 1. Early fire detection with automatic voltage release. The monitored areas are sufficiently fragmented to ensure that the prevention of the spread of incipient fires is proportionate to the maintenance of the availability of the cloud service provided;
> 2. Extinguishing system or oxygen reduction; and
> 3. Fire alarm system with reporting to the local fire department.

**Deutsche Übersetzung:**

Technische Maßnahmen umfassen folgende Aspekte:

1. Frühbranderkennung mit automatischer Spannungsfreischaltung. Die überwachten Bereiche sind ausreichend fragmentiert, um sicherzustellen, dass die Verhinderung der Ausbreitung von Entstehungsbränden im Verhältnis zur Aufrechterhaltung der Verfügbarkeit des Cloud-Dienstes steht;
2. Löschanlage oder Sauerstoffreduzierung;
3. Brandmeldeanlage mit Meldung an die örtliche Feuerwehr.

**Zusatzinformation (DE):**

Die Überwachung der Umgebungsparameter ist in [[PS-07 Surveillance of Operational and Environmental Parameters|PS-07]] adressiert. Beim Überschreiten des zulässigen Bereichs werden Alarme generiert und an den verantwortlichen Cloud-Diensteanbieter weitergeleitet.

---

### PS-05.04B — Basic

**Kriterium (EN):**

> Organisational Measures include the following aspects:
>
> 1. Regular fire protection inspections to check compliance with fire protection requirements; and
> 2. Regular fire protection exercises.

**Deutsche Übersetzung:**

Organisatorische Maßnahmen umfassen folgende Aspekte:

1. Regelmäßige Brandschutz-Inspektionen zur Prüfung der Einhaltung der Brandschutzanforderungen;
2. Regelmäßige Brandschutzübungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **F90-Brandabschnitte** mit klarer Trennung der Datenhallen; VESDA-Frühbranderkennung (Ansaugsysteme) mit Vor-Alarm bei 0,1 % Rauchdichte; Inertgas-Löschanlage (Argon/Novec 1230) statt Wassernebel wegen Elektronik-Schutz
- **Blitzschutz nach IEC 62305 Klasse I**: äußerer Blitzschutz (Fangeinrichtungen, Ableiter, Erdung), innerer Blitzschutz (Überspannungsschutz Typ 1/2/3 in Stromverteilung); jährliche Prüfung durch Elektrofachkraft
- **Hochwasserschutz**: Standortwahl oberhalb HQ-200-Niveau, Sensorik in Bodenbereichen (Wasserleitungen), Rückschlagventile in Kanalisationsanschlüssen; Notfall-Sandsäcke vor Ort für Elementarereignisse
- **Brandschutz-Übungen 1×/Jahr**: mit örtlicher Feuerwehr, Räumungsübung, Kommunikations-Kaskade; jährliche Sachverständigen-Prüfung; monatliches Testen der Rauchmelder und Löschanlagen

## Verwandte Kriterien

- [[PS-01 Physical Security and Environmental Control Requirements]]
- [[PS-06 Protection against Interruptions caused by Power Failures and similar Risks to Supply Facilities]]
- [[PS-07 Surveillance of Operational and Environmental Parameters]]
- [[BCM-04 Business Continuity Tests and Exercises|BCM-04]] *(noch nicht angelegt)*
