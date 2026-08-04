---
title: COS-06 Separation of Data Traffic in Jointly Used Network Environments
project: "[[C5 Katalog 2026]]"
c5-id: COS-06
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-06
---

# COS-06 · Separation of Data Traffic in Jointly Used Network Environments

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-06 · **Unterkriterien:** 2 (1 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Wenn der Cloud-Diensteanbieter keine gemeinsam genutzten Netzwerkumgebungen für Cloud-Dienstkunden nutzt und stattdessen physische Trennung einsetzt, ist das Basiskriterium nicht anwendbar.
>
> Wenn Eignung und Wirksamkeit der logischen Segmentierung nicht mit hinreichender Sicherheit bewertet werden können (z. B. aufgrund komplexer Implementierung), können Nachweise auch auf Basis von Audit-Ergebnissen sachverständiger Dritter (z. B. Security Audits zur Validierung des Frameworks) erbracht werden.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen für die von ihnen verantworteten Teile durch geeignete Kontrollen sicher, dass virtuelle Netzwerke gemäß ihren Netzwerksicherheitsanforderungen entworfen, konfiguriert und dokumentiert sind (z. B. logische Segmentierung der Organisationseinheiten).

## Unterkriterien

### COS-06.01B — Basic

**Kriterium (EN):**

> Cloud service customer data traffic in jointly used network environments is separated on network level according to a documented framework to ensure the confidentiality and integrity of the data transmitted.

**Deutsche Übersetzung:**

Kunden-Datenverkehr in gemeinsam genutzten Netzwerkumgebungen wird auf Netzwerkebene gemäß einem dokumentierten Framework getrennt, um Vertraulichkeit und Integrität der übertragenen Daten sicherzustellen.

---

### COS-06.01AC — Additional (Complementing)

**Kriterium (EN):**

> In the case of IaaS/PaaS, the secure separation is ensured by physically separated networks or by means of state of the art encryption in combination with logical network separation or encapsulation.

**Deutsche Übersetzung:**

Bei **IaaS/PaaS** wird die sichere Trennung durch physisch getrennte Netzwerke oder mittels dem Stand der Technik entsprechender Verschlüsselung in Kombination mit logischer Netzwerktrennung oder Encapsulation sichergestellt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Multi-Tenant-Netzwerktrennung**: pro Krankenhaus-Kunde eigener VPC/VNet oder eigene Namespaces mit strikten NetworkPolicies (Kubernetes) + Overlay-Networking (Cilium, Calico); keine ungewollte Cross-Tenant-Kommunikation möglich
- **VXLAN + mTLS** für East-West-Traffic (Complementing für IaaS/PaaS): Encapsulation via VXLAN/GENEVE für logische Trennung, zusätzlich Service-Mesh (Istio, Linkerd) mit mTLS zwischen allen Services; doppelter Schutz gegen Cross-Tenant-Zugriff
- **Framework „Cloud Layer Separation"** dokumentiert: welche Layer (L2/L3/L4/L7) welche Trennung sicherstellen; welche kompensierenden Maßnahmen bei welchem Layer angewandt werden; Prüfung durch externes Pentest-Team jährlich
- **Third-Party-Audit-Nachweis**: bei komplexer Multi-Tenancy zusätzliche Validierung durch externe Prüfer (ISO 27017-Audit oder BSI C5-Attest mit Fokus auf Isolation); Ergebnisse in Kunden-Trust-Report

## Verwandte Kriterien

- [[COS-01 Technical Safeguards]]
- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-05 Networks for Administration]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[CRY-04 Protection of Data for Transmission (Transport Protection)]]
