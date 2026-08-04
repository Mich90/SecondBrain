---
title: COS-07 Documentation of the Network Topology
project: "[[C5 Katalog 2026]]"
c5-id: COS-07
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-07
---

# COS-07 · Documentation of the Network Topology

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-07 · **Unterkriterien:** 4 (4 Basic)

> [!note] Gemeinsame Zusatzinformation
> Die Netzwerk-Dokumentation kann einem hierarchischen oder gruppierten Ansatz folgen, basierend auf dem Umfang des Betriebs. **Zoning** ist eine Segmentierung der Subnetze mit einer Firewall an den Netzwerk-Perimetern.

## Unterkriterien

### COS-07.01B — Basic

**Kriterium (EN):**

> The documentation of the logical structure of the network used to provide or operate the cloud service is traceable and up-to-date, in order to avoid administrative errors during live operation and to ensure timely recovery in the event of incidents in accordance with contractual obligations. The documentation shows:
>
> 1. How the subnets are allocated;
> 2. How the network is zoned and segmented;
> 3. How the network connects with third party and public networks; and
> 4. How the data flows between different subnets and system components within the network to support the management, monitoring and analysis of the network.

**Deutsche Übersetzung:**

Die Dokumentation der logischen Struktur des Netzwerks, das zur Erbringung oder zum Betrieb des Cloud-Dienstes genutzt wird, ist nachvollziehbar und aktuell, um administrative Fehler im Livebetrieb zu vermeiden und im Vorfallfall die zeitnahe Wiederherstellung gemäß den vertraglichen Verpflichtungen sicherzustellen. Die Dokumentation zeigt:

1. Wie die Subnetze zugewiesen sind;
2. Wie das Netzwerk gezont und segmentiert ist;
3. Wie das Netzwerk mit Drittanbieter- und öffentlichen Netzwerken verbunden ist;
4. Wie die Datenflüsse zwischen verschiedenen Subnetzen und Systemkomponenten innerhalb des Netzwerks verlaufen, um Management, Monitoring und Analyse zu unterstützen.

---

### COS-07.02B — Basic

**Kriterium (EN):**

> The partitions, regions, zones or location in which the cloud service customer data is stored are indicated.

**Deutsche Übersetzung:**

Die Partitionen, Regionen, Zonen oder Standorte, in denen Kundendaten gespeichert sind, werden angegeben.

---

### COS-07.03B — Basic

**Kriterium (EN):**

> The cloud service provider establishes and maintains an accurate representation of the technical and logical structure of the cloud service provider's systems based on the network topology documentation and the asset inventory (cf. AM-02). The documentation includes the system components that provide security functions and the system components that host the corresponding cloud service customer data and cloud service derived data, or provide sensitive functions.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter etabliert und pflegt eine genaue Darstellung der technischen und logischen Struktur der Systeme des Cloud-Diensteanbieters, basierend auf der Netzwerk-Topologie-Dokumentation und dem Asset-Inventar (vgl. [[AM-02 Asset Inventory|AM-02]]). Die Dokumentation umfasst die Systemkomponenten, die Sicherheitsfunktionen bereitstellen, und die Systemkomponenten, die die entsprechenden Kunden- und abgeleiteten Daten hosten oder sensitive Funktionen bereitstellen.

---

### COS-07.04B — Basic

**Kriterium (EN):**

> The network topology documentation is reviewed at least once a year. Timely and appropriate remediation measures address any deviations identified during the review.

**Deutsche Übersetzung:**

Die Netzwerk-Topologie-Dokumentation wird **mindestens einmal jährlich** überprüft. Zeitnahe und angemessene Behebungsmaßnahmen adressieren im Rahmen des Reviews festgestellte Abweichungen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Network-as-Code**: gesamte Topologie in Terraform/CloudFormation kodiert und in Git versioniert; automatisch generierte Diagramme (z. B. via `terraform graph`, cloudcraft.co, hava.io); stets aktuell durch IaC-Prinzip
- **Data-Residency-Karte**: pro Kunde sichtbar, in welchen Regionen (Frankfurt, Berlin, Ireland) welche Daten liegen; Backup-Regionen dokumentiert; wichtig für DSGVO-Nachweis (Auftragsverarbeitungsvertrag, TOMs, Anlage zum AVV)
- **Data-Flow-Diagramme** je Feature: welche Daten fließen wohin? Wo sind Trust-Boundaries? Wo passiert Encryption/Decryption? Wo Access-Control? Wichtiger Input für Threat Modelling (STRIDE, LINDDUN)
- **Jährlicher Review** mit Netzwerk-Verantwortlichen + Security-Architects: Abgleich Dokumentation ↔ Realität; Findings dokumentieren; Verbesserungen implementieren; Update von Threat-Modellen und Kunden-Trust-Reports

## Verwandte Kriterien

- [[COS-01 Technical Safeguards]]
- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-03 Monitoring of Connections in the Cloud Service Provider's Network]]
- [[AM-01 Asset Register]]
- [[AM-02 Asset Inventory]]
- [[OIS-03 Interfaces and Dependencies]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
