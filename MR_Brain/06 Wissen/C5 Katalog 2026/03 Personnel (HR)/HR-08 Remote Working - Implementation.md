---
title: HR-08 Remote Working - Implementation
project: "[[C5 Katalog 2026]]"
c5-id: HR-08
c5-area: HR
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/hr
aliases:
  - HR-08
---

# HR-08 · Remote Working — Implementation

> [!info] Kontext
> **Bereich:** Personnel (HR)  
> **Kriterium-ID:** HR-08  
> **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### HR-08.01B — Basic

**Kriterium (EN):**

> The cloud service provider designs, implements and maintains the technical and organisational measures required to enable its personnel to comply with the policies and procedures for remote work (cf. HR-07).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter entwirft, implementiert und pflegt die technischen und organisatorischen Maßnahmen, die erforderlich sind, damit sein Personal die Richtlinien und Verfahren zur Remote-Arbeit (vgl. [[HR-07 Remote Working - Policy|HR-07]]) einhalten kann.

**Zusatzinformation (DE):**

Dieses Kriterium bezieht sich auf externe Arbeitsplätze außerhalb des Firmenstandorts, während [[PS-08 Workplace Security Requirements|PS-08]] Sicherheitsanforderungen an interne Büroarbeitsplätze adressiert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **MDM/UEM als technische Durchsetzung**: Microsoft Intune oder Jamf mit erzwungenen Compliance-Regeln (Disk Encryption, OS-Patchstand, Firewall aktiv, Screen Lock ≤ 5 min); non-compliant Devices werden vom Zugriff ausgeschlossen (Conditional Access)
- **Just-in-Time-Access via PAM** für privilegierte Aktionen auf Prod: Session zeitlich begrenzt (max. 4 h), 4-Augen-Approval, Session-Recording; keine dauerhaften Admin-Rechte auf Laptops
- **Split-Tunnel VPN oder ZTNA**: Zugriff auf interne Prod-Systeme nur über bestimmte Client-Wege; Krankenhaus-Kundendaten dürfen nicht über Consumer-VPNs geroutet werden
- **Awareness und Sichtkontrolle**: verpflichtende Blickschutzfolie bei Reisen; Hinweis-Sticker auf Laptop „Enthält Gesundheitsdaten — nicht in öffentlichen Räumen nutzen"; regelmäßige Stichproben durch Security-Team

## Verwandte Kriterien

- [[HR-07 Remote Working - Policy]]
- [[PS-08 Workplace Security Requirements|PS-08]] *(noch nicht angelegt)*
- [[IAM-08 Authentication Mechanisms|IAM-08]] *(noch nicht angelegt)*
- [[COS-01 Technical Safeguards|COS-01]] *(noch nicht angelegt)*
- [[OPS-16 Managing Vulnerabilities - Endpoint Management|OPS-16]] *(noch nicht angelegt)*
