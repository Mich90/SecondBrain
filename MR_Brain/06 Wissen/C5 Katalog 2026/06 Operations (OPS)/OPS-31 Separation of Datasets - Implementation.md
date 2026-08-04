---
title: OPS-31 Separation of Datasets - Implementation
project: "[[C5 Katalog 2026]]"
c5-id: OPS-31
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-31
---

# OPS-31 · Separation of Datasets — Implementation

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-31 · **Unterkriterien:** 3 (3 Basic)

## Unterkriterien

### OPS-31.01B — Basic

**Kriterium (EN):**

> The cloud service provider designs, implements and maintains measures and procedures against threats to the separation of data sets according to the policies and procedures of OPS-30. The measures address prevention against, detection of and reaction to any incidents infringing the separation.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter konzipiert, implementiert und pflegt Maßnahmen und Verfahren gegen Bedrohungen der Trennung von Datensätzen gemäß den Richtlinien und Verfahren aus [[OPS-30 Separation of Datasets - Policies and Procedures|OPS-30]]. Die Maßnahmen adressieren Prävention, Erkennung und Reaktion auf Incidents, die die Trennung verletzen.

---

### OPS-31.02B — Basic

**Kriterium (EN):**

> Cloud service customer data stored and processed on shared virtual and physical resources is securely and strictly separated according to a documented approach based on OIS-07 risk assessment and following policies on cryptography (cf. CRY-01) to ensure the confidentiality and integrity of this data.

**Deutsche Übersetzung:**

Auf gemeinsam genutzten virtuellen und physischen Ressourcen gespeicherte und verarbeitete Kundendaten sind gemäß einem dokumentierten Ansatz basierend auf der Risikobewertung ([[OIS-07 Risk Management Policy|OIS-07]]) und den Kryptographie-Richtlinien (vgl. [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]]) sicher und strikt getrennt, um Vertraulichkeit und Integrität zu gewährleisten.

**Zusatzinformation (DE):**

Gemeinsam genutzte Ressourcen umfassen CPU, RAM, Storage und Netzwerke. Die Trennung von Kundendaten auf gemeinsamen Ressourcen kann z. B. gemäß der CISA Cloud Security Technical Reference Architecture entlang der Cloud-Layer erfolgen.

---

### OPS-31.03B — Basic

**Kriterium (EN):**

> The risk assessment is reviewed as needed, especially in case of changes to the architecture of the cloud service, and at least annually. Measures are adjusted or improved as appropriate to ensure they remain commensurate with the risks.

**Deutsche Übersetzung:**

Die Risikobewertung wird bei Bedarf — insbesondere bei Änderungen an der Architektur des Cloud-Dienstes — sowie mindestens jährlich überprüft. Maßnahmen werden entsprechend angepasst oder verbessert, um sicherzustellen, dass sie im Verhältnis zu den Risiken angemessen bleiben.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Layer-spezifische Isolation**: Netzwerk (VPC per Tenant oder Namespace-Isolation mit NetworkPolicies), Compute (Node-Pools pro Sensitivität-Klasse), Storage (Bucket per Tenant mit tenant-spezifischen KMS-Keys), Application (Tenant-ID mandatory in allen ORM-Queries + Row-Level-Security in DB)
- **BYOK (Bring Your Own Key)** für Kundendaten: jeder Krankenhaus-Kunde verwaltet eigenen KMS-Schlüssel; Cloud-Anbieter kann Daten ohne Kunden-Schlüssel nicht entschlüsseln; Wichtig für § 203 StGB-Compliance
- **Automated Isolation Tests**: Chaos-Engineering-Tests, die versuchen, aus Tenant-A auf Tenant-B zuzugreifen; automatischer Fehler in Pipeline; regelmäßige „Segregation Attack Simulation"
- **Jährliche Architektur-Review** durch Security-Architects: Threat Modelling für neue Features (z. B. neue Analytics-Funktion → könnte diese Cross-Tenant-Daten aggregieren?); Update der Risikobewertung; Anpassung der Maßnahmen im ISMS

## Verwandte Kriterien

- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-32 Confidential Computing - Policies and Procedures]]
- [[OPS-34 Container Management - Policies and Procedures]]
- [[OIS-07 Risk Management Policy]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
- [[COS-01 Technical Safeguards|COS-01]] *(noch nicht angelegt)*
