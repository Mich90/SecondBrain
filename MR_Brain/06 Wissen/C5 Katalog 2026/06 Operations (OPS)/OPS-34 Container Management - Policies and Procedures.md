---
title: OPS-34 Container Management - Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: OPS-34
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-34
---

# OPS-34 · Container Management — Policies and Procedures

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-34 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

## Unterkriterien

### OPS-34.01B — Basic

**Kriterium (EN):**

> Policies and procedures with technical and organisational measures for the planning and management of containers are documented, communicated and provided in accordance with SP-01. These policies and procedures contain specifications for the entire container life cycle regarding at least the following aspects:
>
> 1. Image creation, testing, and validation;
> 2. Image storage and retrieval;
> 3. Container deployment and management;
> 4. Container operations; and
> 5. Decommissioning of images and container.

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit technischen und organisatorischen Maßnahmen zur Planung und Verwaltung von Containern sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt. Sie enthalten Vorgaben für den gesamten Container-Lebenszyklus zu mindestens folgenden Aspekten:

1. Image-Erstellung, -Test und -Validierung;
2. Image-Speicherung und -Abruf;
3. Container-Deployment und -Verwaltung;
4. Container-Betrieb;
5. Außerbetriebnahme von Images und Containern.

---

### OPS-34.02B — Basic

**Kriterium (EN):**

> The policies and procedures describe measures along the life cycle of containers and address at least the following aspects:
>
> 1. Containers are inventoried according to a documented process (cf. AM-02, AM-03, AM-09);
> 2. The need for malware protection is assessed and, if necessary, ensured (cf. OPS-05);
> 3. Logging and monitoring of events takes place along the container lifecycle and is executed according to a defined logging framework (cf. OPS-10, OPS-12);
> 4. Cloud service customer data is separated based on a risk assessment (cf. OPS-30);
> 5. Access to the container host should take place in accordance with a roles and rights framework and a policy for managing access and access authorisations (cf. IAM-01, IAM-06);
> 6. Data stored on containers and data in transit should be encrypted as far as possible by the provider in accordance with the encryption policy (cf. CRY-01);
> 7. Measures to ensure network security are established. This includes, for example, measures to detect network anomalies (cf. COS-01 and COS-03) such as unexpected data flows within the network or unwanted access attempts;
> 8. Changes to containers and images follow a regulated process (cf. DEV-03); and
> 9. Hardening processes are carried out according to general industry standards to ensure that no unnecessary system services are executed (cf. PSS-11).

**Deutsche Übersetzung:**

Die Richtlinien und Verfahren beschreiben Maßnahmen entlang des Container-Lebenszyklus und adressieren mindestens folgende Aspekte:

1. Container werden gemäß einem dokumentierten Prozess inventarisiert (vgl. [[AM-02 Asset Inventory|AM-02]], [[AM-03 Ownership of Assets|AM-03]], [[AM-09 Asset Classification and Labelling|AM-09]]);
2. Der Bedarf an Malware-Schutz wird bewertet und ggf. sichergestellt (vgl. [[OPS-05 Protection Against Malware - Implementation|OPS-05]]);
3. Logging und Monitoring von Ereignissen erfolgt entlang des Container-Lebenszyklus gemäß einem definierten Logging-Framework (vgl. [[OPS-10 Logging and Monitoring - Policies and Procedures|OPS-10]], [[OPS-12 Logging and Monitoring - Access, Retention and Deletion|OPS-12]]);
4. Kundendaten werden basierend auf einer Risikobewertung getrennt (vgl. [[OPS-30 Separation of Datasets - Policies and Procedures|OPS-30]]);
5. Der Zugriff auf den Container-Host erfolgt gemäß einem Rollen- und Rechte-Framework und einer Zugriffs-Policy (vgl. [[IAM-01 Policy for Identities and Access Rights|IAM-01]] *(noch nicht angelegt)*, [[IAM-06 Locking, Unlocking and Revocation of Access Authorisations|IAM-06]] *(noch nicht angelegt)*);
6. Auf Containern gespeicherte Daten und Daten in Transit sind — soweit möglich — durch den Anbieter gemäß der Kryptographie-Policy verschlüsselt (vgl. [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*);
7. Maßnahmen zur Netzwerksicherheit sind etabliert (u. a. zur Erkennung von Netzwerk-Anomalien wie unerwarteten Datenflüssen oder unerwünschten Zugriffsversuchen, vgl. [[COS-01 Technical Safeguards|COS-01]] *(noch nicht angelegt)*, [[COS-03 Monitoring of Connections|COS-03]] *(noch nicht angelegt)*);
8. Änderungen an Containern und Images folgen einem geregelten Prozess (vgl. [[DEV-03 Policies for Changes to System Components|DEV-03]] *(noch nicht angelegt)*);
9. Härtungsprozesse erfolgen gemäß allgemeinen Industriestandards, um sicherzustellen, dass keine unnötigen Systemdienste ausgeführt werden (vgl. [[PSS-11 System Hardening|PSS-11]] *(noch nicht angelegt)*).

---

### OPS-34.01AC — Additional (Complementing)

**Kriterium (EN):**

> The policies and procedures additionally describe measures along the life cycle of containers that address at least the following aspects:
>
> 1. Container images are cryptographically signed and the signing key securely stored (cf. CRY-10) to ensure their authenticity and integrity;
> 2. Container behaviour is monitored and restricted using runtime security controls; and
> 3. Software products used for the provision of container images are, where possible, regularly scanned for known vulnerabilities or malicious components in container images and dependencies.

**Deutsche Übersetzung:**

Die Richtlinien und Verfahren beschreiben zusätzlich Maßnahmen entlang des Container-Lebenszyklus zu mindestens folgenden Aspekten:

1. Container-Images sind **kryptographisch signiert**, der Signierschlüssel sicher aufbewahrt (vgl. [[CRY-10 Handling of Keys|CRY-10]] *(noch nicht angelegt)*), um Authentizität und Integrität sicherzustellen;
2. Container-Verhalten wird mittels **Runtime Security Controls** überwacht und eingeschränkt;
3. Software-Produkte, die zur Bereitstellung von Container-Images genutzt werden, werden — wo möglich — regelmäßig auf bekannte Schwachstellen oder bösartige Komponenten in Container-Images und Dependencies gescannt.

**Zusatzinformation (DE):**

Bei Drittanbieter- und OSS-Produkten für Container-Images entsprechen Scanning-Verfahren den in [[DEV-14 Third Party or Open Source Software|DEV-14]] *(noch nicht angelegt)* definierten Richtlinien und Verfahren.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Container-Lifecycle-Policy** dokumentiert: Build (SBOM, Vuln-Scan, Sign) → Registry (nur signierte Images, Retention Policy) → Deploy (Admission Controller prüft Signatur + Policy) → Run (Runtime Security) → Decommission (Cleanup, Log-Archivierung)
- **Signed Images mit Cosign/Notary**: private Signing-Keys in HSM oder GitHub OIDC; Signatur-Verifikation über Open Policy Agent (OPA) Gatekeeper in K8s Admission Controller; kein unsigniertes Image lauffähig in Prod
- **Runtime Security** mit Falco, Sysdig oder Aqua: Anomalie-Erkennung (unerwarteter Prozess-Start, Netzwerk-Anomalie, Datei-Änderung); Enforcement via Kubernetes NetworkPolicies, Pod Security Standards (Restricted)
- **Regelmäßiges Image-Scanning** in Registry (z. B. via Harbor, ECR Scanning, Trivy Operator): Rescans wöchentlich für aktive Images, sofortige Alarme bei neuen CVEs; automatische Rebuild-Trigger bei kritischen Fixes

## Verwandte Kriterien

- [[OPS-05 Protection Against Malware - Implementation]]
- [[OPS-10 Logging and Monitoring - Policies and Procedures]]
- [[OPS-26 Managing Vulnerabilities, Incidents and Crashes - System Hardening]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-35 Container Management - Implementation]]
- [[AM-02 Asset Inventory]]
- [[AM-09 Asset Classification and Labelling]]
