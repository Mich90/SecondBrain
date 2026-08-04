---
title: INQ-02 Informing Cloud Service Customers about Investigation Requests
project: "[[C5 Katalog 2026]]"
c5-id: INQ-02
c5-area: INQ
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/inq
aliases:
  - INQ-02
---

# INQ-02 · Informing Cloud Service Customers about Investigation Requests

> [!info] Kontext
> **Bereich:** Dealing with Investigation Requests from Government Agencies (INQ) · **Kriterium-ID:** INQ-02 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### INQ-02.01B — Basic

**Kriterium (EN):**

> The cloud service provider informs the affected cloud service customer(s) without undue delay, unless the applicable legal basis, on which the government agency's request is based, prohibits this or there are clear indications of illegal actions in connection with the use of the cloud service.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter informiert die betroffenen Cloud-Dienstkunden **unverzüglich**, sofern die anwendbare Rechtsgrundlage, auf der die Anfrage der Behörde basiert, dies nicht verbietet oder es keine klaren Hinweise auf illegale Handlungen im Zusammenhang mit der Nutzung des Cloud-Dienstes gibt.

**Zusatzinformation (DE):**

Dies berührt nicht andere rechtliche oder regulatorische Anforderungen, die eine frühere Information der Cloud-Dienstkunden erfordern.

**Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass solche Benachrichtigungen empfangen und aus rechtlicher Sicht gemäß ihren eigenen Vorgaben und Möglichkeiten bewertet werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Kunden-Notification-Prozess**: dedizierter Legal-Kontakt beim Kunden (Krankenhausleitung, DSB, Justiziariat) in AVV festgelegt; Notification-Template mit Anfrage-Zusammenfassung (soweit rechtlich möglich), Rechtsgrundlage, geplante Response, Zeitrahmen für Kunden-Reaktion; Versand über sicheren Kanal (verschlüsselte E-Mail, Kunden-Portal)
- **Non-Disclosure-Prüfung durch Legal**: prüft explizit, ob die Rechtsgrundlage eine Benachrichtigung verbietet (z. B. Gag Order in USA); ohne Verbot → immer Benachrichtigung; mit Verbot → Notification nach Ablauf des Verbots, ggf. mit Rechtsmittel gegen das Verbot
- **Warrant Canary im Trust Center**: falls Notification kategorisch verboten, kann ein „Warrant Canary" (regelmäßige Bestätigung, dass keine geheime Anfrage vorliegt) transparente Kommunikation ermöglichen; Krankenhaus-Kunden können dies für ihre eigene Compliance-Bewertung nutzen
- **Jährlicher Transparency Report**: aggregierte Statistik über Behörden-Anfragen (Anzahl, Kategorien, Ergebnisse); statistisch aufbereitet ohne konkrete Fall-Details; publiziert im Trust Center für alle Kunden; wichtiges Vertrauens-Signal für kritische Krankenhaus-Kunden

## Verwandte Kriterien

- [[INQ-01 Legal Assessment of Investigation Requests]]
- [[INQ-03 Limiting Access to or Disclosure of Data in Investigation Requests]]
- [[INQ-04 Communication of Technical Procedures for Data Disclosure in Investigation Requests]]
- [[SSO-07 Ensuring Transparency within Service Organisations]]
- [[COM-01 Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements]]
