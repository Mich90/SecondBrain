---
title: AM-04 Software Asset Inventory
project: "[[C5 Katalog 2026]]"
c5-id: AM-04
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-04
---

# AM-04 · Software Asset Inventory

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-04 · **Unterkriterien:** 2 (1 Basic · 1 Complementing)

## Unterkriterien

### AM-04.01B — Basic

**Kriterium (EN):**

> The cloud service provider maintains a comprehensive inventory of all software assets, including used software (cf. AM-02). This inventory includes information for each entry that:
>
> 1. Enables the identification of the software asset;
> 2. Provides visibility into which other assets use the software asset for the provision of the cloud service; and
> 3. Enables the cloud service provider to control the software asset, perform a risk assessment and protect its information security.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter pflegt ein umfassendes Inventar aller Software-Assets — einschließlich genutzter Software (vgl. [[AM-02 Asset Inventory|AM-02]]). Dieses Inventar enthält für jeden Eintrag Informationen, die:

1. Die Identifikation des Software-Assets ermöglichen;
2. Sichtbarkeit bieten, welche anderen Assets das Software-Asset für die Erbringung des Cloud-Dienstes nutzen;
3. Dem Cloud-Diensteanbieter erlauben, das Software-Asset zu steuern, eine Risikobewertung durchzuführen und dessen Informationssicherheit zu schützen.

**Zusatzinformation (DE):**

Dieses Basiskriterium kann (muss aber nicht) durch die Aufnahme folgender Details pro Eintrag erfüllt werden:

1. Identifikationsdetails (Name, IP-Adresse, MAC-Adresse etc.);
2. Version der Software;
3. Übergeordnete Ressource (Hardware-Asset oder Software-Asset), auf der die Software installiert ist.

---

### AM-04.01AC — Additional (Complementing)

**Kriterium (EN):**

> The inventory also includes information for each entry that provides visibility into how long the software asset will receive security updates from its supplier, if such a time frame has been communicated by the supplier.

**Deutsche Übersetzung:**

Das Inventar enthält für jeden Eintrag zusätzlich Informationen darüber, wie lange das Software-Asset Sicherheitsupdates vom Lieferanten erhält — sofern ein solcher Zeitrahmen vom Lieferanten kommuniziert wurde.

**Zusatzinformation (DE):**

Dieses zusätzliche Kriterium kann durch die Aufnahme von Lizenzinformationen einschließlich kommunizierter End-of-Support-Daten für die lizenzierte Software erfüllt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **SBOM (Software Bill of Materials)** automatisch pro Build erzeugen (z. B. Syft, CycloneDX-Format); Speicherung im Artifact Registry mit Verknüpfung zu Deployment-Artefakten; Grundlage für Vulnerability Scanning (SCA)
- **Software-Inventar-Sync** aus mehreren Quellen: Container Registry (Images + Base OS + Layers), Package-Manager (npm, PyPI, Maven), Betriebssystem-Pakete (apt/rpm), Third-Party-Lizenzen (Snyk, WhiteSource); zentral aggregiert in CMDB
- **End-of-Support-Alarm**: pro Software-Version EoL/EoS-Datum tracken; 6 Monate vor Ablauf automatisches Ticket an Team; besonders kritisch bei Krypto-Libs (OpenSSL, BouncyCastle) und OS-Kernels
- **Dependency-Graph** für Impact Analysis: bei CVE X kann Security-Team in 5 min sehen: „Betroffen: Service A (v1.2, Prod), Service B (v0.9, Staging); Kunden im Impact-Fall: 12 Krankenhäuser"

## Verwandte Kriterien

- [[AM-01 Asset Management Framework]]
- [[AM-02 Asset Inventory]]
- [[AM-03 Hardware Asset Inventory]]
- [[OPS-22 Managing Vulnerabilities - System Component Vulnerability Scans|OPS-22]] *(noch nicht angelegt)*
- [[OPS-27 Managing Vulnerabilities - Patch Management|OPS-27]] *(noch nicht angelegt)*
- [[DEV-14 Secure Use of Third Party Hardware and Software|DEV-14]] *(noch nicht angelegt)*
