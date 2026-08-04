---
title: AM-05 Policy for the Proper and Secure Use of Assets
project: "[[C5 Katalog 2026]]"
c5-id: AM-05
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-05
---

# AM-05 · Policy for the Proper and Secure Use of Assets

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-05 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### AM-05.01B — Basic

**Kriterium (EN):**

> Policies and procedures for the proper and secure use of assets are documented, communicated and provided in accordance with SP-01 and address the following aspects of the asset lifecycle as applicable to the asset:
>
> 1. Approval procedures for acquisition, commissioning, maintenance, decommissioning, and disposal by authorised personnel or system components;
> 2. Classification and labelling based on the protection need of the cloud service customer data, cloud service derived data, cloud service provider data and account data as well as measures for the level of protection identified;
> 3. Secure configuration of mechanisms for error handling, logging, encryption, authentication and authorisation;
> 4. Requirements for versions of software and images as well as application of patches;
> 5. Handling of software for which support and security patches are not available anymore;
> 6. Restriction of software installations or use of services;
> 7. Protection against malware;
> 8. Remote deactivation, deletion or blocking;
> 9. Physical delivery and transport;
> 10. Dealing with incidents and vulnerabilities;
> 11. Deletion of cloud service customer data, cloud service derived data, cloud service provider data and account data; and
> 12. Secure handling and usage of removable media, e.g. by specifying which devices are permitted to interact with removable media and what data can be stored on them or by banning the reuse of removable media.

**Deutsche Übersetzung:**

Richtlinien und Verfahren für die ordnungsgemäße und sichere Nutzung von Assets sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und adressieren folgende Aspekte des Asset-Lifecycles, soweit auf das Asset anwendbar:

1. Genehmigungsverfahren für Beschaffung, Inbetriebnahme, Wartung, Außerbetriebnahme und Entsorgung durch autorisiertes Personal oder Systemkomponenten;
2. Klassifizierung und Kennzeichnung basierend auf dem Schutzbedarf von Kundendaten, abgeleiteten Daten, Anbieter-Daten und Kontodaten sowie Maßnahmen entsprechend dem identifizierten Schutzniveau;
3. Sichere Konfiguration der Mechanismen für Fehlerbehandlung, Logging, Verschlüsselung, Authentifizierung und Autorisierung;
4. Anforderungen an Software- und Image-Versionen sowie Patch-Anwendung;
5. Umgang mit Software, für die Support und Sicherheitspatches nicht mehr verfügbar sind;
6. Beschränkung von Software-Installationen oder Nutzung von Diensten;
7. Schutz vor Schadsoftware (Malware);
8. Remote-Deaktivierung, -Löschung oder -Blockierung;
9. Physische Auslieferung und Transport;
10. Umgang mit Vorfällen und Schwachstellen;
11. Löschung von Kundendaten, abgeleiteten Daten, Anbieter-Daten und Kontodaten;
12. Sicherer Umgang mit und Nutzung von Wechseldatenträgern (z. B. Festlegung, welche Geräte mit Wechseldatenträgern interagieren dürfen und welche Daten darauf gespeichert werden dürfen; Verbot der Wiederverwendung von Wechseldatenträgern).

---

### AM-05.02B — Basic

**Kriterium (EN):**

> The applicability of these aspects is defined based on the cloud service provider's asset management framework (cf. AM-01).

**Deutsche Übersetzung:**

Die Anwendbarkeit dieser Aspekte wird auf Basis des Asset-Management-Frameworks des Cloud-Diensteanbieters (vgl. [[AM-01 Asset Management Framework|AM-01]]) festgelegt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Acceptable Use Policy (AUP)** für alle Asset-Klassen: Rollenspezifische Regeln (Entwickler, Ops, Support), Erlaubte/verbotene Software (Whitelist via App-Locker/MDM); jährlich reviewed
- **Klassifizierungs-Labels** technisch durchsetzen: Data Classification via Tools (Microsoft Purview, DLP); Kennzeichnung auf VM-Ebene („contains-phi = true") triggert strengere Netzsegmentierung, Backup und Monitoring
- **EoL-Software-Handling**: automatisiertes Ticket beim Erreichen des EoL-Datums; Freigabeprozess mit Risikoakzeptanz durch CISO; kompensierende Kontrollen (WAF, Network-Isolation) dokumentieren
- **Removable-Media-Verbot**: USB-Ports per MDM deaktiviert für alle Prod-Systeme; für Ausnahmen dokumentierter Prozess + Data Loss Prevention (DLP) mit Verschlüsselung + Logging

## Verwandte Kriterien

- [[AM-01 Asset Management Framework]]
- [[AM-06 Commissioning of Hardware]]
- [[AM-07 Decommissioning of Hardware]]
- [[AM-09 Asset Classification and Labelling]]
- [[AM-12 Removable Media and Endpoint Devices]]
- [[OPS-04 Protection Against Malware - Policies and Procedures|OPS-04]] *(noch nicht angelegt)*
- [[OPS-27 Managing Vulnerabilities - Patch Management|OPS-27]] *(noch nicht angelegt)*
