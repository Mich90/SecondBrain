---
title: PSS-12 Region of Data Processing and Storage
project: "[[C5 Katalog 2026]]"
c5-id: PSS-12
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-12
---

# PSS-12 · Region of Data Processing and Storage

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-12 · **Unterkriterien:** 8 (4 Basic · 2 Sharpening · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium ergänzt die General Condition [[GC-01 Information on jurisdiction and locations of data processing and storage|GC-01]]. Es fordert nicht, dass der Cloud-Diensteanbieter mehrere Regionen oder Partitionen anbietet. Wenn der Cloud-Diensteanbieter nur eine Partition anbietet, stellt dies keine Abweichung vom Kriterium dar.

## Unterkriterien

### PSS-12.01B — Basic

**Kriterium (EN):**

> The architecture of the cloud service, including the technical design of its infrastructure, ensures that cloud service customer data and eventual data backups thereof are processed and stored only in the region specified in the contractual agreements with the cloud service provider. If the cloud service customer is able to select from multiple regions, processing and storage of the aforementioned data is limited to the selected regions.

**Deutsche Übersetzung:**

Die Architektur des Cloud-Dienstes — einschließlich des technischen Designs seiner Infrastruktur — stellt sicher, dass Kundendaten und eventuelle Daten-Backups davon **nur in der in den vertraglichen Vereinbarungen spezifizierten Region** verarbeitet und gespeichert werden. Kann der Cloud-Dienstkunde aus mehreren Regionen wählen, ist die Verarbeitung und Speicherung der genannten Daten auf die ausgewählten Regionen beschränkt.

---

### PSS-12.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The architecture of the cloud service, including the technical design of its infrastructure, ensures that the cloud service customer data, cloud service derived data and eventual data backups thereof are processed and stored only in the region specified in the contractual agreements with the cloud service provider. If the cloud service customer is able to select from multiple regions, processing and storage of the aforementioned data is limited to the selected regions.

**Deutsche Übersetzung:**

Analog zu PSS-12.01B, konkretisiert um **abgeleitete Daten** (nicht nur Kundendaten).

---

### PSS-12.02B — Basic

**Kriterium (EN):**

> Processing and storage of cloud service customer data within the service organisations of the cloud service provider also adheres to the regions selected by the cloud service customer.

**Deutsche Übersetzung:**

Die Verarbeitung und Speicherung von Kundendaten **innerhalb der Service-Organisationen** des Cloud-Diensteanbieters hält sich ebenfalls an die vom Cloud-Dienstkunden gewählten Regionen.

---

### PSS-12.02AS — Additional (Sharpening)

**Kriterium (EN):**

> Processing and storage of cloud service customer data and cloud service derived data within the service organisations of the cloud service provider also adheres to the regions selected by the cloud service customer.

**Deutsche Übersetzung:**

Analog zu PSS-12.02B, konkretisiert um **abgeleitete Daten**.

---

### PSS-12.03B — Basic

**Kriterium (EN):**

> The contractual agreements specify the regions in which processing and storage of cloud service customer data, cloud service derived data and account data occurs and the circumstances under which changes may be applied.

**Deutsche Übersetzung:**

Die vertraglichen Vereinbarungen spezifizieren die Regionen, in denen Verarbeitung und Speicherung von Kundendaten, abgeleiteten Daten und Kontodaten erfolgen, sowie die Umstände, unter denen Änderungen vorgenommen werden dürfen.

---

### PSS-12.04B — Basic

**Kriterium (EN):**

> Customers are notified beforehand in case of any changes to the regions in which the aforementioned data is processed or stored. If the cloud service provider has not been granted prior general authorisation by the cloud service customer to do so, such authorisations are obtained in accordance with the requirements specified in the contractual agreements or let the cloud service customer exercise termination rights.

**Deutsche Übersetzung:**

Kunden werden im Voraus über Änderungen der Regionen benachrichtigt, in denen die genannten Daten verarbeitet oder gespeichert werden. Falls dem Cloud-Diensteanbieter keine vorherige allgemeine Autorisierung durch den Cloud-Dienstkunden erteilt wurde, werden solche Autorisierungen gemäß den in den vertraglichen Vereinbarungen spezifizierten Anforderungen eingeholt oder dem Cloud-Dienstkunden ein **Kündigungsrecht** eingeräumt.

---

### PSS-12.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider offers partitions selectable by the cloud service customer where partition-specific identity management is enforced for both cloud service customers and all cloud service provider personnel. Identity verification and identity storage are confined to the geographical boundaries of the selected partition.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter bietet vom Cloud-Dienstkunden auswählbare **Partitionen**, in denen partitions-spezifisches Identity Management sowohl für Cloud-Dienstkunden als auch das gesamte Personal des Cloud-Diensteanbieters durchgesetzt wird. Identity-Verifikation und Identity-Speicherung sind auf die **geografischen Grenzen** der gewählten Partition beschränkt.

---

### PSS-12.02AC — Additional (Complementing)

**Kriterium (EN):**

> Within these partitions, the following operations by the cloud service provider are restricted to occur only within the geographical boundaries of the customer-selected partitions:
>
> 1. Privileged access to the production environment by the cloud service provider, including potential access to cloud service customer data and cloud service derived data;
> 2. System logging and event monitoring by the cloud service provider, except for processing event logs specifically for threat intelligence and handling IP addresses for routing purposes; and
> 3. Cryptographic key management and storage practices to ensure keys are handled and stored within limits of the partition.
>
> These restrictions considering partitions also apply to any service organisations involved in the operation of the cloud service.

**Deutsche Übersetzung:**

Innerhalb dieser Partitionen sind folgende Operationen des Cloud-Diensteanbieters darauf beschränkt, nur innerhalb der geografischen Grenzen der vom Kunden gewählten Partitionen zu erfolgen:

1. **Privilegierter Zugriff** auf die Produktivumgebung durch den Cloud-Diensteanbieter — einschließlich potenziellen Zugriffs auf Kundendaten und abgeleitete Daten;
2. **System-Logging und Event-Monitoring** durch den Cloud-Diensteanbieter — außer der Verarbeitung von Event-Logs speziell für Threat Intelligence und Handhabung von IP-Adressen für Routing-Zwecke;
3. **Kryptographisches Key-Management und Speicherpraktiken**, um sicherzustellen, dass Schlüssel innerhalb der Partitionsgrenzen behandelt und gespeichert werden.

Diese Partitions-Beschränkungen gelten auch für alle an der Betriebsführung des Cloud-Dienstes beteiligten Service-Organisationen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Region-Locking DE/EU-only** für Healthcare-Deployments: Deployment ausschließlich in AWS eu-central-1 (Frankfurt) oder Azure Germany West Central; keine Cross-Region-Replikation außerhalb EU; explizite Blocker in IaC-Templates
- **Backup-Region-Konformität**: Backups in EU-Region (Multi-AZ innerhalb eu-central-1 + Sekundär in eu-west-1 Ireland als Disaster-Recovery, beides EU); keine US-Backups; jährlicher Data-Location-Audit
- **Sub-Auftragsverarbeiter in EU**: alle relevanten Sub-Auftragsverarbeiter (Backup-Anbieter, Monitoring-Provider, CDN) haben EU-Datenverarbeitung als vertragliche Zusage; jährliches Compliance-Audit; Ausnahmen (z. B. Threat-Intel-Feeds von US-Anbietern) dokumentiert und rechtfertigen
- **Sovereign Partition** (Complementing): dedizierte deutsche Partition mit ausschließlich deutschem Support-Personal, deutscher IAM-Instanz, deutschen HSMs für Key-Management; wichtig für Krankenhäuser mit besonderen Souveränitäts-Anforderungen (z. B. Universitätsklinika, Rechenzentren mit besonderer BSI-Zertifizierung)

## Verwandte Kriterien

- [[PSS-01 Guidelines and Recommendations for Cloud Service Customers]]
- [[GC-01 Information on jurisdiction and locations of data processing and storage|GC-01 · Jurisdiktion und Standorte]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[COS-08 Policies for Data Transmission]]
- [[SSO-07 Ensuring Transparency within Service Organisations]]
- [[CRY-09 Secure Key Provisioning]]
- [[INQ-01 Legal Assessment of Investigation Requests]]
