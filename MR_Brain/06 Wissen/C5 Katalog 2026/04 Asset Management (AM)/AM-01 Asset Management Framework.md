---
title: AM-01 Asset Management Framework
project: "[[C5 Katalog 2026]]"
c5-id: AM-01
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-01
---

# AM-01 · Asset Management Framework

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-01 · **Unterkriterien:** 3 (1 Basic · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation (Definition „Assets")
> Assets im Sinne dieses Bereichs sind Objekte, die für die Informationssicherheit des Cloud-Dienstes bei Erstellung, Verarbeitung, Speicherung, Übertragung, Löschung oder Zerstörung von Informationen im Verantwortungsbereich des Cloud-Diensteanbieters erforderlich sind (z. B. Firewalls, Load Balancer, Web-, App- und Datenbankserver).
>
> Diese bestehen aus **Hardware-Objekten** (u. a. physische und virtuelle Infrastruktur-Ressourcen wie Server, Storage, Netzwerkkomponenten; ggf. Endgeräte, sofern deren Verlust die Informationssicherheit gefährden könnte, z. B. mobile Geräte als Auth-Token) und **Software-Objekten** (u. a. Hypervisoren, Container, Betriebssysteme, Datenbanken, Microservices, APIs).
>
> Der Asset-Lifecycle umfasst je nach Asset-Typ: 1. Beschaffung 2. Inbetriebnahme 3. Wartung 4. Außerbetriebnahme 5. Entsorgung.

## Unterkriterien

### AM-01.01B — Basic

**Kriterium (EN):**

> An asset management framework is documented, communicated and provided according to SP-01, in which the following aspects are described:
>
> 1. Identification of assets which are used to provide the cloud service in the production environment;
> 2. Definition of a scheme for identifying protection needs based on information processed, stored or transmitted on the asset;
> 3. Definition of asset types, considering at a minimum the differentiation of hardware and software objects;
> 4. Definition of asset lifecycles based on the asset type; and
> 5. Definition of procedures for inventory of hardware and software assets.

**Deutsche Übersetzung:**

Ein Asset-Management-Framework ist gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt. Es beschreibt folgende Aspekte:

1. Identifikation der Assets, die zur produktiven Bereitstellung des Cloud-Dienstes genutzt werden;
2. Definition eines Schemas zur Ermittlung des Schutzbedarfs basierend auf den auf dem Asset verarbeiteten, gespeicherten oder übertragenen Informationen;
3. Definition von Asset-Typen, mindestens mit Unterscheidung zwischen Hardware- und Software-Objekten;
4. Definition von Asset-Lifecycles je Asset-Typ;
5. Definition von Verfahren zur Inventarisierung von Hardware- und Software-Assets.

---

### AM-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> The information collected about assets is considered in logging and monitoring applications to:
>
> 1. Identify the impact on cloud services and functions in case of events that could lead to a breach of protection objectives; and
> 2. Support information provided to affected cloud service customers in accordance with contractual agreements.

**Deutsche Übersetzung:**

Die zu den Assets gesammelten Informationen werden in Logging- und Monitoring-Anwendungen berücksichtigt, um:

1. Bei Ereignissen, die zu einer Verletzung von Schutzzielen führen könnten, die Auswirkung auf Cloud-Dienste und -Funktionen zu identifizieren;
2. Informationen an betroffene Cloud-Dienstkunden gemäß vertraglicher Vereinbarungen zu unterstützen.

---

### AM-01.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider assures that the inventory of assets is up-to-date by implementing monitoring measures to the process that is maintaining it.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt die Aktualität des Asset-Inventars sicher, indem er Monitoring-Maßnahmen für den Pflegeprozess implementiert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zentrales Asset-Management-Framework** dokumentiert (z. B. in Confluence/DMS): Schutzbedarfs-Schema mit Klassen „normal / hoch / sehr hoch" — Patientendaten sind automatisch „sehr hoch" (Art. 9 DSGVO); Lifecycle-Prozesse pro Asset-Typ (Hardware, VMs, Container, Apps)
- **CMDB als Single Point of Truth** (ServiceNow, GLPI, i-doit): Assets automatisch discovered (via Agent oder API); Verknüpfung zu Zuständigkeit (Asset Owner), Kunden-Instanz, DSGVO-Verarbeitungsverzeichnis
- **SIEM-Integration** der CMDB: bei Security-Events wird Impact automatisch berechnet („Ausfall Server X → betroffen: Krankenhäuser A, B, C; Datentyp: Patientendaten") — beschleunigt Kunden-Notifikation
- **Freshness-Monitoring**: automatischer Vergleich Discovery vs. CMDB-Einträge, Alarme bei Diskrepanz > 5 %; Quartalsweise CMDB-Audit dokumentiert

## Verwandte Kriterien

- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
- [[AM-02 Asset Inventory]]
- [[AM-03 Hardware Asset Inventory]]
- [[AM-04 Software Asset Inventory]]
- [[OIS-07 Risk Management Policy]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures|OPS-10]] *(noch nicht angelegt)*
