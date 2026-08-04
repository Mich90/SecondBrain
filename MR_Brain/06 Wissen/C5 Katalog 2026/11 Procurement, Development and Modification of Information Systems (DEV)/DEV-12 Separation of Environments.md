---
title: DEV-12 Separation of Environments
project: "[[C5 Katalog 2026]]"
c5-id: DEV-12
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-12
---

# DEV-12 · Separation of Environments

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-12 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### DEV-12.01B — Basic

**Kriterium (EN):**

> Production environments are physically or logically separated from test or development environments to prevent unauthorised access to cloud service customer data, the spread of malware, or unintended changes to system components. Cloud service customer data contained in the production environments is not used in test or development environments, unless explicitly approved by cloud service customers, in order not to compromise their confidentiality.

**Deutsche Übersetzung:**

Produktivumgebungen sind physisch oder logisch von Test- oder Entwicklungsumgebungen getrennt, um unautorisierten Zugriff auf Kundendaten, die Verbreitung von Malware oder unbeabsichtigte Änderungen an Systemkomponenten zu verhindern. In den Produktivumgebungen enthaltene Kundendaten werden nicht in Test- oder Entwicklungsumgebungen genutzt — außer bei ausdrücklicher Genehmigung durch die Cloud-Dienstkunden —, um deren Vertraulichkeit nicht zu beeinträchtigen.

---

### DEV-12.02B — Basic

**Kriterium (EN):**

> Unless unavoidable, the cloud service provider does not reuse the cryptographic secret and private keys and other secrets used in production environments in other, non-production environments. Any unavoidable reuse of the cryptographic secret and private keys between production and non-production environments is documented and justified in accordance with the process for handling exceptions (cf. SP-03) and the risk management procedures (cf. OIS-07).

**Deutsche Übersetzung:**

Sofern nicht unvermeidbar, verwendet der Cloud-Diensteanbieter kryptographische Geheim- und private Schlüssel sowie andere Secrets, die in Produktivumgebungen genutzt werden, nicht in anderen, nicht-produktiven Umgebungen. Jede unvermeidbare Wiederverwendung kryptographischer Geheim- und privater Schlüssel zwischen Produktions- und Nicht-Produktionsumgebungen wird gemäß dem Prozess zur Ausnahmebehandlung (vgl. [[SP-03 Exceptions from Existing Policies and Procedures|SP-03]]) und den Risikomanagement-Verfahren (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) dokumentiert und begründet.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Dev/Test/Staging/Prod in getrennten VPCs/Cloud-Accounts**: nicht nur logisch, sondern auch organisatorisch (verschiedene AWS-Konten pro Umgebung); separate IAM-Rollen; keine Netzwerk-Verbindung zwischen Dev und Prod ohne dokumentierte Ausnahme
- **Synthetic-Data-Only**: Test-Datensätze werden synthetisch generiert (FHIR-Server mit Fake-Patient-Data); keine Real-Patienten-Daten in Dev/Test; Ausnahme nur mit Kunden-Approval + Anonymisierung + Zeitlimit
- **Separate Krypto-Umgebungen**: KMS für Prod nutzt eigene HSM-Keys; Dev/Test nutzen separate Test-KMS mit anderen Master-Keys; Zertifikate sind pro Umgebung eigene CAs; keine Wiederverwendung
- **Ausnahmen dokumentiert**: gelegentlich unvermeidbar (z. B. Root-CA-Signaturen für interne Zertifikate); dokumentierte Genehmigung von CISO + Legal; kompensierende Maßnahmen (engmaschiges Monitoring, kürzere Rotation, restriktivere Access-Kontrolle)

## Verwandte Kriterien

- [[DEV-07 Testing Changes]]
- [[DEV-11 Protection of Development and Test Environments]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-09 Secure Key Provisioning]]
- [[SP-03 Exceptions from Existing Policies and Procedures]]
- [[OIS-07 Risk Management Policy]]
