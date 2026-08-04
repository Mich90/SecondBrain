---
title: PS-04 Physical Site Access Control
project: "[[C5 Katalog 2026]]"
c5-id: PS-04
c5-area: PS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ps
aliases:
  - PS-04
---

# PS-04 · Physical Site Access Control

> [!info] Kontext
> **Bereich:** Physical Security (PS) · **Kriterium-ID:** PS-04 · **Unterkriterien:** 3 (3 Basic)

## Unterkriterien

### PS-04.01B — Basic

**Kriterium (EN):**

> Preventive and detective physical access controls in premises and buildings related to the cloud service provided are implemented. They are in accordance with the cloud service provider's security requirements (cf. PS-01) and based on the principles defined in IAM-01 to prevent unauthorised access. They are documented and communicated in a policy or framework in accordance with SP-01 and include the following aspects:
>
> 1. Specified procedure for the granting and modifying of user accounts and access rights (cf. IAM-02) based on the 'least-privilege-principle' and the 'need-to-know-principle';
> 2. Revocation of access authorisations if they have not been used for a period of two months. Exceptions are only made for well-founded individual cases and follow a defined exception process according to SP-03;
> 3. Authentication with at least one factor for access to any non-public area;
> 4. Multi-factor authentication for access to areas hosting system components that process cloud service customer data;
> 5. Existence and nature of access logging that enables the cloud service provider, in the sense of an effectiveness audit, to check whether only defined personnel have entered the premises and buildings related to the cloud service provided;
> 6. Physical access control exceptions applicable in case of emergency, including an analysis procedure following every use of these exceptions; and
> 7. For visitors and external personnel, measures that ensure identification and tracking of every individual such that their activities are traceable and - in case of activities that infringe information security - stoppable in an appropriate reaction time. These measures are appropriate and proportional to the sensitivity of the zone the visitors or external personnel are in. The appropriate reaction time frame is determined based on a risk assessment (cf. OIS-07).

**Deutsche Übersetzung:**

Präventive und detektive physische Zugangskontrollen in Räumen und Gebäuden im Zusammenhang mit dem Cloud-Dienst sind implementiert. Sie entsprechen den Sicherheitsanforderungen des Cloud-Diensteanbieters (vgl. [[PS-01 Physical Security and Environmental Control Requirements|PS-01]]) und basieren auf den in [[IAM-01 Policy for Identities and Access Rights|IAM-01]] definierten Prinzipien, um unautorisierten Zugriff zu verhindern. Sie sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert und kommuniziert und umfassen folgende Aspekte:

1. Festgelegtes Verfahren zur Vergabe und Änderung von Benutzerkonten und Zugriffsrechten (vgl. [[IAM-02 Granting and Change of Access Authorisations|IAM-02]]) basierend auf „least privilege" und „need to know";
2. Widerruf von Zugriffsberechtigungen, wenn diese über einen Zeitraum von zwei Monaten nicht genutzt wurden; Ausnahmen nur für begründete Einzelfälle nach definiertem Ausnahmeprozess gemäß [[SP-03 Exceptions from Existing Policies and Procedures|SP-03]];
3. Authentifizierung mit mindestens einem Faktor für den Zugang zu allen nicht-öffentlichen Bereichen;
4. **Multi-Faktor-Authentifizierung** für den Zugang zu Bereichen mit Systemkomponenten, die Kundendaten verarbeiten;
5. Bestehen und Art der Zugangsprotokollierung, die es dem Cloud-Diensteanbieter im Sinne einer Wirksamkeitsprüfung ermöglicht zu überprüfen, ob nur definierte Personen die Räume und Gebäude betreten haben;
6. Ausnahmen der physischen Zugangskontrolle im Notfall, einschließlich eines Analyseverfahrens nach jeder Nutzung dieser Ausnahmen;
7. Für Besucher und externes Personal Maßnahmen zur Identifikation und Nachverfolgung jeder Person, sodass deren Aktivitäten nachvollziehbar und — bei informationssicherheitsverletzenden Aktivitäten — in angemessener Reaktionszeit stoppbar sind. Diese Maßnahmen sind angemessen und proportional zur Sensitivität der Zone. Die angemessene Reaktionszeit wird basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) festgelegt.

**Zusatzinformation (DE):**

Zur Implementierung von Zugriffskontrollen nach dem Need-to-know-Prinzip kann ein Zonen-Framework eingesetzt werden, bei dem jeder Bereich vor Ort separate Zugriffsberechtigungen hat. Beispiele für Zonen:

1. **Grüne Zone**: Öffentlicher Bereich ohne cloud-service-relevante Ressourcen;
2. **Gelbe Zone**: Interner Bereich mit unterstützenden Mitteln (Entwicklung, Administration, Überwachung);
3. **Rote Zone**: Sensitiver Bereich für Produktivsysteme (z. B. Serverräume).

Beispiele für begründete Ausnahmen der Zugriffs-Sperrung nach zwei Monaten Inaktivität: Personal in bestimmten Rollen (z. B. Management, Supervisor), das nur gelegentlich, aber notwendig Zugang benötigt. Begründungen sollten dokumentiert und bei der Prüfung kritisch bewertet werden.

---

### PS-04.02B — Basic

**Kriterium (EN):**

> The cloud service provider displays a warning at the entrance of each applicable non-public area regarding its limits and access conditions.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter bringt am Eingang jedes betreffenden nicht-öffentlichen Bereichs einen Hinweis auf dessen Grenzen und Zugangsbedingungen an.

---

### PS-04.03B — Basic

**Kriterium (EN):**

> Physical access control to the site is managed by an electronic access control system that supports authentication, authorisation, and logging of entry and exit events.

**Deutsche Übersetzung:**

Die physische Zugangskontrolle zum Standort wird durch ein elektronisches Zugangskontrollsystem gesteuert, das Authentifizierung, Autorisierung sowie Protokollierung von Ein- und Ausgangsereignissen unterstützt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Elektronisches Zutritts-Management** (z. B. Dormakaba, Kaba exos, Salto): jeder Bereich mit eigener Berechtigung; Karten-basiert für „gelbe Zone", **Karte + Biometrie oder PIN** für „rote Zone" mit Patientendaten-Servern; Aktivitätslog mit Aufbewahrung 12 Monate
- **Automatische Deprovisionierung**: Zugangssystem synchronisiert mit HR/IAM-System; bei Kündigung Sperrung binnen 15 Minuten; nach 60 Tagen ohne Zutritt automatischer Widerruf mit E-Mail-Bestätigung an Manager
- **Besucher-Management**: elektronisches Anmelde-System, Vor-Ort-Ausweis mit Foto, Begleitpflicht durch fest angestellten Mitarbeiter in sensitiven Bereichen; Fluchtwege-Trainings für Besucher; Logging jeder Bereichs-Grenzüberschreitung
- **Notfall-Öffnung dokumentiert**: bei Feuer/Notfall automatische Türentriegelung; jede Auslösung führt zu Ticket-Nachbearbeitung binnen 24h (wer, warum, Videoauswertung); Fehlauslösungen als Sicherheitsvorfall behandeln

## Verwandte Kriterien

- [[PS-01 Physical Security and Environmental Control Requirements]]
- [[PS-03 Perimeter Protection]]
- [[IAM-01 Policy for Identities and Access Rights|IAM-01]] *(noch nicht angelegt)*
- [[IAM-02 Granting and Change of Access Authorisations|IAM-02]] *(noch nicht angelegt)*
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
- [[SP-03 Exceptions from Existing Policies and Procedures]]
