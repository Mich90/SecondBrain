---
title: COS-01 Technical Safeguards
project: "[[C5 Katalog 2026]]"
c5-id: COS-01
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-01
---

# COS-01 · Technical Safeguards

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-01 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen für die von ihnen verantworteten Teile des Cloud-Dienstes (z. B. VMs in IaaS) durch geeignete Kontrollen sicher, dass sie netzwerk-basierte Angriffe (z. B. MAC Spoofing, ARP Poisoning) auf Basis anomaler eingehender und ausgehender Traffic-Muster erkennen und darauf reagieren.

## Unterkriterien

### COS-01.01B — Basic

**Kriterium (EN):**

> Based on the results of a risk assessment carried out according to OIS-07, the cloud service provider has implemented technical safeguards which are suitable to timely detect and respond to attacks on the network of system components used for provisioning of the cloud service.

**Deutsche Übersetzung:**

Basierend auf den Ergebnissen einer Risikobewertung gemäß [[OIS-07 Risk Management Policy|OIS-07]] hat der Cloud-Diensteanbieter technische Schutzmaßnahmen implementiert, die geeignet sind, Angriffe auf das Netzwerk der zur Erbringung des Cloud-Dienstes genutzten Systemkomponenten zeitnah zu erkennen und darauf zu reagieren.

---

### COS-01.02B — Basic

**Kriterium (EN):**

> For these technical safeguards, preventive and protective measures are implemented at multiple tiers (defence in depth) within the cloud service to mitigate the risk of breaching the deployed defensive system. This includes network-based cyber attacks such as:
>
> 1. Attacks on the basis of irregular incoming or outgoing traffic patterns;
> 2. Distributed Denial-of-Service (DDoS) attacks;
> 3. Spoofing attacks;
> 4. Code injection attacks;
> 5. DNS tunneling; and
> 6. IoT attacks targeting devices within a network.

**Deutsche Übersetzung:**

Für diese technischen Schutzmaßnahmen sind präventive und schützende Maßnahmen in mehreren Ebenen (**Defence in Depth**) innerhalb des Cloud-Dienstes implementiert, um das Risiko eines Durchbruchs des eingesetzten Verteidigungssystems zu mindern. Dies umfasst netzwerk-basierte Cyber-Angriffe wie:

1. Angriffe auf Basis irregulärer eingehender oder ausgehender Traffic-Muster;
2. **Distributed Denial-of-Service (DDoS)**-Angriffe;
3. **Spoofing**-Angriffe;
4. **Code Injection**-Angriffe;
5. **DNS Tunneling**;
6. **IoT-Angriffe** auf Geräte innerhalb eines Netzwerks.

**Zusatzinformation (DE):**

Technische Schutzmaßnahmen, die Schutz und Prävention auf mehreren Ebenen bieten, sind z. B. eine besondere Trennung im Identity- und Access-Management, separate Logs für Schutzsysteme und Web Application Firewalls (WAFs) für den Zugriff auf Schutzsysteme.

Netzwerk-basierte Angriffe können z. B. mit MAC-Spoofing und ARP-Poisoning durchgeführt werden. Technische Schutzmaßnahmen zur Verhinderung, dass unbekannte physische oder virtuelle Geräte einem physischen oder virtuellen Netzwerk beitreten, können auf **MACsec (IEEE 802.1AE)** basieren.

---

### COS-01.03B — Basic

**Kriterium (EN):**

> Data from corresponding technical safeguards implemented (cloud service provider data) is fed into the organisation's SIEM system (cf. OPS-13), so that (counter-) measures regarding correlating events can be initiated. The safeguards are documented, communicated and provided in accordance with SP-01.

**Deutsche Übersetzung:**

Daten aus den entsprechend implementierten technischen Schutzmaßnahmen (Anbieter-Daten) werden in das SIEM-System der Organisation (vgl. [[OPS-13 Logging and Monitoring - Security Information and Event Management|OPS-13]]) eingespielt, sodass (Gegen-)Maßnahmen bezüglich korrelierender Ereignisse eingeleitet werden können. Die Schutzmaßnahmen sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt.

---

### COS-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> Technical safeguards ensure that no unknown (physical or virtual) devices join the cloud service provider's (physical or virtual) network.

**Deutsche Übersetzung:**

Technische Schutzmaßnahmen stellen sicher, dass keine unbekannten (physischen oder virtuellen) Geräte dem (physischen oder virtuellen) Netzwerk des Cloud-Diensteanbieters beitreten.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Defence-in-Depth-Stack**: DDoS-Schutz am Perimeter (Cloudflare, AWS Shield Advanced) → WAF (Cloudflare WAF, AWS WAF, Modsecurity) mit OWASP Core Rule Set → API Gateway mit Rate-Limiting → Runtime Application Self-Protection (RASP); Fokus auf Healthcare-typische Angriffe (Injection, XSS gegen Patienten-Portale)
- **Anomalie-Erkennung**: NDR-Lösung (Network Detection & Response) wie Vectra, Darktrace oder Corelight; Baseline pro Segment; Alarm bei Abweichungen (z. B. plötzlicher DNS-Traffic zu unbekannten Domains = möglicher DNS Tunnel)
- **Network Access Control** (Complementing): 802.1X mit MACsec für physisches Netzwerk; Cloud-Native mit AWS VPC Endpoint Policies + Security Groups + Network ACLs; keine unbekannten Ressourcen ohne Attestation (bei confidential computing)
- **SIEM-Ingestion** aus Netzwerk-Schutzmaßnahmen: WAF-Blocks, DDoS-Mitigation-Events, IDS/IPS-Alerts, Firewall-Denies → SIEM → Korrelation mit anderen Signalen (SIEM = Splunk, Sentinel, QRadar); Playbooks für Auto-Response

## Verwandte Kriterien

- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-03 Monitoring of Connections in the Cloud Service Provider's Network]]
- [[COS-04 Cross-Network Access]]
- [[COS-06 Separation of Data Traffic in Jointly Used Network Environments]]
- [[OPS-13 Logging and Monitoring - Security Information and Event Management]]
- [[OIS-07 Risk Management Policy]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
