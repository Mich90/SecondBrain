---
title: CRY-04 Protection of Data for Transmission (Transport Protection)
project: "[[C5 Katalog 2026]]"
c5-id: CRY-04
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-04
---

# CRY-04 · Protection of Data for Transmission (Transport Protection)

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-04 · **Unterkriterien:** 3 (2 Basic · 1 Sharpening)

> [!note] Gemeinsame Zusatzinformation
> Bei Übertragung von Daten mit normalem Schutzbedarf innerhalb der Infrastruktur des Cloud-Diensteanbieters ist Verschlüsselung nicht verpflichtend, sofern die Daten nicht über öffentliche Netzwerke übertragen werden. Die nicht-öffentliche Umgebung des Cloud-Diensteanbieters kann in diesem Fall als vertrauenswürdig angenommen werden. Die Konfiguration von TLS sollte den Empfehlungen der aktuellen Version der **BSI TR-02102-2** entsprechen. Cipher Suites sollten **Perfect Forward Secrecy (PFS)** bieten.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen für die von ihnen verantworteten Teile durch geeignete Kontrollen sicher, dass ihre Daten über verschlüsselte Verbindungen entsprechend den jeweiligen Schutzbedarfen übertragen werden.

## Unterkriterien

### CRY-04.01B — Basic

**Kriterium (EN):**

> The cloud service provider has established procedures and technical safeguards for state of the art encryption and authentication for the transmission of cloud service customer data and cloud service derived data over public networks.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat Verfahren und technische Schutzmaßnahmen für dem Stand der Technik entsprechende Verschlüsselung und Authentifizierung für die Übertragung von Kundendaten und abgeleiteten Daten **über öffentliche Netzwerke** etabliert.

---

### CRY-04.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider has established procedures and technical safeguards for state of the art encryption and authentication for the transmission of all data.

**Deutsche Übersetzung:**

Verfahren und technische Schutzmaßnahmen sind für die Übertragung **aller Daten** etabliert — nicht nur über öffentliche Netzwerke.

---

### CRY-04.02B — Basic

**Kriterium (EN):**

> During remote access to the production environment, the cloud service provider uses state of the art cryptographic mechanisms, including personnel authentication, to protect the communication.

**Deutsche Übersetzung:**

Beim Remote-Zugriff auf die Produktivumgebung nutzt der Cloud-Diensteanbieter dem Stand der Technik entsprechende kryptographische Mechanismen einschließlich Personal-Authentifizierung zum Schutz der Kommunikation.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **TLS 1.3 mit PFS-Cipher-Suites** an allen kunden-facing Endpoints (Ausnahme TLS 1.2 nur für dokumentierte Legacy-Kunden, mit Ablaufdatum); HSTS-Header, Certificate-Pinning für Mobile-Apps, keine TLS 1.0/1.1
- **East-West-Encryption** (Sharpening): auch interne Netzwerke verschlüsselt (mTLS zwischen Microservices via Service Mesh wie Istio oder Linkerd); Zero-Trust-Architektur — wichtig bei Multi-Tenant-Trennung von Krankenhaus-Daten
- **Remote-Admin-Access** via Zero Trust Network Access (ZTNA) oder VPN mit IPsec/IKEv2 gemäß BSI TR-02102-3; MFA verpflichtend + Device-Attestation; keine Direktzugriffe auf Prod-Systeme ohne Bastion/PAM
- **Zertifikats-Management** automatisiert (Let's Encrypt für externe, interne PKI für interne Services): Auto-Renewal, Monitoring (Ablauf > 30 Tage vor Expiry = Alert), Certificate Transparency Monitoring gegen Missbrauch

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-05 Encryption of Sensitive Data at Rest]]
- [[CRY-08 Public-Key Certificate Issuance]]
- [[IAM-06 Privileged Access Rights]]
- [[COS-01 Technical Safeguards|COS-01]] *(noch nicht angelegt)*
