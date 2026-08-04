---
title: PSS-10 Software Defined Networking
project: "[[C5 Katalog 2026]]"
c5-id: PSS-10
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-10
---

# PSS-10 · Software Defined Networking

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-10 · **Unterkriterien:** 2 (2 Basic)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium ist typischerweise nicht auf das **SaaS**-Service-Modell anwendbar. Geeignete SDN-Methoden zur Erhöhung der Vertraulichkeit sind z. B. **L2 Overlay Networking (Tagging)** oder **Tunnelling/Encapsulation**.

## Unterkriterien

### PSS-10.01B — Basic

**Kriterium (EN):**

> If the cloud service offers functions for software-defined networking (SDN), the confidentiality of cloud service customer data is ensured by suitable SDN procedures.

**Deutsche Übersetzung:**

Wenn der Cloud-Dienst Funktionen für **Software-Defined Networking (SDN)** anbietet, wird die Vertraulichkeit der Kundendaten durch geeignete SDN-Verfahren sichergestellt.

---

### PSS-10.02B — Basic

**Kriterium (EN):**

> The cloud service provider validates the functionality of the SDN functions before providing new SDN features to cloud service customers or modifying existing SDN features. Identified defects are assessed and corrected in a risk-oriented manner.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter validiert die Funktionalität der SDN-Funktionen, bevor neue SDN-Features für Cloud-Dienstkunden bereitgestellt oder bestehende SDN-Features modifiziert werden. Identifizierte Mängel werden bewertet und risikoorientiert behoben.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **VXLAN/GENEVE-Overlay**: pro Kunde eigenes virtuelles Netzwerk mit eindeutiger VNI; Traffic zwischen Kunden physikalisch nicht routbar; Zusätzlich MACsec/IPsec auf Underlay für Confidentiality-in-Transit
- **Micro-Segmentation** via SDN: pro Kundenapplikation isolierte Segmente; Ost-West-Traffic zwischen Segmenten blockiert soweit nicht explizit erlaubt; wichtig für Krankenhaus-Multi-Tenant-Umgebung (Krankenhaus A darf nicht auf Krankenhaus-B-Traffic zugreifen)
- **SDN-Testing** vor Release: Traffic-Isolation-Tests (Kunde A pingt Kunde B → blockiert), Broadcast-Storm-Tests, Path-Verification (Traffic bleibt in gewünschter Region); automatisiert in Testlabor mit realistischen Multi-Tenant-Setups
- **Vulnerability-Handling für SDN-Controller**: SDN-Controller ist kritische Komponente — dedizierte Härtung, engmaschiges Monitoring, priorisierte Patches; Isolation von Management-Plane und Data-Plane; hoher Rank in Vulnerability-Prio

## Verwandte Kriterien

- [[PSS-11 Images for Virtual Machines and Containers]]
- [[COS-01 Technical Safeguards for Communication and Access Control]]
- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-03 Monitoring of Connections in the Cloud Service Provider's Network]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
- [[DEV-07 Testing Changes]]
