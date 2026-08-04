---
title: INQ-01 Legal Assessment of Investigation Requests
project: "[[C5 Katalog 2026]]"
c5-id: INQ-01
c5-area: INQ
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/inq
aliases:
  - INQ-01
---

# INQ-01 · Legal Assessment of Investigation Requests

> [!info] Kontext
> **Bereich:** Dealing with Investigation Requests from Government Agencies (INQ) · **Kriterium-ID:** INQ-01 · **Unterkriterien:** 2 (2 Basic)

> [!note] Gemeinsame Zusatzinformation
> Zu Nachweiszwecken bilden alle vollständig bearbeiteten Anfragen im spezifizierten Zeitraum die Population für Tests der operativen Wirksamkeit der Kontrollen dieser Domäne. Alle Anfragen sind in die Population einzubeziehen — unabhängig davon, ob sie zur Offenlegung von Kundendaten oder abgeleiteten Daten geführt haben.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass Art und Umfang von Ermittlungsanfragen von Behörden und die damit verbundene Offenlegung ihrer eigenen Daten in ihrem eigenen Risikomanagement behandelt werden und dass die Nutzung des Cloud-Dienstes nur begonnen oder fortgesetzt wird, wenn dies verantwortbar ist.

## Unterkriterien

### INQ-01.01B — Basic

**Kriterium (EN):**

> Investigation requests from government agencies for cloud service customer data, cloud service derived data and account data are subject to a documented legal assessment by subject matter experts of the cloud service provider. The assessment determines whether the government agency has an applicable and legally valid legal basis and what further steps need to be taken for the given request.

**Deutsche Übersetzung:**

**Ermittlungsanfragen von Behörden** zu Kundendaten, abgeleiteten Daten und Kontodaten unterliegen einer dokumentierten **rechtlichen Bewertung** durch Fachexperten des Cloud-Diensteanbieters. Die Bewertung stellt fest, ob die Behörde eine anwendbare und rechtlich gültige Rechtsgrundlage hat und welche weiteren Schritte für die jeweilige Anfrage erforderlich sind.

---

### INQ-01.02B — Basic

**Kriterium (EN):**

> Access to or disclosure of cloud service customer data, cloud service derived data or account data in response to government investigation requests is only permitted if the cloud service provider has performed a legal assessment. This assessment has to confirm that there is an applicable and valid legal basis and that the request must be granted according to this basis.

**Deutsche Übersetzung:**

Zugriff auf oder Offenlegung von Kundendaten, abgeleiteten Daten oder Kontodaten in Reaktion auf behördliche Ermittlungsanfragen ist nur gestattet, wenn der Cloud-Diensteanbieter eine rechtliche Bewertung durchgeführt hat. Diese Bewertung muss bestätigen, dass eine anwendbare und gültige Rechtsgrundlage besteht und dass der Anfrage gemäß dieser Grundlage stattgegeben werden muss.

**Zusatzinformation (DE):**

Die Offenlegung von Kundendaten an Behörden kann die Übergabe von Verschlüsselungsschlüsseln umfassen. Die Offenlegung von Schlüsseln sollte ebenfalls gemäß den INQ-Kriterien geprüft werden. Insbesondere ist im Sinne von [[INQ-03 Limiting Access to or Disclosure of Data in Investigation Requests|INQ-03]] darauf zu achten, dass keine anderen Kundendaten durch die Übergabe eines Schlüssels kompromittiert werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Behörden-Anfragen-Register**: alle Anfragen (Ermittlungsbehörden, Nachrichtendienste, Steuerbehörden, ausländische Behörden) mit Zeitstempel, Behörde, Rechtsgrundlage, Ergebnis in eigenem Register; getrennt vom operativen Ticket-System; jährlicher Transparency Report
- **Legal-First-Prozess**: interne Rechtsabteilung (oder externe Kanzlei) als First Responder; Prüfung von Rechtsgrundlage, Zuständigkeit der Behörde, Verhältnismäßigkeit, Umfang; besondere Sorgfalt bei Anfragen aus Drittstaaten (Schrems-II-relevant)
- **Healthcare-Spezifika**: § 203 StGB-Bewertung (Berufsgeheimnis der Ärzte gilt auch für Cloud-Anbieter im Kontext von Krankenhausdaten), § 22 BDSG für besondere Kategorien personenbezogener Daten, ggf. Beschlagnahmeverbot nach § 97 StPO (bei ärztlicher Schweigepflicht)
- **Widerspruchs- und Beschwerde-Bereitschaft**: bei fehlender oder unklarer Rechtsgrundlage aktiver Widerspruch; Legal-Kontakt für Anfrage-Präzisierung; ggf. gerichtliche Klärung; Doku aller Widersprüche und Ergebnisse für Transparency Report

## Verwandte Kriterien

- [[INQ-02 Informing Cloud Service Customers about Investigation Requests]]
- [[INQ-03 Limiting Access to or Disclosure of Data in Investigation Requests]]
- [[INQ-04 Communication of Technical Procedures for Data Disclosure in Investigation Requests]]
- [[HR-05 Confidentiality Agreements]]
- [[SIM-03 Processing of Security Incidents]]
- [[GC-03 Information on legal jurisdiction of the cloud service provider|GC-03]] *(noch nicht angelegt)*
- [[COM-01 Identification of Applicable Legal, Regulatory, Self-imposed or Contractual Requirements]]
