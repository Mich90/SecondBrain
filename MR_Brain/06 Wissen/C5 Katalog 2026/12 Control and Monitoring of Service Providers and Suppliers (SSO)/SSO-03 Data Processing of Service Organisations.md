---
title: SSO-03 Data Processing of Service Organisations
project: "[[C5 Katalog 2026]]"
c5-id: SSO-03
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-03
---

# SSO-03 · Data Processing of Service Organisations

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-03 · **Unterkriterien:** 3 (2 Basic · 1 Sharpening)

## Unterkriterien

### SSO-03.01B — Basic

**Kriterium (EN):**

> If the cloud service provider relies on assets from a supplier or on services from subservice organisations for the operation of the cloud service, it does not allow those suppliers or service organisations to access any cloud service customer data, cloud service derived data or account data. Exceptions are made only if the cloud service provider has performed a risk assessment according to OIS-07 on the possibility of cloud service customer data, cloud service derived data or account data being exposed.

**Deutsche Übersetzung:**

Wenn der Cloud-Diensteanbieter für den Betrieb des Cloud-Dienstes auf Assets von einem Lieferanten oder auf Dienste von Subservice Organisations angewiesen ist, gestattet er diesen Lieferanten oder Service-Organisationen keinen Zugriff auf Kundendaten, abgeleitete Daten oder Kontodaten. Ausnahmen werden nur gemacht, wenn der Cloud-Diensteanbieter eine Risikobewertung gemäß [[OIS-07 Risk Management Policy|OIS-07]] hinsichtlich der Möglichkeit einer Offenlegung dieser Datentypen durchgeführt hat.

---

### SSO-03.01AS — Additional (Sharpening)

**Kriterium (EN):**

> If the cloud service provider relies on assets from a supplier or on services from subservice organisations for the operation of the cloud service, it does not allow those suppliers or service organisations to access any cloud service customer data, cloud service derived data or account data. Exceptions are made only if the cloud service provider has performed a risk assessment according to OIS-07 on the possibility of cloud service customer data, cloud service derived data or account data being exposed, and it is ensured that all operations requiring access to those data types are performed or supervised by authorised personnel (cf. HR-01).

**Deutsche Übersetzung:**

Analog zu SSO-03.01B, zusätzlich ist sichergestellt, dass alle Operationen, die Zugriff auf diese Datentypen erfordern, von autorisiertem Personal (vgl. [[HR-01 Verification of Qualification and Trustworthiness|HR-01]]) durchgeführt oder beaufsichtigt werden.

---

### SSO-03.02B — Basic

**Kriterium (EN):**

> The cloud service provider obtains written authorisation of the customer prior to the processing of cloud service customer data, cloud service derived data or account data when engaging service organisations. This can be achieved by authorisation of the customer, per service organisation, or by way of a general pre-authorisation between the cloud service provider and the customer.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter holt vor der Verarbeitung von Kundendaten, abgeleiteten Daten oder Kontodaten die **schriftliche Autorisierung** des Kunden ein, wenn Service-Organisationen eingesetzt werden. Dies kann durch Autorisierung des Kunden pro Service-Organisation oder durch eine allgemeine Vorautorisierung zwischen Cloud-Diensteanbieter und Kunde erreicht werden.

**Zusatzinformation (DE):**

Dieses Unterkriterium gilt nicht für abgeleitete Daten, die keine kunden-eigenen Daten enthalten (z. B. Betriebsmetriken oder technische Telemetrie).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Daten-Zugriffs-Design**: Vendoren erhalten grundsätzlich keinen Zugriff auf Patientendaten; Datenverarbeitung im eigenen Verantwortungsbereich; wo unumgänglich (z. B. spezialisierter Analytics-Service), nur mit expliziter Risikobewertung + Kunden-Zustimmung
- **Supervised Access für Vendoren** (Sharpening): externe Support-Techniker (z. B. Datenbank-Vendor bei Live-Debug) arbeiten via PAM mit Session-Recording und Live-Approval durch eigenes DBA-Team; kein autonomer Zugriff auf Patientendaten
- **AVV-Kette dokumentiert**: Anbieter hat AVV mit Kunde (Krankenhaus), Anbieter hat AVV mit Sub-Auftragsverarbeiter (z. B. AWS als Rechenzentrums-Betreiber); Kunden-Autorisierung in Standard-AVV enthalten mit Sub-Auftragsverarbeiter-Liste
- **Change-Notification bei neuen Vendoren**: bei Aufnahme eines neuen Sub-Auftragsverarbeiters mit Patientendaten-Zugriff 30-90 Tage Vorlauf + Widerspruchsrecht des Kunden (AVV-Standard-Klausel); Update der Sub-Auftragsverarbeiter-Liste im Kunden-Portal

## Verwandte Kriterien

- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
- [[SSO-02 Risk Assessment of Service Organisations]]
- [[SSO-04 Directory of Service Organisations]]
- [[SSO-07 Ensuring Transparency within Service Organisations]]
- [[IAM-07 Access to Cloud Service Customer Data]]
- [[HR-01 Verification of Qualification and Trustworthiness]]
- [[HR-02 Non-Disclosure Agreements]]
- [[OIS-07 Risk Management Policy]]
