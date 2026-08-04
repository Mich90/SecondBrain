---
title: OPS-30 Separation of Datasets - Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-30
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-30
---

# OPS-30 · Separation of Datasets — Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-30 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-30.01B — Basic

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07), the cloud service provider established policies and procedures with technical and organisational measures to ensure separation of cloud service customer data between different customers and between customers and the cloud service provider. These policies and procedures are documented, communicated and provided in accordance with SP-01 and contain specifications regarding the client separation based on a documented cloud layer model and include the following:
>
> 1. Illustration of which cloud layers are used for the particular cloud service. The used cloud layers should be appropriate to enable client separation;
> 2. Measures used to separate cloud service customer data along the used cloud layers. Those measures are categorised according to the protection goals of confidentiality, integrity and availability and if they are preventive, detective or reactive measures;
> 3. Monitoring and compliance with these measures; and
> 4. Initiation of suitable measures in the event of deviations.

**Deutsche Übersetzung:**

Auf Basis einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) hat der Cloud-Diensteanbieter Richtlinien und Verfahren mit technischen und organisatorischen Maßnahmen etabliert, um die Trennung von Kundendaten zwischen verschiedenen Kunden sowie zwischen Kunden und Cloud-Diensteanbieter sicherzustellen. Diese sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und enthalten Vorgaben zur Client-Separierung basierend auf einem dokumentierten Cloud-Layer-Modell:

1. Darstellung, welche Cloud-Layer für den jeweiligen Cloud-Dienst genutzt werden. Die genutzten Layer sollten geeignet sein, um Client-Separierung zu ermöglichen;
2. Maßnahmen zur Trennung von Kundendaten entlang der genutzten Cloud-Layer. Diese sind nach den Schutzzielen (Vertraulichkeit, Integrität, Verfügbarkeit) und danach kategorisiert, ob sie präventiv, detektiv oder reaktiv sind;
3. Monitoring und Compliance mit diesen Maßnahmen;
4. Einleitung geeigneter Maßnahmen bei Abweichungen.

**Zusatzinformation (DE):**

Die Richtlinien und Verfahren dieses Kriteriums sollen als übergeordnete Leitlinie für alle Cybersecurity-Maßnahmen gegen alle Bedrohungen dienen, die aus dem Teilen physischer oder virtueller Ressourcen resultieren und zu einem Verlust der Trennung von Datensätzen führen können.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Multi-Tenant-Isolation-Modell** dokumentiert: Namespaces in K8s pro Krankenhaus, dedicated Databases (Postgres Schema per Tenant oder eigene Instances), Application-Level-Tenant-ID in allen Queries, verschlüsselte Storage-Buckets pro Tenant
- **CISA Cloud Security Technical Reference Architecture** als Layer-Modell nutzen: pro Layer (Physical, Virtual, Container, App, Data) dokumentierte Isolations-Maßnahmen; Zuordnung zu Schutzzielen (C/I/A) und Maßnahmen-Typ (P/D/R)
- **Prevention/Detection/Reaction-Matrix**: Beispiel Verletzung Vertraulichkeit → Prevention (Netzwerk-Segmentierung, Encryption), Detection (SIEM-Regel „Cross-Tenant-Zugriff"), Reaction (automatisches Session-Termination + P1-Alert)
- **Continuous Monitoring**: automatischer Compliance-Check „Kein Query ohne Tenant-Filter", „Keine Cross-Tenant-Foreign-Keys", „Kein Tenant-Übergriff im Log"; Verstoß = P1-Incident

## Verwandte Kriterien

- [[OPS-31 Separation of Datasets - Implementation]]
- [[OPS-32 Confidential Computing - Policies and Procedures]]
- [[OPS-34 Container Management - Policies and Procedures]]
- [[OIS-07 Risk Management Policy]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
- [[COS-01 Technical Safeguards|COS-01]] *(noch nicht angelegt)*
