---
title: SSO-04 Directory of Service Organisations
project: "[[C5 Katalog 2026]]"
c5-id: SSO-04
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-04
---

# SSO-04 · Directory of Service Organisations

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-04 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### SSO-04.01B — Basic

**Kriterium (EN):**

> The cloud service provider maintains a directory for controlling and monitoring the service organisations that contribute services to the delivery of the cloud service. The following information is maintained in the directory:
>
> 1. Company name;
> 2. Address of the head office;
> 3. Applicable legal jurisdiction;
> 4. Locations where cloud service customer data, cloud service derived data, cloud service provider data and account data is processed and stored;
> 5. Responsible contact group/person at the service organisation;
> 6. Responsible contact group/person at the cloud service provider;
> 7. Description of the service;
> 8. Classification based on the risk assessment;
> 9. Beginning of service usage; and
> 10. Proof of compliance with contractually agreed requirements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter pflegt ein Verzeichnis zur Steuerung und Überwachung der Service-Organisationen, die zur Erbringung des Cloud-Dienstes beitragen. Folgende Informationen werden im Verzeichnis geführt:

1. Firmenname;
2. Adresse des Hauptsitzes;
3. Anwendbare Rechtsordnung;
4. Standorte, an denen Kunden-, abgeleitete, Anbieter- und Kontodaten verarbeitet und gespeichert werden;
5. Verantwortliche Kontaktgruppe/-person bei der Service-Organisation;
6. Verantwortliche Kontaktgruppe/-person beim Cloud-Diensteanbieter;
7. Beschreibung des Dienstes;
8. Klassifizierung basierend auf der Risikobewertung;
9. Beginn der Dienst-Nutzung;
10. Nachweis der Einhaltung vertraglich vereinbarter Anforderungen.

**Zusatzinformation (DE):**

Zur Erfüllung des Basiskriteriums ist es nicht notwendig, ein einziges zentrales Register zu führen.

---

### SSO-04.02B — Basic

**Kriterium (EN):**

> The inventory is reviewed at least annually for completeness, accuracy and validity of the information.

**Deutsche Übersetzung:**

Das Inventar wird **mindestens jährlich** auf Vollständigkeit, Genauigkeit und Gültigkeit der Informationen überprüft.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Vendor-Register in GRC-Tool** (z. B. LogicGate, ServiceNow GRC, Verinice): strukturierte Datenerfassung mit allen 10 Pflichtfeldern; Dashboard zeigt Vendor-Klassen und deren aktuelle Compliance-Status
- **Data-Residency-Klarheit**: pro Vendor genau dokumentiert, in welchen Rechtsordnungen Daten verarbeitet werden (z. B. AWS eu-central-1 = Frankfurt/Deutschland, Support aus Dublin/Irland); wichtig für DSGVO-Nachweis und Transfer-Impact-Assessments
- **Owner-Konzept**: pro Vendor ein Business-Owner (fachliche Verantwortung) + Technical Owner (technische Integration) + Risk Owner (Vendor-Risk); alle namentlich benannt und mit Deputy; Handover bei Rollenwechsel dokumentiert
- **Jährlicher Review**: kompletter Walkthrough aller Vendoren; „ist der Vendor noch aktiv genutzt?", „stimmen die Kontaktdaten?", „wurde das aktuelle Testat eingereicht?"; Abweichungen ins Ticket-System; abgekündigte Vendoren als „inactive" archiviert (nicht gelöscht, Nachvollziehbarkeit)

## Verwandte Kriterien

- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
- [[SSO-02 Risk Assessment of Service Organisations]]
- [[SSO-05 Monitoring of Compliance with Requirements]]
- [[SSO-07 Ensuring Transparency within Service Organisations]]
- [[AM-01 Asset Register]]
- [[GC-01 Information on jurisdiction and locations of data processing and storage|GC-01 · Jurisdiktion und Standorte]]
- [[GC-04 Information on subservice organisations|GC-04 · Subservice Organisations]]
