---
title: PSS-01 Guidelines and Recommendations for Cloud Service Customers
project: "[[C5 Katalog 2026]]"
c5-id: PSS-01
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-01
---

# PSS-01 · Guidelines and Recommendations for Cloud Service Customers

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-01 · **Unterkriterien:** 5 (4 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> In einer Cloud-Umgebung werden Sicherheitsverantwortlichkeiten zwischen Cloud-Diensteanbieter und Kunde geteilt, variierend nach Service-Typ — **IaaS**, **PaaS** oder **SaaS**. Anleitung zu komplementären Kunden-Kontrollen (**CUECs**) hilft Cloud-Dienstkunden, ihre Rolle im **Shared Security Responsibility Model (SSRM)** zu verstehen und wahrzunehmen.

## Unterkriterien

### PSS-01.01B — Basic

**Kriterium (EN):**

> The cloud service provider publishes guidelines and recommendations for cloud service customers regarding the secure use of the cloud service provided. The information contained therein is intended to assist the cloud service customer in the secure configuration and use of the cloud service, as well as the implementation of complementary customer controls, to the extent applicable to the cloud service and the responsibility of the cloud service customer.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter veröffentlicht Leitlinien und Empfehlungen für Cloud-Dienstkunden zur sicheren Nutzung des bereitgestellten Cloud-Dienstes. Die enthaltenen Informationen unterstützen den Cloud-Dienstkunden bei der sicheren Konfiguration und Nutzung des Cloud-Dienstes sowie bei der Umsetzung von **Complementary Customer Controls (CUECs)** — soweit auf den Cloud-Dienst und die Verantwortung des Cloud-Dienstkunden anwendbar.

---

### PSS-01.02B — Basic

**Kriterium (EN):**

> The type and scope of the information in the guidelines and recommendations for the secure use of the cloud service provided will be based on the needs of subject matter experts of the cloud service customers who set information security requirements, implement them or verify the implementation (e.g. IT, Compliance, Internal Audit). The information in the guidelines and recommendations for the secure use of the cloud service address the following aspects, where applicable to the cloud service:
>
> 1. Procedures for secure configuration;
> 2. Information sources on known vulnerabilities and update mechanisms;
> 3. Malware protection for containers or virtual machines;
> 4. Error handling and logging mechanisms;
> 5. Authentication mechanisms;
> 6. Roles and rights framework including combinations that result in an elevated risk;
> 7. Services and functions for administration of the cloud service by privileged users;
> 8. Complementary user entity controls;
> 9. Encryption mechanisms and services;
> 10. Data leakage prevention;
> 11. Secure application development and operation on the cloud service;
> 12. Instructions for using and configuring defensive mechanisms;
> 13. Instructions for using and configuring wide-area distributed architecture mechanisms;
> 14. Methods used for client data separation (cf. OPS-30 and OPS-31);
> 15. How information security risks related to the use of the cloud service can be addressed through proper logging and monitoring mechanisms; and
> 16. Inbound and outbound interfaces through which the cloud service can be accessed by other cloud services or IT systems of cloud service customers (cf. PI-01).

**Deutsche Übersetzung:**

Art und Umfang der Informationen in den Leitlinien und Empfehlungen zur sicheren Nutzung basieren auf den Bedürfnissen der Fachexperten der Cloud-Dienstkunden, die Informationssicherheits-Anforderungen setzen, umsetzen oder deren Umsetzung überprüfen (z. B. IT, Compliance, Internal Audit). Die Informationen adressieren folgende Aspekte — soweit auf den Cloud-Dienst anwendbar:

1. Verfahren zur sicheren Konfiguration;
2. Informationsquellen zu bekannten Schwachstellen und Update-Mechanismen;
3. Malware-Schutz für Container oder VMs;
4. Error-Handling- und Logging-Mechanismen;
5. Authentifizierungs-Mechanismen;
6. Rollen- und Rechte-Framework — einschließlich Kombinationen, die zu erhöhtem Risiko führen;
7. Dienste und Funktionen zur Administration durch privilegierte Nutzer;
8. **Complementary User Entity Controls (CUECs)**;
9. Verschlüsselungsmechanismen und -dienste;
10. Data Leakage Prevention (DLP);
11. Sichere Anwendungsentwicklung und -betrieb auf dem Cloud-Dienst;
12. Anweisungen zur Nutzung und Konfiguration von Verteidigungsmechanismen;
13. Anweisungen zur Nutzung und Konfiguration von Wide-Area-Distributed-Architecture-Mechanismen;
14. Methoden zur Kundendaten-Trennung (vgl. [[OPS-30 Separation of Datasets - Policies and Procedures|OPS-30]] und [[OPS-31 Separation of Datasets - Implementation|OPS-31]]);
15. Wie Informationssicherheits-Risiken bezüglich der Nutzung des Cloud-Dienstes durch geeignete Logging- und Monitoring-Mechanismen adressiert werden können;
16. Ein- und ausgehende Schnittstellen, über die auf den Cloud-Dienst zugegriffen werden kann (vgl. [[PI-01 Documentation and Description of Data Locations, Interfaces and Roles|PI-01]]).

---

### PSS-01.03B — Basic

**Kriterium (EN):**

> The cloud service provider describes in the user documentation all necessary complementary user entity controls (CUECs) and corresponding explanations of them, so that the cloud service customer has sufficient information for appropriate risk management on its side.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter beschreibt in der Nutzerdokumentation alle notwendigen **CUECs** und entsprechende Erläuterungen, sodass der Cloud-Dienstkunde ausreichende Informationen für ein angemessenes Risikomanagement auf seiner Seite hat.

---

### PSS-01.04B — Basic

**Kriterium (EN):**

> The above-mentioned information is maintained so that it is applicable to the cloud service provided in the version intended for productive use.

**Deutsche Übersetzung:**

Die oben genannten Informationen werden so gepflegt, dass sie auf den Cloud-Dienst in der für den Produktivbetrieb vorgesehenen Version anwendbar sind.

---

### PSS-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider notifies cloud service customers in a timely manner about any planned modifications to the cloud service so that the affected cloud service customers can react appropriately with organisational and technical measures before the changes take effect.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter benachrichtigt Cloud-Dienstkunden zeitnah über geplante Änderungen des Cloud-Dienstes, sodass die betroffenen Cloud-Dienstkunden mit organisatorischen und technischen Maßnahmen angemessen reagieren können, bevor die Änderungen wirksam werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Trust-Center + Docs-Portal**: strukturierte Kunden-Dokumentation nach den 16 Aspekten; separate Bereiche für Krankenhaus-IT (technisch), Datenschutzbeauftragte (rechtlich), Compliance (Testate); Versionierung mit Changelog
- **CUEC-Katalog**: konkrete Checkliste komplementärer Kunden-Kontrollen (z. B. „Kunde muss MFA für alle Admin-Accounts aktivieren", „Kunde muss Audit-Logs mindestens 6 Monate archivieren", „Kunde muss Nutzer-Rollen mindestens quartalsweise reviewen"); jeder CUEC mit Begründung und Umsetzungshilfe
- **Best-Practice-Guides**: sichere Konfigurations-Guides für Krankenhaus-Integrationen (KIS, PVS, HL7/FHIR-Endpunkte); Referenz-Architekturen für DiGA/DVG-Konformität; Templates für Rollen-Definitionen (Arzt, Pflege, MTA, Admin)
- **Change-Notification** (Complementing): API-Breaking-Changes 90 Tage Vorlauf, Feature-Änderungen 30 Tage, Bugfixes im Changelog; automatische Benachrichtigung an Kunden-Trust-Center-Abo per E-Mail; Test-Sandbox für Kunden zur Vorab-Prüfung

## Verwandte Kriterien

- [[PSS-02 Identification of Vulnerabilities of the Cloud Service]]
- [[PSS-03 Informing Customers about Known Vulnerabilities]]
- [[PSS-04 Error handling and Logging Mechanisms]]
- [[PI-01 Documentation and Description of Data Locations, Interfaces and Roles]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[GC-05 Complementary customer criteria|GC-05 · Complementary Customer Criteria]]
