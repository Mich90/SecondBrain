---
title: IAM-03 Risk-Based Procedure for Locking and Withdrawal of Identities
project: "[[C5 Katalog 2026]]"
c5-id: IAM-03
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-03
---

# IAM-03 · Risk-Based Procedure for Locking and Withdrawal of Identities

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-03 · **Unterkriterien:** 8 (4 Basic · 1 Sharpening · 3 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium gilt für Identitäten, die sich auf einzelne, mehrere oder nicht-menschliche Entitäten beziehen.

## Unterkriterien

### IAM-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider has a risk-based procedure in place for managing identities (cf. IAM-01), taking into account the types of data accessible via the identities of the internal and external personnel.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat ein risikobasiertes Verfahren zum Management von Identitäten (vgl. [[IAM-01 Policy for Identities and Access Rights|IAM-01]]) etabliert, das die über die Identitäten des internen und externen Personals zugänglichen Datentypen berücksichtigt.

---

### IAM-03.02B — Basic

**Kriterium (EN):**

> As part of this procedure, specific parameters for automatically locking and withdrawing access due to inactivity or indications of brute force attacks are defined, with exceptions for the identities whose use is restriced to emergency recovery and similar scenarios.

**Deutsche Übersetzung:**

Als Teil dieses Verfahrens werden spezifische Parameter für die automatische Sperrung und den Entzug von Zugriffen aufgrund von Inaktivität oder Hinweisen auf Brute-Force-Angriffe definiert — mit Ausnahmen für Identitäten, deren Nutzung auf Emergency Recovery und ähnliche Szenarien beschränkt ist.

**Zusatzinformation (DE):**

Sperren können aus längerer Abwesenheit des Personals resultieren (z. B. Krankheit, Elternzeit, Sabbatical). Mehrfach fehlgeschlagene Login-Versuche können Hinweise auf Brute-Force-Angriffe sein.

---

### IAM-03.03B — Basic

**Kriterium (EN):**

> The cloud service provider documents and implements a process for monitoring stolen and compromised credentials, which also includes disabling any identity for which an issue is identified. This process is implemented on all identities under the responsibility of the cloud service provider that have privileged access rights.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter dokumentiert und implementiert einen Prozess zur Überwachung gestohlener und kompromittierter Zugangsdaten, der auch die Deaktivierung jeder Identität mit identifiziertem Problem umfasst. Dieser Prozess wird auf **alle Identitäten mit privilegierten Zugriffsrechten** im Verantwortungsbereich des Cloud-Diensteanbieters angewandt.

---

### IAM-03.03AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider documents and implements a process for monitoring stolen and compromised credentials, which also includes disabling any identity for which an issue is identified. This process is implemented on all identities under the responsibility of the cloud service provider.

**Deutsche Übersetzung:**

Der Prozess wird auf **alle Identitäten** im Verantwortungsbereich des Cloud-Diensteanbieters angewandt (nicht nur privilegierte).

---

### IAM-03.04B — Basic

**Kriterium (EN):**

> The aforementioned process includes an exception mechanism to be applied if all identities needed to manage the situation are potentially compromised.

**Deutsche Übersetzung:**

Der genannte Prozess umfasst einen Ausnahmemechanismus für den Fall, dass alle zur Bewältigung der Situation benötigten Identitäten potenziell kompromittiert sind.

**Zusatzinformation (DE):**

Dieser Ausnahmemechanismus sollte Teil des Business-Continuity- und Emergency-Management-Systems sein (vgl. [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*).

---

### IAM-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> The context of authentication attempts is monitored and suspicious events are, as relevant, flagged to authorised persons.

**Deutsche Übersetzung:**

Der Kontext von Authentifizierungsversuchen wird überwacht und verdächtige Ereignisse werden — soweit relevant — an autorisierte Personen gemeldet.

**Zusatzinformation (DE):**

Der Kontext eines Authentifizierungsversuchs kann u. a. IP-Adressen, Datum und Zeit oder das verwendete Gerät umfassen.

---

### IAM-03.02AC — Additional (Complementing)

**Kriterium (EN):**

> The effectiveness of the procedures for locking and withdrawing identities is validated.

**Deutsche Übersetzung:**

Die Wirksamkeit der Verfahren zur Sperrung und zum Widerruf von Identitäten wird validiert.

---

### IAM-03.03AC — Additional (Complementing)

**Kriterium (EN):**

> Timely and appropriate remediation measures address any deviations identified during validation.

**Deutsche Übersetzung:**

Zeitnahe und angemessene Behebungsmaßnahmen adressieren im Rahmen der Validierung festgestellte Abweichungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Auto-Lock bei Inaktivität**: normale Nutzer nach 60 Tagen Inaktivität gesperrt (mit Vorwarnung nach 45 Tagen); privilegierte Nutzer nach 30 Tagen; automatische Ausnahmen für dokumentierte Break-Glass-Accounts
- **Brute-Force-Schutz**: nach 5 fehlgeschlagenen Logins innerhalb 15 Minuten Account-Sperrung für 30 Minuten + Alarm ans SIEM; wiederholte Sperrungen (> 3 in 24 h) triggern automatisches Investigation-Ticket
- **Compromised-Credentials-Monitoring**: Integration mit HaveIBeenPwned API / Enterprise-Feeds (Recorded Future, Flashpoint); tägliche Prüfung aller Personal-E-Mails gegen Breach-Datenbanken; automatischer Password-Reset-Zwang bei Match
- **Context-aware Auth**: Impossible-Travel-Detection (Login DE + 30 min später Login BR = Alarm), Unusual-Location, Unusual-Device; Adaptive MFA-Zwang oder Session-Termination je nach Risiko-Score

## Verwandte Kriterien

- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-04 Withdrawal or Adjustment of Access Rights as the Task Area Changes]]
- [[IAM-06 Privileged Access Rights]]
- [[IAM-08 Authentication Mechanisms]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
