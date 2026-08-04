---
title: AM-02 Asset Inventory
project: "[[C5 Katalog 2026]]"
c5-id: AM-02
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-02
---

# AM-02 · Asset Inventory

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-02 · **Unterkriterien:** 5 (5 Basic)

> [!note] Gemeinsame Zusatzinformation
> Cloud-Diensteanbieter, die ihre Cloud-Infrastruktur als virtuelle Infrastruktur von Service-Organisationen beziehen (z. B. VMs oder Container), können Tools der Service-Organisation zur Inventarisierung nutzen, sofern der Cloud-Diensteanbieter diese basierend auf seinem Asset-Management-Framework als geeignet ansieht.
>
> In der Praxis kann die Umsetzung des Asset-Inventars je nach Anzahl, Größe und Komplexität der Cloud-Dienste stark variieren.

## Unterkriterien

### AM-02.01B — Basic

**Kriterium (EN):**

> The cloud service provider maintains an asset inventory of hardware and software assets in accordance with the asset management framework (cf. AM-01).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter pflegt ein Asset-Inventar von Hardware- und Software-Assets gemäß dem Asset-Management-Framework (vgl. [[AM-01 Asset Management Framework|AM-01]]).

---

### AM-02.02B — Basic

**Kriterium (EN):**

> The inventory is performed automatically and/or by the people or teams responsible for the assets to ensure complete, accurate, valid and consistent inventory throughout the asset lifecycle.

**Deutsche Übersetzung:**

Die Inventarisierung erfolgt automatisch und/oder durch die für die Assets verantwortlichen Personen oder Teams, um über den gesamten Asset-Lifecycle ein vollständiges, korrektes, valides und konsistentes Inventar sicherzustellen.

---

### AM-02.03B — Basic

**Kriterium (EN):**

> Assets are recorded with the information needed to apply the risk management procedure (cf. OIS-07), including the measures taken to manage these risks throughout the asset lifecycle.

**Deutsche Übersetzung:**

Assets werden mit den Informationen erfasst, die für die Anwendung des Risikomanagement-Verfahrens (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) erforderlich sind — einschließlich der über den Asset-Lifecycle ergriffenen Maßnahmen zur Steuerung dieser Risiken.

---

### AM-02.04B — Basic

**Kriterium (EN):**

> Changes to the recorded information of an asset are logged.

**Deutsche Übersetzung:**

Änderungen an den erfassten Informationen eines Assets werden protokolliert.

---

### AM-02.05B — Basic

**Kriterium (EN):**

> The cloud service provider maintains lists of all users under its responsibility who have access to a specific resource, along with their respective access rights.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter pflegt Listen aller Nutzer in seinem Verantwortungsbereich, die Zugriff auf eine bestimmte Ressource haben, samt der zugehörigen Zugriffsrechte.

**Zusatzinformation (DE):**

Diese Listen können, müssen aber nicht, durch das Inventarsystem gemäß den Kriterien AM-02, AM-03 und AM-04 bereitgestellt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Automated Discovery + manuelle Ergänzung**: Discovery-Agents auf allen Systemen (z. B. Osquery, Lansweeper); manuelle Pflege für Assets ohne Agent (z. B. Netzwerkgeräte via SNMP-Sweep); Delta-Report wöchentlich
- **Change-Log der CMDB**: alle Änderungen protokolliert (wer, wann, was, warum) — 7 Jahre Aufbewahrung; wichtig für forensische Analyse bei Vorfällen mit Patientendaten
- **Zugriffs-Matrix pro Asset** aus IAM-Sync: Wer hat welche Rolle auf welchem Asset? Automatischer Report bei Anomalien (z. B. Nutzer mit Admin-Rechten auf Prod-DB ohne Approval); besonders relevant für Patientendaten-Assets
- **Risk-Attribute pflegen**: pro Asset Schutzbedarf, letzte Risk Assessment, aktuelle Mitigation; Verknüpfung mit Risikoregister im ISMS

## Verwandte Kriterien

- [[AM-01 Asset Management Framework]]
- [[AM-03 Hardware Asset Inventory]]
- [[AM-04 Software Asset Inventory]]
- [[OIS-07 Risk Management Policy]]
- [[IAM-03 Regular Review of Access Rights|IAM-03]] *(noch nicht angelegt)*
