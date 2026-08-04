---
title: AM-08 Commitment to Proper Use, Safe and Secure Handling and Return of Assets
project: "[[C5 Katalog 2026]]"
c5-id: AM-08
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-08
---

# AM-08 · Commitment to Proper Use, Safe and Secure Handling and Return of Assets

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-08 · **Unterkriterien:** 3 (3 Basic)

> [!note] Gemeinsame Zusatzinformation
> Das Kriterium betrifft im Wesentlichen mobile Geräte (z. B. Notebooks, Tablets, Smartphones, FIDO2-Security-Keys), insbesondere wenn darauf vertrauliche Informationen gespeichert sind, die bei unautorisiertem Zugriff genutzt werden könnten, um privilegierten Zugriff auf den Cloud-Dienst zu erlangen (z. B. wenn sie als Security-Token zur Authentifizierung dienen).

## Unterkriterien

### AM-08.01B — Basic

**Kriterium (EN):**

> The cloud service provider determines in a risk assessment (cf. OIS-07) if loss of or unauthorised access to assets could compromise the information security of the cloud service. If so, the cloud service provider's internal and external personnel is provably committed to the policies and procedures for proper use and safe and secure handling of assets before they can be used.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter bestimmt im Rahmen einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]), ob Verlust oder unautorisierter Zugriff auf Assets die Informationssicherheit des Cloud-Dienstes gefährden könnte. Ist dies der Fall, verpflichten sich internes und externes Personal des Cloud-Diensteanbieters nachweislich zu den Richtlinien und Verfahren für die ordnungsgemäße und sichere Nutzung von Assets, bevor diese genutzt werden können.

---

### AM-08.02B — Basic

**Kriterium (EN):**

> Any assets handed over are provably returned upon termination of employment.

**Deutsche Übersetzung:**

Übergebene Assets werden bei Beendigung des Beschäftigungsverhältnisses nachweislich zurückgegeben.

---

### AM-08.03B — Basic

**Kriterium (EN):**

> If assets cannot be returned prior to or on the day of the termination, the cloud service provider removes the access rights of the personnel no later than the date of termination

**Deutsche Übersetzung:**

Falls Assets nicht vor oder am Tag der Beendigung zurückgegeben werden können, entzieht der Cloud-Diensteanbieter die Zugriffsrechte des Personals spätestens am Tag der Beendigung.

**Zusatzinformation (DE):**

Der Entzug der Zugriffsrechte gekündigter Mitarbeitender kann z. B. durch Deaktivierung ihrer Identität auf dem Gerät umgesetzt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Asset-Übergabe mit Verpflichtungserklärung**: bei Ausgabe von Laptop / Yubikey / Smartphone unterzeichnet Mitarbeitender im Personal-System (z. B. Personio) elektronisch die Nutzungsvereinbarung; Verknüpfung mit Asset-ID
- **Kündigungs-Workflow**: Kündigungsdatum im HR-System triggert automatisch: (1) IAM-Deaktivierung um 00:01 des Endtermins, (2) Ticket an IT für Asset-Rückgabe, (3) MDM-Kommando „Retire" bei fehlender Rückgabe (Remote Wipe des Firmenprofils)
- **Rückgabe-Protokoll**: Checkliste mit allen ausgegebenen Assets (Laptop, MFA-Tokens, Ausweis), Zustand, Rückgabedatum; Unterschrift IT + Mitarbeitender; Aufbewahrung 3 Jahre
- **Remote Wipe als Backup**: Sollte Rückgabe unmöglich sein (z. B. Auslandsentsendung), sofortiger Remote Wipe via MDM UND Sperrung aller Zertifikate/MFA-Tokens; dokumentierter Prozess für Ausnahmefälle

## Verwandte Kriterien

- [[HR-05 Responsibilities in the Event of Termination or Change of Employment]]
- [[AM-05 Policy for the Proper and Secure Use of Assets]]
- [[AM-12 Removable Media and Endpoint Devices]]
- [[IAM-04 Withdrawal of Access Authorisations for Internal and External Personnel|IAM-04]] *(noch nicht angelegt)*
- [[OIS-07 Risk Management Policy]]
