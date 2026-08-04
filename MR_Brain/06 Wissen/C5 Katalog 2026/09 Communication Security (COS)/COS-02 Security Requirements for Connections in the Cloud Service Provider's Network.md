---
title: COS-02 Security Requirements for Connections in the Cloud Service Provider's Network
project: "[[C5 Katalog 2026]]"
c5-id: COS-02
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-02
---

# COS-02 · Security Requirements for Connections in the Cloud Service Provider's Network

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-02 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### COS-02.01B — Basic

**Kriterium (EN):**

> Specific security requirements are designed, documented and provided for establishing connections within the cloud service provider's network. The security requirements define for the cloud service provider's area of responsibility:
>
> 1. In which cases the security zones are to be separated and in which cases cloud service customers are to be logically or physically separated;
> 2. Which communication relationships and which network and application protocols are permitted in each case;
> 3. How the data traffic for administration and monitoring is separated from each on network level;
> 4. How office networks are secured with firewalls and secure WIFI configurations as well as VPN for remote access;
> 5. Which internal, cross-partition communication is permitted; and
> 6. Which cross-network communication is allowed.

**Deutsche Übersetzung:**

Spezifische Sicherheitsanforderungen sind für den Aufbau von Verbindungen innerhalb des Netzwerks des Cloud-Diensteanbieters entworfen, dokumentiert und bereitgestellt. Die Sicherheitsanforderungen definieren für den Verantwortungsbereich des Cloud-Diensteanbieters:

1. In welchen Fällen Sicherheitszonen zu trennen sind und in welchen Fällen Cloud-Dienstkunden logisch oder physisch zu trennen sind;
2. Welche Kommunikationsbeziehungen und welche Netzwerk- und Anwendungsprotokolle jeweils zulässig sind;
3. Wie der Datenverkehr für Administration und Monitoring auf Netzwerkebene voneinander getrennt wird;
4. Wie Büro-Netzwerke mit Firewalls und sicheren WLAN-Konfigurationen sowie VPN für Remote-Zugriff gesichert werden;
5. Welche interne, zonenübergreifende Kommunikation zulässig ist;
6. Welche netzwerkübergreifende Kommunikation zulässig ist.

**Zusatzinformation (DE):**

Zonenübergreifende Kommunikation kann für einzelne Regionen oder Standorte z. B. via WAN, LAN, VPN oder RAS realisiert werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Netzwerk-Segmentierung-Framework**: klar dokumentierte Zonen (DMZ, App-Tier, Data-Tier, Admin-Tier, Isolated-Tier für hochsensitive Berechnungen); Kommunikationsmatrix als IaC (z. B. Terraform + AWS Security Groups) — nur explizit erlaubte Verbindungen
- **Protokoll-Whitelist**: nur HTTPS/TLS 1.3 kunden-facing; interne Services nur gRPC über mTLS oder HTTPS; keine offenen Ports außerhalb Whitelist; SSH nur via Bastion, kein direkter Zugriff auf Prod-Nodes
- **Admin-Traffic isoliert**: eigenes VLAN/VPC für Management-Traffic (Monitoring, Deployment, Admin-Access); logisch getrennt von Kunden-Traffic; separates IAM-Regime; wichtig um Kompromittierung des Kunden-Netzwerks nicht auf Admin auszuweiten
- **Office-Netzwerk-Security**: Zero Trust Architecture (statt Perimeter-VPN); Device-Attestation vor Zugriff (Microsoft Intune, Jamf); WLAN nach WPA3-Enterprise mit RADIUS/EAP-TLS; Split-Tunneling verboten für Prod-Zugriff

## Verwandte Kriterien

- [[COS-01 Technical Safeguards]]
- [[COS-03 Monitoring of Connections in the Cloud Service Provider's Network]]
- [[COS-04 Cross-Network Access]]
- [[COS-05 Networks for Administration]]
- [[COS-06 Separation of Data Traffic in Jointly Used Network Environments]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
