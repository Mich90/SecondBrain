---
title: DEV-11 Protection of Development and Test Environments
project: "[[C5 Katalog 2026]]"
c5-id: DEV-11
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-11
---

# DEV-11 · Protection of Development and Test Environments

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-11 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### DEV-11.01B — Basic

**Kriterium (EN):**

> Development and test environments under the responsibility of the cloud service provider undergo a risk assesssment (cf. OIS-07) and are protected with appropriate security measures against identified risks. This also includes extending the backup plan (cf. OPS-06) to the necessary parts of those environments.

**Deutsche Übersetzung:**

Entwicklungs- und Testumgebungen im Verantwortungsbereich des Cloud-Diensteanbieters unterliegen einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) und sind durch angemessene Sicherheitsmaßnahmen gegen identifizierte Risiken geschützt. Dies umfasst auch die Erweiterung des Backup-Plans (vgl. [[OPS-06 Data Backup and Recovery - Policies and Procedures|OPS-06]]) auf die erforderlichen Teile dieser Umgebungen.

**Zusatzinformation (DE):**

Die Backup-Richtlinien und -Verfahren gehen einer Risikobewertung voraus und müssen nicht alle Elemente dieser Umgebungen umfassen, sondern nur die basierend auf der Risikobewertung als notwendig erachteten. Einige Teile können leichter neu erstellt werden als sie zu sichern.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Risikobewertung Dev/Test-Umgebungen**: höheres Risiko wenn Prod-ähnliche Konfiguration + Zugriff auf sensitive Daten (auch anonymisiert); niedrigeres Risiko für reine Sandbox mit synthetischen Daten; Maßnahmen entsprechend abstufen
- **Schutz Dev-Umgebungen**: Zugriff über VPN/ZTNA + MFA, keine öffentliche Exposition; Secrets nicht im Code (auch nicht in Dev); regelmäßiges Vulnerability Scanning; EDR auf Dev-Maschinen; Isolierung von Prod-Netzwerken
- **Backup-Umfang begrenzt**: Konfiguration (Infrastructure-as-Code in Git = versioniert, kein separater Backup nötig), Custom-Tools + Datenbanken (Backup wöchentlich), Test-Datensätze (Backup monatlich); reine Dev-Sandboxen können jederzeit neu aufgesetzt werden
- **CI/CD-Härtung**: gehärtete Runner (Ephemeral Containers), keine langlebigen Secrets, kein SSH-Zugang, keine Root-Rechte; Regelmäßiger Rebuild der Runner-Images; separates Netzwerk für Runner

## Verwandte Kriterien

- [[DEV-12 Separation of Environments]]
- [[OPS-06 Data Backup and Recovery - Policies and Procedures]]
- [[OPS-26 Managing Vulnerabilities, Incidents and Crashes - System Hardening]]
- [[OIS-07 Risk Management Policy]]
- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
