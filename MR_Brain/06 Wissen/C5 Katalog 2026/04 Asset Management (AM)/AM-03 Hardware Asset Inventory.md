---
title: AM-03 Hardware Asset Inventory
project: "[[C5 Katalog 2026]]"
c5-id: AM-03
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-03
---

# AM-03 · Hardware Asset Inventory

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-03 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### AM-03.01B — Basic

**Kriterium (EN):**

> The hardware asset inventory maintained by the cloud service provider (cf. AM-02) includes information for each entry that:
>
> 1. Enables the identification of the hardware asset;
> 2. Provides visibility into the lifecycle of the hardware asset; and
> 3. Enables the cloud service provider to control the hardware asset, perform a risk assessment and protect its information security.

**Deutsche Übersetzung:**

Das vom Cloud-Diensteanbieter gepflegte Hardware-Asset-Inventar (vgl. [[AM-02 Asset Inventory|AM-02]]) enthält für jeden Eintrag Informationen, die:

1. Die Identifikation des Hardware-Assets ermöglichen;
2. Sichtbarkeit über den Lifecycle des Hardware-Assets bieten;
3. Dem Cloud-Diensteanbieter erlauben, das Hardware-Asset zu steuern, eine Risikobewertung durchzuführen und dessen Informationssicherheit zu schützen.

**Zusatzinformation (DE):**

Dieses Basiskriterium kann (muss aber nicht) durch die Aufnahme folgender Details pro Eintrag erfüllt werden:

1. Identifikationsdetails (Name, IP-Adresse, MAC-Adresse etc.);
2. Funktion des Assets;
3. Modell des Assets;
4. Standort des Assets;
5. Eigentümer des Assets (Asset Owner);
6. Anforderungen an die Informationssicherheit für das Asset.

Ein „Asset Owner" ist eine Person oder Rolle mit Verantwortung und Rechenschaftspflicht für Management und Schutz eines Assets — ohne dass daraus rechtliches Eigentum abgeleitet wird.

Wenn Cloud-Dienstkunden mit dem Cloud-Dienst VMs oder Container betreiben, inventarisiert der Cloud-Diensteanbieter die Container und dokumentiert deren Lifecycle (vgl. [[OPS-34 Container Management - Policies and Procedures|OPS-34]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Standard-Felder pro Hardware-Asset** in CMDB: Hostname, IPs (v4+v6), MAC, Seriennummer, Hersteller, Modell, Standort (RZ + Rack + Höheneinheit), Funktion, Asset Owner (Rolle), Schutzbedarf, Zugewiesenes Datenzentrum, Zertifikats-Status
- **Lifecycle-Status je Asset**: „on order → received → configured → in-production → maintenance → decommissioned"; Transitions triggern Prozesse (z. B. Decomm-Transition → Datenlöschungsprotokoll)
- **Zuordnung zu Sicherheits-Anforderungen**: pro Asset dokumentiert welche Controls anwendbar sind (Hardening, Patching-SLA, Backup-Klasse) — abgeleitet vom Schutzbedarf (Patientendaten-Assets = strengster Standard)
- **Zeitstempel Warranty & EoL**: Wartungsvertrag-Ablauf und Herstellervorgabe End-of-Life 12 Monate vor Ablauf als Alarm, damit Beschaffung rechtzeitig starten kann

## Verwandte Kriterien

- [[AM-01 Asset Management Framework]]
- [[AM-02 Asset Inventory]]
- [[AM-04 Software Asset Inventory]]
- [[AM-06 Commissioning of Hardware]]
- [[AM-07 Decommissioning of Hardware]]
- [[OPS-34 Container Management - Policies and Procedures|OPS-34]] *(noch nicht angelegt)*
