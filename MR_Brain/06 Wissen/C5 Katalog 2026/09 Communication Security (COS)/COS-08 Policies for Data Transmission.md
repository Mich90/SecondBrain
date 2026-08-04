---
title: COS-08 Policies for Data Transmission
project: "[[C5 Katalog 2026]]"
c5-id: COS-08
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-08
---

# COS-08 · Policies for Data Transmission

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-08 · **Unterkriterien:** 2 (2 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass die an den Cloud-Dienst übermittelten Daten gemäß ihrem Schutzbedarf vor Manipulation, Kopieren, Modifikation, Umleitung oder Löschung geschützt sind.

## Unterkriterien

### COS-08.01B — Basic

**Kriterium (EN):**

> Policies and procedures with technical and organisational safeguards in order to protect the transmission of cloud service customer data, cloud service derived data, cloud service provider data and account data against unauthorised interception, manipulation, copying, modification, redirection, destruction or malware intrusion are documented, communicated and provided according to SP-01. The policies and procedures establish a reference to the asset classification and labelling (cf. AM-09) and cryptographic mechanisms (cf. CRY-01).

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit technischen und organisatorischen Schutzmaßnahmen zum Schutz der Übertragung von Kundendaten, abgeleiteten Daten, Anbieter-Daten und Kontodaten vor unautorisiertem Abfangen, Manipulation, Kopieren, Modifikation, Umleitung, Zerstörung oder Malware-Eintrag sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt. Die Richtlinien und Verfahren stellen einen Bezug zur Asset-Klassifizierung und -Kennzeichnung (vgl. [[AM-09 Asset Classification and Labelling|AM-09]]) sowie zu kryptographischen Mechanismen (vgl. [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]]) her.

**Zusatzinformation (DE):**

Eine Schutzmaßnahme gegen unautorisiertes Abfangen, Manipulation, Kopieren, Modifikation, Umleitung oder Zerstörung von Daten während der Übertragung ist z. B. die Nutzung von Transportverschlüsselung gemäß [[CRY-04 Protection of Data for Transmission (Transport Protection)|CRY-04]].

---

### COS-08.02B — Basic

**Kriterium (EN):**

> Technical safeguards outlined in the documented policies and procedures to protect the transmission of data are implemented and reviewed regularly, as well as in case of significant changes to the cloud service.

**Deutsche Übersetzung:**

Die in den dokumentierten Richtlinien und Verfahren beschriebenen technischen Schutzmaßnahmen zum Schutz der Datenübertragung werden implementiert und regelmäßig sowie bei wesentlichen Änderungen am Cloud-Dienst überprüft.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Data-in-Transit-Policy** klassifiziert nach AM-09-Ergebnissen: Öffentlich → TLS 1.2 ausreichend, Intern → TLS 1.3 + mTLS, Vertraulich (Patientendaten) → TLS 1.3 + mTLS + Client-Cert + PFS, Streng vertraulich (§ 203 StGB) → zusätzlich Ende-zu-Ende-Verschlüsselung ab Client
- **Anti-Manipulation & Anti-Malware**: HMAC oder digitale Signaturen für Integritätsschutz von übertragenen Files (z. B. DICOM); ClamAV/Sandbox-Scan für alle eingehenden Dateien (Radiologie-Bilder, Dokumente); Quarantäne bei Verdacht
- **Anti-Interception**: strikte TLS-Konfiguration (SSL Labs Grade A+); DNSSEC + DoH/DoT für DNS; HSTS Preload; Certificate-Pinning für Mobile-Apps; Bug-Bounty für gefundene Interception-Möglichkeiten
- **Jährlicher Data-Transmission-Review**: alle Datenflüsse geprüft (Data Flow Diagramme aktuell?); Schutzmaßnahmen adäquat pro Klassifizierung?; Cipher-Suite-Audit via testssl.sh; Verbesserungsmaßnahmen im Backlog

## Verwandte Kriterien

- [[COS-01 Technical Safeguards]]
- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-04 Cross-Network Access]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-04 Protection of Data for Transmission (Transport Protection)]]
- [[AM-09 Asset Classification and Labelling]]
- [[OPS-04 Protection Against Malware - Policies and Procedures]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
