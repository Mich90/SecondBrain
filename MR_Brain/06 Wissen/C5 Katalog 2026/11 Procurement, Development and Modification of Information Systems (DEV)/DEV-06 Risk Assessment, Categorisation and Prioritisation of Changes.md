---
title: DEV-06 Risk Assessment, Categorisation and Prioritisation of Changes
project: "[[C5 Katalog 2026]]"
c5-id: DEV-06
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-06
---

# DEV-06 · Risk Assessment, Categorisation and Prioritisation of Changes

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-06 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

## Unterkriterien

### DEV-06.01B — Basic

**Kriterium (EN):**

> In accordance with the applicable policies, changes are subject to a risk assessment evaluating its potential impact on the overall cloud service in scope. In addition, when multiple changes are implemented concurrently, their mutual interactions and cumulative effects are also subject to the risk assessment in order to identify potential conflicts or dependencies. All identified risks and dependencies are categorised and prioritised accordingly.

**Deutsche Übersetzung:**

Gemäß den anwendbaren Richtlinien unterliegen Änderungen einer Risikobewertung, die deren potenzielle Auswirkung auf den gesamten Cloud-Dienst im Scope bewertet. Werden mehrere Änderungen gleichzeitig umgesetzt, sind auch deren wechselseitige Interaktionen und kumulierte Effekte Gegenstand der Risikobewertung, um potenzielle Konflikte oder Abhängigkeiten zu identifizieren. Alle identifizierten Risiken und Abhängigkeiten werden entsprechend kategorisiert und priorisiert.

---

### DEV-06.02B — Basic

**Kriterium (EN):**

> If the risk associated to a planned change is high, appropriate mitigation measures are taken before deploying the change in the cloud service's production environment.

**Deutsche Übersetzung:**

Ist das mit einer geplanten Änderung verbundene Risiko hoch, werden vor Deployment in die Produktivumgebung angemessene Minderungsmaßnahmen ergriffen.

---

### DEV-06.01AC — Additional (Complementing)

**Kriterium (EN):**

> In accordance with the contractual agreements, meaningful information about the occasion, time, duration, type and scope of the change is submitted to authorised bodies of the cloud service customer so that they can carry out their own risk assessment before the change is made available in the production environment. Regardless of the contractual agreements, this is done for changes that have the highest risk category based on their risk assessment. This does not include changes without an effect on the service usage or security posture of the service.

**Deutsche Übersetzung:**

Gemäß den vertraglichen Vereinbarungen werden aussagekräftige Informationen über Anlass, Zeit, Dauer, Art und Umfang der Änderung an autorisierte Stellen des Cloud-Dienstkunden übermittelt, sodass diese ihre eigene Risikobewertung durchführen können, bevor die Änderung in der Produktivumgebung verfügbar gemacht wird. Unabhängig von den vertraglichen Vereinbarungen erfolgt dies für Änderungen, die basierend auf ihrer Risikobewertung die höchste Risikokategorie aufweisen. Dies umfasst nicht Änderungen ohne Auswirkung auf die Dienst-Nutzung oder Security Posture.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Impact-Analyse pro Change**: automatisierte Prüfung auf Blast Radius (welche Services betroffen? welche Kunden? Datenverarbeitung von Patientendaten involviert?); Ergebnis fließt in Change-Ticket
- **Concurrent-Change-Detection**: Deployment-Kalender in CI/CD-Tool; automatische Warnung bei überlappenden Changes auf demselben Service; Change Freeze bei Krankenhaus-relevanten Wartungsfenstern
- **High-Risk-Mitigation**: Blue/Green-Deployment mit Traffic-Shifting statt Big Bang; Canary-Releases (5% → 25% → 100%); automatischer Rollback bei Health-Check-Verschlechterung; Feature Flags für schrittweise Aktivierung
- **Customer-Notification** (Complementing) für High-Risk-Changes: 30-90 Tage vorab mit Change-Beschreibung, Impact, Empfohlene Kunden-Aktionen, Fallback-Optionen; Kunde kann eigenes Risk Assessment für seine KIS-Integration durchführen

## Verwandte Kriterien

- [[DEV-03 Policies for Changes to System Components]]
- [[DEV-05 Design Documentation for Security Features]]
- [[DEV-07 Testing Changes]]
- [[DEV-10 Approvals for Provision in the Production Environment]]
- [[OIS-07 Risk Management Policy]]
- [[OPS-24 Involvement of Cloud Service Customers in the Event of Incidents]]
- [[CRY-02 Cryptographic Change Management]]
