---
title: COS-04 Cross-Network Access
project: "[[C5 Katalog 2026]]"
c5-id: COS-04
c5-area: COS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cos
aliases:
  - COS-04
---

# COS-04 · Cross-Network Access

> [!info] Kontext
> **Bereich:** Communication Security (COS) · **Kriterium-ID:** COS-04 · **Unterkriterien:** 3 (2 Basic · 1 Sharpening)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass Zugriffe gemäß ihren Schutzbedarfen durch Security Gateways an den Perimetern der virtuellen Netzwerke innerhalb des Cloud-Dienstes gesteuert werden, für die sie verantwortlich sind.

## Unterkriterien

### COS-04.01B — Basic

**Kriterium (EN):**

> Each network perimeter is controlled by security gateways.

**Deutsche Übersetzung:**

Jeder Netzwerk-Perimeter wird durch **Security Gateways** kontrolliert.

---

### COS-04.01AS — Additional (Sharpening)

**Kriterium (EN):**

> Each network perimeter is controlled by redundant and highly available security gateways.

**Deutsche Übersetzung:**

Jeder Netzwerk-Perimeter wird durch **redundante und hochverfügbare** Security Gateways kontrolliert.

---

### COS-04.02B — Basic

**Kriterium (EN):**

> The system access authorisation for cross-network access is based on a security assessment based on the requirements of the cloud service customers.

**Deutsche Übersetzung:**

Die System-Zugriffsberechtigung für netzwerkübergreifenden Zugriff basiert auf einer Sicherheitsbewertung, die auf den Anforderungen der Cloud-Dienstkunden basiert.

**Zusatzinformation (DE):**

Ein Security Gateway ist ein Stack verketteter Filter- und Firewall-Komponenten, die die Kommunikation auf explizit erlaubten Traffic beschränken. Security Gateways können z. B. eine **P-A-P-Struktur** (Packet Filter — Application-Level-Gateway — Packet Filter) einsetzen, bestehend aus einem äußeren Packet-Filter, einem Application-Level-Gateway als Deep-Inspection-Proxy und einem inneren Packet-Filter. Der Stack kann durch IDS, IPS oder Antivirus-Scanner ergänzt werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Perimeter-Stack mit Redundanz** (Sharpening): CDN mit DDoS-Schutz (Cloudflare, AWS Shield) → WAF (2× active/active) → Load Balancer (multi-AZ) → API Gateway (Kong, AWS API Gateway) → Backend-Services; kein Single Point of Failure
- **P-A-P-Struktur** für kritische Datenübergänge (z. B. Übergabe DICOM-Bilder zwischen Krankenhaus und Cloud): äußerer Filter (Port/Protokoll) → App-Level-Proxy (Deep Inspection, PII-Filter) → innerer Filter (Ziel-System-Whitelist); vorzugsweise mit Sandboxing bei Malware-Verdacht
- **Zero-Trust-Cross-Network-Access**: statt vertrauensbasierter Zonen jede Verbindung mit Identität + Kontext prüfen (BeyondCorp-Pattern); Google Cloud Identity-Aware Proxy, Zscaler ZTNA, Cloudflare Access; kein Trust nur weil „aus internem Netz"
- **Kunden-spezifische Security-Assessment**: bei Anschluss neuer Krankenhäuser dokumentierter Prozess (Risk Assessment: welche Daten fließen? Welche Protokolle? Welche Endpunkte?); Ergebnis fließt in Access-Regeln, Kunde erhält Trust-Report

## Verwandte Kriterien

- [[COS-01 Technical Safeguards]]
- [[COS-02 Security Requirements for Connections in the Cloud Service Provider's Network]]
- [[COS-03 Monitoring of Connections in the Cloud Service Provider's Network]]
- [[COS-05 Networks for Administration]]
- [[COS-06 Separation of Data Traffic in Jointly Used Network Environments]]
