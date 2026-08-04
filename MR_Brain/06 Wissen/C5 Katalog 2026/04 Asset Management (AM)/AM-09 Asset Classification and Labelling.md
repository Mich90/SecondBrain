---
title: AM-09 Asset Classification and Labelling
project: "[[C5 Katalog 2026]]"
c5-id: AM-09
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-09
---

# AM-09 · Asset Classification and Labelling

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-09 · **Unterkriterien:** 8 (4 Basic · 4 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Wenn der Cloud-Diensteanbieter Assets nicht spezifisch kategorisiert, dürfen alle Assets so behandelt werden, als hätten sie den höchsten Schutzbedarf.

## Unterkriterien

### AM-09.01B — Basic

**Kriterium (EN):**

> Assets are classified and, if possible, labelled. Classification and labelling of an asset reflect the protection needs of the category of cloud service customer data, cloud service derived data, cloud service provider data and account data it processes, stores, or transmits.

**Deutsche Übersetzung:**

Assets werden klassifiziert und — soweit möglich — gekennzeichnet. Klassifizierung und Kennzeichnung eines Assets spiegeln den Schutzbedarf der Kategorie von Kundendaten, abgeleiteten Daten, Anbieter-Daten und Kontodaten wider, die das Asset verarbeitet, speichert oder überträgt.

---

### AM-09.02B — Basic

**Kriterium (EN):**

> Classification levels are reviewed at least annually and in case of significant changes to the cloud service. Based on the review, the classification levels are updated where appropriate.

**Deutsche Übersetzung:**

Klassifizierungsstufen werden mindestens jährlich und bei wesentlichen Änderungen am Cloud-Dienst überprüft. Basierend auf der Prüfung werden die Klassifizierungsstufen bei Bedarf aktualisiert.

**Zusatzinformation (DE):**

Wird die Prüfung durch wesentliche Änderungen am Cloud-Dienst ausgelöst, sind nur die von den Änderungen betroffenen Klassifizierungsstufen in die Prüfung einzubeziehen.

---

### AM-09.03B — Basic

**Kriterium (EN):**

> The protection need is determined by the individuals or groups responsible for the assets of the cloud service provider according to a uniform and documented classification schema.

**Deutsche Übersetzung:**

Der Schutzbedarf wird durch die für die Assets verantwortlichen Personen oder Gruppen des Cloud-Diensteanbieters gemäß einem einheitlichen und dokumentierten Klassifizierungsschema festgelegt.

---

### AM-09.04B — Basic

**Kriterium (EN):**

> The classification schema provides levels of protection for the confidentiality, integrity, availability, and authenticity protection objectives. These protection objectives are aligned with delivery and recovery objectives set out in business and disaster recovery plans.

**Deutsche Übersetzung:**

Das Klassifizierungsschema sieht Schutzstufen für die Schutzziele **Vertraulichkeit, Integrität, Verfügbarkeit und Authentizität** vor. Diese Schutzziele sind mit den in Business- und Disaster-Recovery-Plänen festgelegten Liefer- und Wiederherstellungszielen abgestimmt.

---

### AM-09.01AC — Additional (Complementing)

**Kriterium (EN):**

> The unique identification of physical devices serves as an additional method for connection authentication.

**Deutsche Übersetzung:**

Die eindeutige Identifikation physischer Geräte dient als zusätzliche Methode der Verbindungsauthentifizierung.

**Zusatzinformation (DE):**

Zur eindeutigen Identifikation aller physischen Assets kann der Cloud-Diensteanbieter u. a. folgende Praktiken umsetzen:

1. Nutzung einer zentralen Device-Management-Plattform zur Überwachung und Steuerung aller Geräte;
2. Zuweisung eindeutiger Identifikatoren (MAC-Adressen, Seriennummern) zu allen Geräten;
3. Nutzung automatisierter Mechanismen zur Registrierung sich verbindender Geräte.

---

### AM-09.02AC — Additional (Complementing)

**Kriterium (EN):**

> Device identification is integrated into the asset classification and labeling processes.

**Deutsche Übersetzung:**

Die Geräteidentifikation ist in die Prozesse für Asset-Klassifizierung und -Kennzeichnung integriert.

**Zusatzinformation (DE):**

Die Integration der Geräteidentifikation stellt sicher, dass jedes Asset eindeutig erkannt und entsprechend seinem Schutzbedarf klassifiziert wird — besonders wichtig für mobile Endgeräte, die sensible Daten enthalten oder als Zugangspunkte zu Cloud-Diensten dienen können. Ordnungsgemäße Kennzeichnung unterstützt Nachvollziehbarkeit, Risikobewertung und Durchsetzung von Sicherheitskontrollen über den gesamten Asset-Lifecycle.

---

### AM-09.03AC — Additional (Complementing)

**Kriterium (EN):**

> Logging and monitoring applications take the asset protection needs into account in order to inform the responsible stakeholder of events that could lead to a violation of the protection goals, so that the necessary measures are taken with an appropriate priority.

**Deutsche Übersetzung:**

Logging- und Monitoring-Anwendungen berücksichtigen den Schutzbedarf der Assets, um die verantwortlichen Stakeholder über Ereignisse zu informieren, die zu einer Verletzung der Schutzziele führen könnten — damit die erforderlichen Maßnahmen mit angemessener Priorität ergriffen werden.

---

### AM-09.04AC — Additional (Complementing)

**Kriterium (EN):**

> Actions for events on assets with a higher level of protection take precedence over events on assets with a lower protection need.

**Deutsche Übersetzung:**

Maßnahmen zu Ereignissen auf Assets mit höherem Schutzbedarf haben Vorrang vor Ereignissen auf Assets mit niedrigerem Schutzbedarf.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Klassifizierungs-Schema** mit 4 Stufen (öffentlich / intern / vertraulich / streng vertraulich) über C-I-A-A-Achsen; Patientendaten automatisch „streng vertraulich" auf Vertraulichkeit UND „hoch" auf Integrität (Gefahr fehlerhafter medizinischer Entscheidungen)
- **Automatisches Labelling per Tag**: Asset-Tags in CMDB (`data-classification=phi`, `cia-c=very-high`, `regulatory=gdpr-art9+kritis`); tags werden via IaC (Terraform) auf Infra-Ressourcen (AWS/Azure/GCP) durchgesetzt
- **Priorisierte Alerts im SIEM**: Alarme auf `data-classification=phi`-Assets erhalten P1-Priorität mit sofortiger Eskalation an SOC + Data Protection Officer; Alarme auf Dev-Systeme laufen als P3
- **Device-Fingerprint als 2. Faktor**: bei Zugriff auf Patientendaten-Systeme wird Device-ID (via Zertifikat) zusätzlich zum Nutzer-Login geprüft (Zero-Trust Device Posture)

## Verwandte Kriterien

- [[AM-01 Asset Management Framework]]
- [[AM-02 Asset Inventory]]
- [[AM-05 Policy for the Proper and Secure Use of Assets]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures|OPS-10]] *(noch nicht angelegt)*
- [[BCM-02 Business Impact Analysis|BCM-02]] *(noch nicht angelegt)*
