---
title: COS-05 Networks for Administration
project: "[[C5 Katalog 2026]]"
c5-id: COS-05
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-05
---

# COS-05 · Networks for Administration

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-05 · **Unterkriterien:** 3 (2 Basic · 1 Complementing)

## Unterkriterien

### COS-05.01B — Basic

**Kriterium (EN):**

> There are separate networks for the administrative management of the infrastructure and for the operation of management consoles. These networks are logically or physically separated from the cloud service customer's network and protected from unauthorised access by multi-factor authentication (cf. IAM-08).

**Deutsche Übersetzung:**

Es existieren separate Netzwerke für die administrative Verwaltung der Infrastruktur und für den Betrieb von Management-Konsolen. Diese Netzwerke sind logisch oder physisch vom Kundennetzwerk getrennt und durch **Multi-Faktor-Authentifizierung** vor unautorisiertem Zugriff geschützt (vgl. [[IAM-08 Authentication Mechanisms|IAM-08]]).

**Zusatzinformation (DE):**

Die Trennung kann physisch oder logisch erfolgen (z. B. **VLAN**, **SDN**, **VRF**).

---

### COS-05.02B — Basic

**Kriterium (EN):**

> Networks used by the cloud service provider to create, migrate or orchestrate compute workloads (e.g. virtual machines, containers, functions) are physically or logically separated from tenant networks.

**Deutsche Übersetzung:**

Netzwerke, die der Cloud-Diensteanbieter zur Erstellung, Migration oder Orchestrierung von Compute-Workloads (z. B. VMs, Container, Functions) nutzt, sind physisch oder logisch von Tenant-Netzwerken getrennt.

---

### COS-05.01AC — Additional (Complementing)

**Kriterium (EN):**

> If there is no physical separation between the administration networks and other networks, the administration network traffic uses state of the art encryption (cf. CRY-01).

**Deutsche Übersetzung:**

Wenn keine physische Trennung zwischen Administrations-Netzwerken und anderen Netzwerken besteht, nutzt der Administrations-Netzwerkverkehr dem Stand der Technik entsprechende Verschlüsselung (vgl. [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Dediziertes Management-VPC / Admin-VLAN**: strikt getrennt von Kunden-Traffic; Bastion Host oder Jump-Server als einzige Zugangspunkte; alle Admin-Zugriffe über PAM-System (Session-Recording, MFA)
- **Control-Plane vs. Data-Plane**: Kubernetes-Cluster mit separierter Control-Plane (Master-Nodes, etcd, API-Server) in Admin-Netz; Worker-Nodes in Data-Netz; kein direkter Zugriff vom Data-Netz auf Control-Plane
- **Orchestrierungs-Netzwerk isoliert**: Provisioning-Services (Terraform-Runner, CI/CD-Runner, Configuration-Management) laufen in eigenem Segment; kein Zugriff auf Kundendaten; nur ausgehende API-Calls zu Cloud-Provider-APIs
- **VPN + mTLS für Admin-Traffic** (Complementing): wenn keine physische Trennung, dann WireGuard oder IPsec-Tunnel; zusätzlich mTLS zwischen Admin-Tools und Managed-Systemen; keine unverschlüsselten Admin-Sessions

## Verwandte Kriterien

- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-06 Separation of Data Traffic in Jointly Used Network Environments]]
- [[IAM-06 Privileged Access Rights]]
- [[IAM-08 Authentication Mechanisms]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-04 Protection of Data for Transmission (Transport Protection)]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
