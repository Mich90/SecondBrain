---
title: OPS-29 Managing Vulnerabilities, Incidents and Crashes - Externally Sourced Components
project: "[[C5 Katalog 2026]]"
c5-id: OPS-29
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-29
---

# OPS-29 · Managing Vulnerabilities, Incidents and Crashes — Externally Sourced Components

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-29 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-29.01B — Basic

**Kriterium (EN):**

> The cloud service provider designs, implements and maintains technical and organisational measures to manage updates to system components used to provide the cloud service that incorporate third-party or open-source libraries. This includes:
>
> 1. Regularly identifying available updates and known vulnerabilities in third-party or open-source libraries used within applications;
> 2. Evaluating the potential impact of identified updates and vulnerabilities on the applications and the overall security posture;
> 3. Implementing necessary updates and patches in a timely manner to address identified vulnerabilities; and
> 4. Continuously monitoring applications to ensure updates are effectively applied and no known or unmitigated vulnerabilities are introduced.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter konzipiert, implementiert und pflegt technische und organisatorische Maßnahmen zur Verwaltung von Updates von Systemkomponenten mit **Drittanbieter- oder Open-Source-Bibliotheken**. Dies umfasst:

1. Regelmäßige Identifikation verfügbarer Updates und bekannter Schwachstellen in Drittanbieter- oder Open-Source-Bibliotheken;
2. Bewertung der potenziellen Auswirkung identifizierter Updates und Schwachstellen auf die Anwendungen und die gesamte Sicherheits-Posture;
3. Umsetzung notwendiger Updates und Patches zeitnah zur Adressierung identifizierter Schwachstellen;
4. Kontinuierliches Monitoring, um sicherzustellen, dass Updates effektiv angewendet sind und keine bekannten oder nicht gemitigierten Schwachstellen eingeführt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **SBOM-first Approach**: pro Release wird eine SBOM (CycloneDX oder SPDX) generiert; alle Dependencies (direkt + transitiv) inventarisiert; Vergleich gegen NVD/EUVD täglich
- **SCA-Tools** (Software Composition Analysis): Snyk, GitHub Dependabot, Trivy, Renovate; automatische PRs für Sicherheits-Updates; kritische Updates innerhalb SLA; Owner pro Repository benannt
- **License-Compliance mit-Prüfung**: neben Sicherheits-Bewertung auch Lizenz-Compliance (kein GPL in Kernprodukt ohne juristische Prüfung); wichtig bei Healthcare-Software mit hohem OSS-Anteil
- **Deprecated/Abandoned Dependencies**: automatische Erkennung nicht mehr gepflegter Libraries (kein Commit > 12 Monate); Migrationspfad definiert; Übergangs-Risiko im ISMS bewertet

## Verwandte Kriterien

- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[OPS-28 Managing Vulnerabilities - Patch Management Implementation]]
- [[DEV-04 Testing System Components|DEV-04]] *(noch nicht angelegt)*
- [[SSO-01 Policies and Procedures for Controlling and Monitoring Third-Parties|SSO-01]] *(noch nicht angelegt)*
