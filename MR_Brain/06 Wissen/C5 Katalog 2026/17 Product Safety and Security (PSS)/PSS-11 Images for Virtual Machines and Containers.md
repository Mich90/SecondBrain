---
title: PSS-11 Images for Virtual Machines and Containers
project: "[[C5 Katalog 2026]]"
c5-id: PSS-11
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-11
---

# PSS-11 · Images for Virtual Machines and Containers

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-11 · **Unterkriterien:** 3 (1 Basic · 2 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium ist typischerweise nicht auf das **SaaS**-Service-Modell anwendbar. Allgemein anerkannte Industriestandards sind z. B. die **Security Configuration Benchmarks des Center for Internet Security (CIS)** oder die entsprechenden Bausteine im **BSI IT-Grundschutz-Kompendium**.

## Unterkriterien

### PSS-11.01B — Basic

**Kriterium (EN):**

> If cloud service customers operate virtual machines or containers with the cloud service, the cloud service provided is equipped with functionalities that ensure the following aspects:
>
> 1. Cloud service customers can restrict the selection of images of virtual machines or containers according to their specifications, so that users of the cloud service customer can only launch the images or containers released according to these restrictions;
> 2. If the cloud service provider provides images of virtual machines or containers to the cloud service customer, the cloud service provider appropriately informs the cloud service customer of the changes made to the previous version;
> 3. Images provided by the cloud service provider are labelled with information regarding their origin; and
> 4. Images provided by the cloud service provider are hardened according to generally accepted industry standards.

**Deutsche Übersetzung:**

Wenn Cloud-Dienstkunden virtuelle Maschinen oder Container mit dem Cloud-Dienst betreiben, ist der bereitgestellte Cloud-Dienst mit Funktionalitäten ausgestattet, die folgende Aspekte sicherstellen:

1. Cloud-Dienstkunden können die Auswahl von Images virtueller Maschinen oder Container gemäß ihren Vorgaben einschränken, sodass Nutzer des Cloud-Dienstkunden nur die gemäß diesen Einschränkungen freigegebenen Images oder Container starten können;
2. Falls der Cloud-Diensteanbieter Images virtueller Maschinen oder Container für den Cloud-Dienstkunden bereitstellt, informiert der Cloud-Diensteanbieter den Cloud-Dienstkunden angemessen über die gegenüber der vorherigen Version vorgenommenen Änderungen;
3. Vom Cloud-Diensteanbieter bereitgestellte Images sind mit Informationen bezüglich ihrer Herkunft gekennzeichnet;
4. Vom Cloud-Diensteanbieter bereitgestellte Images sind gemäß allgemein anerkannten Industriestandards **gehärtet**.

---

### PSS-11.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider checks the integrity and authenticity of virtual machines or container images at startup and informs the cloud service customer accordingly about the results of those checks.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter prüft die Integrität und Authentizität von VM- oder Container-Images **beim Start** und informiert den Cloud-Dienstkunden entsprechend über die Ergebnisse dieser Prüfungen.

**Zusatzinformation (DE):**

Typische Maßnahmen zur Prüfung von VM- oder Container-Images auf Integrität und Authentizität umfassen **kryptographisches Signieren**.

---

### PSS-11.02AC — Additional (Complementing)

**Kriterium (EN):**

> During runtime, the cloud service provider protects the virtual machines or container images against tampering and informs the cloud service customer accordingly about the status during runtime.

**Deutsche Übersetzung:**

Zur **Laufzeit** schützt der Cloud-Diensteanbieter die VMs oder Container-Images gegen Manipulation und informiert den Cloud-Dienstkunden entsprechend über den Status während der Laufzeit.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Image-Allowlist pro Kunde**: Krankenhaus konfiguriert im Portal „nur diese Base-Images erlaubt" (z. B. hospital-approved Ubuntu 24.04 LTS mit Patch-Level X); Kubernetes Admission Controller (OPA Gatekeeper, Kyverno) blockiert Deployment nicht-genehmigter Images
- **Anbieter-Images gehärtet**: CIS-Benchmarks Level 1/2 als Baseline, Kernel-Hardening (Grsec-Alternativen wie Landlock, seccomp-profiles), minimale Angriffsfläche (distroless containers), automatisierte Vulnerability-Scans (Trivy, Grype); Härtungs-Attest im Image-Metadata
- **Image-Signing** (Complementing): Sigstore/Cosign-Signaturen für alle Anbieter-Images; Runtime-Verifikation via Notary/Connaisseur; Kunde bekommt Verifikations-Status im Deployment-Log; Failed-Verification → Blocking + Alert
- **Runtime-Protection** (Complementing): Falco/Sysdig für Anomalie-Detection, Read-only Root-Filesystem für Container, immutable Infrastructure-Pattern, Container-Escape-Detection, Ausgehende Alerts an Kunden-SIEM bei Manipulations-Verdacht

## Verwandte Kriterien

- [[PSS-10 Software Defined Networking]]
- [[OPS-26 Managing Vulnerabilities, Incidents and Crashes - System Hardening]]
- [[OPS-32 Container Management - Policies and Procedures]]
- [[OPS-33 Container Management - Trusted Deployments]]
- [[OPS-34 Container Management - Restrictive Deployment]]
- [[OPS-35 Container Management - Isolation]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[DEV-13 Transparency about Software Components]]
