---
title: SIM-04 Documentation and Reporting of Security Incidents
project: "[[C5 Katalog 2026]]"
c5-id: SIM-04
c5-area: SIM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sim
aliases:
  - SIM-04
---

# SIM-04 · Documentation and Reporting of Security Incidents

> [!info] Kontext
> **Bereich:** Security Incident Management (SIM) · **Kriterium-ID:** SIM-04 · **Unterkriterien:** 4 (2 Basic · 2 Complementing)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie Benachrichtigungen des Cloud-Diensteanbieters über sie betreffende Sicherheitsvorfälle und deren Auflösung erhalten und diese zeitnah an die für die Bearbeitung zuständige Stelle weitergeleitet werden.

## Unterkriterien

### SIM-04.01B — Basic

**Kriterium (EN):**

> After a security incident has been processed, the solution is documented in accordance with the contractual agreements and the documentation is sent to the affected customers for final acknowledgement or, if applicable, as confirmation.

**Deutsche Übersetzung:**

Nach Bearbeitung eines Sicherheitsvorfalls wird die Lösung gemäß den vertraglichen Vereinbarungen dokumentiert und die Dokumentation an die betroffenen Kunden zur finalen Bestätigung oder — sofern anwendbar — als Bestätigung übermittelt.

---

### SIM-04.02B — Basic

**Kriterium (EN):**

> Information on security incidents or confirmed security breaches is made available to all affected customers.

**Deutsche Übersetzung:**

Informationen zu Sicherheitsvorfällen oder bestätigten **Security Breaches** werden allen betroffenen Kunden zur Verfügung gestellt.

**Zusatzinformation (DE):**

Security Breaches im Sinne dieses Kriteriums sind Sicherheitsvorfälle, die durch unautorisierten Zugriff und Kompromittierung von Kundendaten oder Service-Delivery infolge Verletzungen von Richtlinien und Verfahren oder anwendbaren rechtlichen und regulatorischen Anforderungen verursacht werden (vgl. [[HR-04 Sanctions in Case of Violations of Policies and Instructions|HR-04]]).

---

### SIM-04.01AC — Additional (Complementing)

**Kriterium (EN):**

> The customer can either actively approve solutions or the solution is automatically approved after a certain period.

**Deutsche Übersetzung:**

Der Kunde kann Lösungen entweder aktiv genehmigen, oder die Lösung wird nach einem bestimmten Zeitraum automatisch genehmigt.

---

### SIM-04.02AC — Additional (Complementing)

**Kriterium (EN):**

> The contract between the cloud service provider and the cloud service customer regulates which data is made available to the cloud service customer for his own analysis in the event of security incidents.

**Deutsche Übersetzung:**

Der Vertrag zwischen Cloud-Diensteanbieter und Cloud-Dienstkunde regelt, welche Daten dem Cloud-Dienstkunden zur eigenen Analyse im Falle von Sicherheitsvorfällen zur Verfügung gestellt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Post-Incident-Report-Template**: strukturiertes Format (Kurzbeschreibung, Zeitleiste, Root Cause, betroffene Assets/Daten, Behebung, präventive Maßnahmen, DSGVO-Relevanz); Freigabe durch CISO + Legal vor Versand; Versand über gesicherten Kanal (SFTP, verschlüsselte E-Mail)
- **Kunden-Portal für Incident-Historie**: alle Kunden-relevanten Vorfälle einsehbar im dedizierten Trust-Center-Bereich; Filter nach eigenen Systemen; Downloadmöglichkeit für Compliance-Audits (Krankenhaus muss ggü. Landesdatenschutzbehörde nachweisen)
- **Automatische Genehmigung nach Frist** (Complementing): Post-Incident-Report wird 14 Tage zur Kunden-Prüfung bereitgestellt; ohne Rückmeldung gilt als „acknowledged"; explizite Zustimmung möglich via One-Click im Portal; wichtig für Skalierung mit vielen Krankenhaus-Kunden
- **Kunden-Analyse-Daten** (Complementing): AVV regelt bereitgestellte Daten (Logs, IoCs, technische Analyse); dokumentierter Umfang je Vorfall-Klasse; Sub-Auftragsverarbeiter-Beziehungen im Vertrag; Kunden können eigene forensische Analysen mit übermittelten Daten durchführen

## Verwandte Kriterien

- [[SIM-01 Policy for Security Incident Management]]
- [[SIM-03 Processing of Security Incidents]]
- [[SIM-05 Duty of the Personnel to Report Security Incidents to a Central Body]]
- [[OPS-20 Managing Incidents - Communication and Involvement of Cloud Service Customers]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[HR-04 Sanctions in Case of Violations of Policies and Instructions]]
- [[COM-04 Information Requests from Government Agencies|COM-04]] *(noch nicht angelegt)*
