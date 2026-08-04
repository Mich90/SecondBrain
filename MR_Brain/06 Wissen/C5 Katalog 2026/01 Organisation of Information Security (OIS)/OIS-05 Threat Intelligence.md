---
title: OIS-05 Threat Intelligence
project: "[[C5 Katalog 2026]]"
c5-id: OIS-05
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-05
---

# OIS-05 · Threat Intelligence

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-05  
> **Unterkriterien:** 3 (3 Basic)

## Unterkriterien

### OIS-05.01B — Basic

**Kriterium (EN):**

> The cloud service provider collects information from selected internal and external sources to gain a comprehensive view of the threat landscape that lead to cybersecurity risks.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter sammelt Informationen aus ausgewählten internen und externen Quellen, um einen umfassenden Überblick über die Bedrohungslandschaft zu gewinnen, die zu Cybersecurity-Risiken führt.

**Zusatzinformation (EN):**

> Internal sources that can be used to collect information include, for example, the cloud service provider's internal security monitoring. External sources that can be used to collect information include, for example, threat intelligence feeds from government agencies, commercial threat intelligence providers or industry consortiums.
> Threat intelligence generally includes different areas like cybersecurity risk intelligence gathering (e.g. monitoring relevant internal or external sources), threat modelling and risk management.

**Zusatzinformation (DE):**

Interne Quellen zur Informationssammlung sind z. B. das interne Sicherheits-Monitoring des Cloud-Diensteanbieters. Externe Quellen sind z. B. Threat-Intelligence-Feeds von Behörden, kommerziellen Threat-Intelligence-Anbietern oder Branchenkonsortien.

Threat Intelligence umfasst in der Regel verschiedene Bereiche wie das Sammeln von Cybersecurity-Risikoinformationen (z. B. Monitoring relevanter interner oder externer Quellen), Bedrohungsmodellierung (Threat Modelling) und Risikomanagement.

---

### OIS-05.02B — Basic

**Kriterium (EN):**

> The collected information is correlated and analysed to identify its potential impact on the cloud service provider's organisation.

**Deutsche Übersetzung:**

Die gesammelten Informationen werden korreliert und analysiert, um deren potenzielle Auswirkungen auf die Organisation des Cloud-Diensteanbieters zu identifizieren.

**Zusatzinformation (EN):**

> This process can, for example, include correlating threat intelligence with organisational assets, vulnerabilities, and business processes to identify relevant and actionable threats. The results can be used to provide regular threat briefings to cloud service provider's management and security teams.

**Zusatzinformation (DE):**

Dieser Prozess kann z. B. die Korrelation von Threat Intelligence mit organisatorischen Assets, Schwachstellen und Geschäftsprozessen umfassen, um relevante und umsetzbare Bedrohungen zu identifizieren. Die Ergebnisse können genutzt werden, um regelmäßige Bedrohungslage-Briefings für die Geschäftsführung und Security-Teams des Cloud-Diensteanbieters bereitzustellen.

---

### OIS-05.03B — Basic

**Kriterium (EN):**

> The cloud service provider integrates threat intelligence insights into its risk management process (cf. OIS-07, OIS-08 and OIS-09).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter integriert Threat-Intelligence-Erkenntnisse in seinen Risikomanagement-Prozess (vgl. [[OIS-07 Risk Management Policy|OIS-07]], [[OIS-08 Application of the Risk Management Policy - Risk Assessment|OIS-08]] und [[OIS-09 Application of the Risk Management Policy - Risk Treatment|OIS-09]]).

**Zusatzinformation (EN):**

> If a threat model is used for this process, the cloud service provider can, for example:
>
> 1. Use structured methodologies (e.g., STRIDE, PASTA, LINDDUN) appropriate to the cloud service architecture;
> 2. Map current threat landscape intelligence to specific system components, data flows, and trust boundaries;
> 3. Incorporate real-time threat intelligence to update threat models dynamically rather than relying on static annual assessments;
> 4. Consider emerging attack vectors, techniques, and procedures (TTPs) documented in frameworks such as MITRE ATT&CK; and
> 5. Account for supply chain and third-party risks through extended threat modelling.
>
> The aim of threat modelling is to ensure that the current internal and external threats are reflected in risk handling measures.

**Zusatzinformation (DE):**

Wird für diesen Prozess ein Bedrohungsmodell (Threat Model) genutzt, kann der Cloud-Diensteanbieter z. B.:

1. Strukturierte Methodiken einsetzen (z. B. STRIDE, PASTA, LINDDUN), die zur Cloud-Service-Architektur passen;
2. Aktuelle Threat-Landscape-Intelligence auf spezifische Systemkomponenten, Datenflüsse und Trust Boundaries abbilden;
3. Echtzeit-Threat-Intelligence einbeziehen, um Bedrohungsmodelle dynamisch zu aktualisieren, statt sich auf statische Jahres-Assessments zu verlassen;
4. Neu aufkommende Angriffsvektoren, Techniken und Vorgehensweisen (TTPs) berücksichtigen, wie sie in Frameworks wie **MITRE ATT&CK** dokumentiert sind;
5. Supply-Chain- und Third-Party-Risiken durch erweitertes Threat Modelling einbeziehen.

Ziel des Threat Modellings ist, dass die aktuellen internen und externen Bedrohungen in den Risikobehandlungsmaßnahmen abgebildet sind.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Threat-Intelligence-Feeds abonnieren**: BSI-CERT-Bund Warnungen, kommerzielle Feeds (z. B. Recorded Future, Mandiant), OSINT-Quellen wie [https://cti-osint.de](https://cti-osint.de); zusätzlich sektorspezifisch das CERT@VDE (industrielle Steuerung) oder DIVI-Notfallwarnungen (Krankenhauskontext) beobachten
- **Wöchentliches Threat Briefing** im Security-Team, monatlich Executive Briefing an CISO/CIO: Fokus auf für Gesundheitscloud relevante TTPs (z. B. Ransomware gegen Kliniken, Angriffe auf medizinische Geräte, DICOM-/HL7-Schwachstellen)
- **STRIDE-basiertes Threat Model** je Cloud-Service-Komponente pflegen: pro Data Flow (Krankenhaus-IdP → Auth-Service → API → DB) Spoofing/Tampering/Repudiation/Information-Disclosure/DoS/Elevation prüfen; jährlich review, bei größeren Architektur-Änderungen ad hoc
- **MITRE ATT&CK Mapping** vorhandener Detection-Regeln (SIEM) auf Techniken; Coverage-Gaps quartalsweise reviewen und mit Threat-Intel-Priorisierung schließen

## Verwandte Kriterien

- [[OIS-07 Risk Management Policy]]
- [[OIS-08 Application of the Risk Management Policy - Risk Assessment]]
- [[OIS-09 Application of the Risk Management Policy - Risk Treatment]]
- [[OIS-06 Contact with Relevant Government Agencies and Interest Groups]]
- [[OPS-22 Managing Vulnerabilities|OPS-22]] *(noch nicht angelegt)*
