---
title: DEV-05 Design Documentation for Security Features
project: "[[C5 Katalog 2026]]"
c5-id: DEV-05
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-05
---

# DEV-05 · Design Documentation for Security Features

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-05 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### DEV-05.01B — Basic

**Kriterium (EN):**

> Design documentation for security features is based on a security analysis of the adequacy and planned effectiveness of the features. A specification of expected inputs, outputs and possible errors is included in the documentation.

**Deutsche Übersetzung:**

Die Design-Dokumentation für Sicherheitsfunktionen basiert auf einer Sicherheitsanalyse der Angemessenheit und geplanten Wirksamkeit der Funktionen. Eine Spezifikation der erwarteten Eingaben, Ausgaben und möglichen Fehler ist in der Dokumentation enthalten.

**Zusatzinformation (DE):**

Sicherheitsfunktionen sind typischerweise Funktionen, die Vertraulichkeit (z. B. durch Integration von Kryptographie), Integrität (z. B. durch Einführung von Prüfsummen oder Validierung von Eingabedaten), Verfügbarkeit (z. B. durch Redundanz oder Resilienz), Authentifizierung (z. B. durch MFA oder sicheres Session-Management) und Autorisierung (z. B. durch verschiedene Rollen) kontrollieren. Sie ergeben sich typischerweise aus Threat Modelling und Risikobewertung. Idealerweise sind Sicherheitsfunktionen integraler Bestandteil des Softwareentwicklungsprozesses und keine nachträglichen Zusätze.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Security Design Documents** pro Feature: Threat-Model (STRIDE), Sicherheitsanforderungen, gewählte Controls, Restrisiken, Kompensations-Maßnahmen; formales Review durch Security Architect vor Implementierung
- **API-Spezifikation** mit Security-Vertrag: erwartete Eingaben (Format, Validierung, Größenlimits), Ausgaben (was wird zurückgegeben unter welchen Bedingungen), Fehlermodi (welcher HTTP-Status, welche Error-Response — ohne interne Details preiszugeben)
- **Input-Validation-Spezifikation**: für Patientendaten-Endpoints strikte Whitelist-Validierung (Versichertennummer 10 Ziffern, ICD-10-Codes gegen Referenzliste, Datumsformate ISO 8601); Fehler klar dokumentiert
- **Beispiel-Kryptographie-Design**: Verschlüsselungs-Feature dokumentiert mit Algorithmus (AES-256-GCM), Key-Source (KMS), IV-Generation (CSPRNG), AAD-Nutzung; Fehler-Modi (Decryption Failure = generischer Fehler, kein Auth-Tag-Detail)

## Verwandte Kriterien

- [[DEV-01 Policies for the Development/Procurement of System Components]]
- [[DEV-06 Risk Assessment, Categorisation and Prioritisation of Changes]]
- [[DEV-07 Testing Changes]]
- [[OIS-07 Risk Management Policy]]
- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
