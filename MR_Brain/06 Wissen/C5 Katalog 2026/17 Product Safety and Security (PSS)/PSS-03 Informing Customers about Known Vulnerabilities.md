---
title: PSS-03 Informing Customers about Known Vulnerabilities
project: "[[C5 Katalog 2026]]"
c5-id: PSS-03
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-03
---

# PSS-03 · Informing Customers about Known Vulnerabilities

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-03 · **Unterkriterien:** 7 (5 Basic · 2 Complementing)

## Unterkriterien

### PSS-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider ensures through a coordinated process that cloud service customers have access to regularly updated information about known vulnerabilities associated with the cloud service that may impact the information security of the customer. This includes:
>
> 1. Known-exploited vulnerabilities;
> 2. Known vulnerabilities for which a patch and/or mitigating measures are provided by the cloud service provider (N-Day vulnerabilities), with appropriate references to the patch/measure; and
> 3. Known vulnerabilities for which a patch and/or mitigating measures are unlikely to be provided by the cloud service provider (Forever-Day vulnerabilities), along with a justification for why they are not provided.
>
> These pertain to the provided cloud service and assets provided by the cloud service provider that the cloud service customers have to install, provide or operate within their own responsibility.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt durch einen koordinierten Prozess sicher, dass Cloud-Dienstkunden Zugriff auf regelmäßig aktualisierte Informationen zu bekannten Schwachstellen im Zusammenhang mit dem Cloud-Dienst haben, die die Informationssicherheit des Kunden beeinträchtigen können. Dies umfasst:

1. **Known-Exploited Vulnerabilities**;
2. Bekannte Schwachstellen, für die ein Patch und/oder mindernde Maßnahmen vom Cloud-Diensteanbieter bereitgestellt werden (**N-Day Vulnerabilities**), mit entsprechenden Verweisen auf den Patch/die Maßnahme;
3. Bekannte Schwachstellen, für die ein Patch und/oder mindernde Maßnahmen unwahrscheinlich vom Cloud-Diensteanbieter bereitgestellt werden (**Forever-Day Vulnerabilities**), zusammen mit einer Begründung, warum sie nicht bereitgestellt werden.

Dies betrifft den bereitgestellten Cloud-Dienst und Assets des Cloud-Diensteanbieters, die die Cloud-Dienstkunden im eigenen Verantwortungsbereich installieren, bereitstellen oder betreiben müssen.

---

### PSS-03.02B — Basic

**Kriterium (EN):**

> The information provided to the cloud service customers includes, where available, a description of applicable and planned remediation or mitigation measures for the identified vulnerabilities.

**Deutsche Übersetzung:**

Die den Cloud-Dienstkunden bereitgestellten Informationen umfassen — soweit verfügbar — eine Beschreibung anwendbarer und geplanter Behebungs- oder Minderungsmaßnahmen für die identifizierten Schwachstellen.

---

### PSS-03.03B — Basic

**Kriterium (EN):**

> These vulnerabilities are also identified based on data from a list of software components or Software Bill of Materials (SBOM) data.

**Deutsche Übersetzung:**

Diese Schwachstellen werden auch basierend auf Daten aus einer Liste der Software-Komponenten oder **SBOM**-Daten identifiziert.

**Zusatzinformation (DE):**

Obwohl der Cloud-Diensteanbieter die Schwachstellen basierend auf SBOM-Daten identifizieren muss, um dieses Kriterium zu erfüllen, müssen diese SBOM-Daten nicht an den Kunden übergeben werden, um das Kriterium zu erfüllen.

---

### PSS-03.04B — Basic

**Kriterium (EN):**

> The vulnerabilities are presented with references to the Common Vulnerabilities and Exposures (CVE) and assessments are based on:
>
> 1. The Common Vulnerability Scoring System (CVSS); and
> 2. The Exploit Prediction Scoring System (EPSS), the Stakeholder-Specific Vulnerability Categorization (SSVC) or other similar scoring metrics
>
> in the latest version valid at the time of the assessment.
>
> This information is accessible to all cloud customers and supports their risk assessment and follow-up actions, with references to vulnerability-specific measures where applicable.

**Deutsche Übersetzung:**

Die Schwachstellen werden mit Verweisen auf **CVE** dargestellt, und Bewertungen basieren auf:

1. **CVSS** (Common Vulnerability Scoring System);
2. **EPSS** (Exploit Prediction Scoring System), **SSVC** (Stakeholder-Specific Vulnerability Categorization) oder anderen ähnlichen Scoring-Metriken

in der zum Bewertungszeitpunkt gültigen aktuellsten Version.

Diese Informationen sind für alle Cloud-Kunden zugänglich und unterstützen deren Risikobewertung und Follow-up-Aktionen — mit Verweisen auf schwachstellen-spezifische Maßnahmen, soweit anwendbar.

**Zusatzinformation (DE):**

Schwachstellen-spezifische Maßnahmen können z. B. im **VEX (Vulnerability Exploitability eXchange)** oder in **CSAF (Common Security Advisory Frameworks)** zu finden sein.

---

### PSS-03.05B — Basic

**Kriterium (EN):**

> The cloud service provider consults the vulnerability information of its suppliers and service organisations at least daily. The published vulnerabilities are analysed in regards to their potential impact on the cloud service, and handled in accordance with the vulnerability handling process (cf. OPS-18). If the supplier or service organisation does not provide daily information, the related risk is managed according to OIS-07.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter konsultiert die Schwachstellen-Informationen seiner Lieferanten und Service-Organisationen **mindestens täglich**. Die veröffentlichten Schwachstellen werden bezüglich ihrer potenziellen Auswirkung auf den Cloud-Dienst analysiert und gemäß dem Vulnerability-Handling-Prozess (vgl. [[OPS-18 Managing Vulnerabilities - Policies and Procedures|OPS-18]]) behandelt. Falls der Lieferant oder die Service-Organisation keine täglichen Informationen bereitstellt, wird das zugehörige Risiko gemäß [[OIS-07 Risk Management Policy|OIS-07]] gemanagt.

---

### PSS-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> Assets provided by the cloud service provider, which must be installed, provided or operated by cloud service customers within their area of responsibility, are equipped with automatic update mechanisms. After approval by the respective cloud service customer, software updates are rolled out by the cloud service provider.

**Deutsche Übersetzung:**

Vom Cloud-Diensteanbieter bereitgestellte Assets, die von Cloud-Dienstkunden in deren Verantwortungsbereich installiert, bereitgestellt oder betrieben werden müssen, sind mit **automatischen Update-Mechanismen** ausgestattet. Nach Genehmigung durch den jeweiligen Cloud-Dienstkunden werden Software-Updates vom Cloud-Diensteanbieter ausgerollt.

---

### PSS-03.02AC — Additional (Complementing)

**Kriterium (EN):**

> Vulnerabilities are disclosed in accordance with the Common Security Advisory Framework Version 2.0 or higher, and as specified in BSI's Technical Guideline TR-03191.

**Deutsche Übersetzung:**

Schwachstellen werden gemäß **CSAF Version 2.0** oder höher offengelegt — und gemäß **BSI TR-03191** spezifiziert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Security Advisory Portal**: dedizierter Bereich im Trust Center mit allen relevanten CVEs (aggregiert aus internen + Third-Party-Findings), CVSS + EPSS-Bewertung, Betroffenheit, Patch-Status, Mitigation-Empfehlung; RSS/API-Feed für Krankenhaus-IT
- **Forever-Day-Transparenz**: dokumentierte Schwachstellen ohne geplanten Fix (z. B. Legacy-Komponente vor Abkündigung) mit Begründung, kompensierenden Kontrollen, geplantem Deprecation-Datum; wichtiges Vertrauens-Signal
- **Daily-Vuln-Ingestion**: automatisierte Prozesse ziehen täglich Vendor-Advisories (AWS, Azure, MS, Red Hat, Ubuntu, NIST NVD), matchen gegen SBOM, priorisieren nach EPSS; Verzögerungen bei nicht-täglichen Vendoren dokumentiert im Vendor-Risk-Register
- **CSAF-basierte Kommunikation** (Complementing): maschinenlesbare Security Advisories nach CSAF 2.0; Krankenhaus-SIEM-Systeme können automatisch Advisories konsumieren und mit eigener Asset-Landschaft matchen; BSI-TR-03191-konform

## Verwandte Kriterien

- [[PSS-02 Identification of Vulnerabilities of the Cloud Service]]
- [[PSS-04 Error handling and Logging Mechanisms]]
- [[DEV-13 Transparency about Software Components]]
- [[OPS-18 Managing Vulnerabilities - Policies and Procedures]]
- [[OPS-25 Managing Vulnerabilities, Incidents and Crashes - Vulnerability Scans]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[SSO-05 Monitoring of Compliance with Requirements]]
- [[OIS-05 Contact with Relevant Authorities and Interest Groups]]
- [[OIS-07 Risk Management Policy]]
