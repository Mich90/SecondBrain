---
title: HR-06 Non-disclosure Agreements
project: "[[C5 Katalog 2026]]"
c5-id: HR-06
c5-area: HR
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/hr
aliases:
  - HR-06
---

# HR-06 · Non-disclosure Agreements

> [!info] Kontext
> **Bereich:** Personnel (HR)  
> **Kriterium-ID:** HR-06  
> **Unterkriterien:** 6 (6 Basic)

## Unterkriterien

### HR-06.01B — Basic

**Kriterium (EN):**

> The non-disclosure or confidentiality agreements to be agreed with internal personnel and service organisations of the cloud service provider are based on the requirements identified by the cloud service provider for the protection of confidential information and operational details.

**Deutsche Übersetzung:**

Die mit internem Personal und Service-Organisationen des Cloud-Diensteanbieters zu vereinbarenden Vertraulichkeits- bzw. NDA-Verträge basieren auf den vom Cloud-Diensteanbieter identifizierten Anforderungen zum Schutz vertraulicher Informationen und Betriebsdetails.

**Zusatzinformation (DE):**

Eine Vertraulichkeitsvereinbarung (NDA) ist ein rechtliches Dokument mit von beiden Parteien geforderten Inhalten zum Schutz vertraulicher Informationen. Prozesse und Verfahren rund um den Umgang mit Medien können separat außerhalb des NDA geregelt werden. Ein NDA sollte umfassen:

1. Welche Informationen oder Datentypen vertraulich zu behandeln sind;
2. Den Zeitraum, für den die Vereinbarung gilt;
3. Welche Handlungen bei Beendigung der Vereinbarung erforderlich sind (z. B. Vernichtung oder Rückgabe von Datenträgern);
4. Wie das Eigentum an Informationen geregelt ist;
5. Welche Regeln für Nutzung und Weitergabe vertraulicher Informationen an andere Partner gelten;
6. Die Konsequenzen bei Verletzung der Vereinbarung.

Diese Vereinbarungen sind allgemein in [[HR-02 Employment Terms and Conditions|HR-02]] beschrieben.

---

### HR-06.02B — Basic

**Kriterium (EN):**

> The agreements are to be accepted by service organisations when the contract is agreed.

**Deutsche Übersetzung:**

Die Vereinbarungen sind bei Vertragsschluss durch die Service-Organisationen zu akzeptieren.

**Zusatzinformation (DE):**

Vertraulichkeits- bzw. NDA-Verträge sollten mittels elektronischer Signatur unterzeichnet werden, soweit dies rechtsverbindlich möglich ist.

---

### HR-06.03B — Basic

**Kriterium (EN):**

> The agreements are to be accepted by internal personnel of the cloud service provider before authorisation to access cloud service customer data, cloud service derived data, cloud service provider data and account data is granted.

**Deutsche Übersetzung:**

Die Vereinbarungen sind vom internen Personal des Cloud-Diensteanbieters vor Erteilung der Berechtigung zum Zugriff auf Kundendaten, abgeleitete Daten, Anbieter-Daten und Kontodaten zu akzeptieren.

**Zusatzinformation (DE):**

Vertraulichkeits- bzw. NDA-Verträge sollten mittels elektronischer Signatur unterzeichnet werden, soweit dies rechtsverbindlich möglich ist.

---

### HR-06.04B — Basic

**Kriterium (EN):**

> The requirements are documented and reviewed at regular intervals (at least annually), as well as in case of significant changes to the cloud service. If the review shows that the requirements need to be adapted, the non-disclosure or confidentiality agreements are updated.

**Deutsche Übersetzung:**

Die Anforderungen werden dokumentiert und in regelmäßigen Abständen (mindestens jährlich) sowie bei wesentlichen Änderungen am Cloud-Dienst überprüft. Zeigt die Prüfung Anpassungsbedarf, werden die NDA-Vereinbarungen aktualisiert.

---

### HR-06.05B — Basic

**Kriterium (EN):**

> The cloud service provider informs the internal personnel and service organisations and obtains confirmation of the updated confidentiality or non-disclosure agreement.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter informiert internes Personal und Service-Organisationen über die aktualisierte Vereinbarung und holt eine Bestätigung ein.

**Zusatzinformation (DE):**

Vertraulichkeits- bzw. NDA-Verträge sollten mittels elektronischer Signatur unterzeichnet werden, soweit dies rechtsverbindlich möglich ist.

---

### HR-06.06B — Basic

**Kriterium (EN):**

> In instances where an agreement on the updates cannot be reached, the cloud service provider assesses the resulting risks to information security according to OIS-07.

**Deutsche Übersetzung:**

In Fällen, in denen keine Einigung über die Aktualisierung erzielt werden kann, bewertet der Cloud-Diensteanbieter die daraus resultierenden Risiken für die Informationssicherheit gemäß [[OIS-07 Risk Management Policy|OIS-07]].

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zwei-stufiges NDA-Modell**: Standard-NDA für alle Mitarbeitenden im Onboarding; erweitertes NDA („Confidentiality Deep Access") für Rollen mit produktivem Zugriff auf Patientendaten — mit erweiterten Klauseln zu § 203 StGB und Nachvertragspflichten
- **E-Signature via DocuSign/Adobe Sign**: rechtsverbindlich für alle NDA-Unterzeichnungen inkl. Prüfnachweis (Zeitstempel, IP, Identifikation via SSO); Aufbewahrung 10 Jahre in DMS
- **Jährlicher NDA-Review** im Q1: HR + Legal + CISO prüfen Aktualität gegen neue Regulatorik (z. B. NIS-2, KHZG-Updates); bei Änderung Re-Signature-Kampagne über LMS mit Deadline und Reminder
- **Ablehnungs-Prozess**: Falls Mitarbeitende Update ablehnen (z. B. wegen Interpretation der Klauseln) → Ticket an Legal + HR + CISO → Risk Assessment nach OIS-07 → mögliche Konsequenzen dokumentieren (z. B. Rollenanpassung, Zugriffsentzug)

## Verwandte Kriterien

- [[HR-02 Employment Terms and Conditions]]
- [[HR-05 Responsibilities in the Event of Termination or Change of Employment]]
- [[OIS-07 Risk Management Policy]]
- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations|SSO-01]] *(noch nicht angelegt)*
