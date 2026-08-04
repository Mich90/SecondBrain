---
title: PSS-02 Identification of Vulnerabilities of the Cloud Service
project: "[[C5 Katalog 2026]]"
c5-id: PSS-02
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-02
---

# PSS-02 · Identification of Vulnerabilities of the Cloud Service

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-02 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Bekannte Schwachstellen in extern bezogenen Systemkomponenten (z. B. Betriebssystemen), die für die Entwicklung und Bereitstellung des Cloud-Dienstes genutzt werden, aber nicht den Software-Entwicklungsprozess des Cloud-Diensteanbieters durchlaufen, sind Gegenstand von [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans|OPS-25]].

## Unterkriterien

### PSS-02.01B — Basic

**Kriterium (EN):**

> The cloud service provider applies appropriate measures to check the cloud service for vulnerabilities which might have been integrated into the cloud service during the software development process.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter wendet angemessene Maßnahmen an, um den Cloud-Dienst auf Schwachstellen zu prüfen, die während des Software-Entwicklungsprozesses in den Cloud-Dienst integriert worden sein könnten.

---

### PSS-02.02B — Basic

**Kriterium (EN):**

> The procedures for identifying such vulnerabilities are part of the software development process and, depending on a risk assessment, include the following activities:
>
> 1. Static Application Security Testing;
> 2. Dynamic Application Security Testing;
> 3. Code reviews by the cloud service provider's subject matter experts;
> 4. Conducting security checks based on a list of software components or Software Bill of Materials (SBOM); and
> 5. Obtaining information about confirmed vulnerabilities in software libraries provided by third parties and used in their own cloud service.

**Deutsche Übersetzung:**

Die Verfahren zur Identifikation solcher Schwachstellen sind Teil des Software-Entwicklungsprozesses und umfassen — je nach Risikobewertung — folgende Aktivitäten:

1. **Static Application Security Testing (SAST)**;
2. **Dynamic Application Security Testing (DAST)**;
3. Code Reviews durch Fachexperten des Cloud-Diensteanbieters;
4. Sicherheitschecks basierend auf einer Liste der Software-Komponenten oder **SBOM**;
5. Beschaffung von Informationen über bestätigte Schwachstellen in Software-Bibliotheken Dritter, die im eigenen Cloud-Dienst genutzt werden.

---

### PSS-02.03B — Basic

**Kriterium (EN):**

> The severity of identified vulnerabilities is assessed according to defined criteria and measures are taken to immediately eliminate or mitigate them.

**Deutsche Übersetzung:**

Die Schwere identifizierter Schwachstellen wird gemäß definierten Kriterien bewertet und Maßnahmen zur sofortigen Beseitigung oder Minderung werden ergriffen.

---

### PSS-02.01AC — Additional (Complementing)

**Kriterium (EN):**

> The procedures for identifying such vulnerabilities also include annual code reviews or security penetration tests by qualified external third parties.

**Deutsche Übersetzung:**

Die Verfahren zur Identifikation solcher Schwachstellen umfassen auch **jährliche Code Reviews** oder **Security Penetration Tests durch qualifizierte externe Dritte**.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **In-CI-Pipeline-Security**: SAST (Semgrep, SonarQube, GitHub CodeQL), SCA (Snyk, Dependabot, Trivy), Secret-Scanning (git-secrets, TruffleHog); Blocking-Rules für High/Critical-Findings; automatische Ticket-Erstellung
- **DAST auf Staging**: ZAP oder Burp Suite Enterprise gegen Staging-Deployments; regelmäßige Scans nach Deployments; API-Fuzzing gegen FHIR-Endpunkte; Ergebnis-Auswertung durch AppSec-Team
- **Externe Reviews** (Complementing): jährlicher externer Code-Review durch spezialisierten Anbieter mit Healthcare-Erfahrung; zusätzlich Pentest (siehe [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests|OPS-22]]); Findings mit CVSS + EPSS bewertet und in Backlog
- **Third-Party-Vuln-Feed**: automatische Verarbeitung von CVE-Feeds, GitHub Security Advisories, Snyk-Datenbank, vendor-spezifische Feeds (AWS, Azure); Matching gegen SBOM in ~1 Stunde; automatische Priorisierung nach Exploit-Verfügbarkeit (EPSS)

## Verwandte Kriterien

- [[PSS-03 Informing Customers about Known Vulnerabilities]]
- [[DEV-01 Policies for the Development/Procurement of System Components]]
- [[DEV-07 Testing Changes]]
- [[DEV-13 Transparency about Software Components]]
- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-22 Managing Vulnerabilities, Incidents and Crashes - Penetration Tests]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
