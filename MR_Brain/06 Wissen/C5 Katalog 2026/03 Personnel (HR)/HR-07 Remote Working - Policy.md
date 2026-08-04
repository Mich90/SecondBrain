---
title: HR-07 Remote Working - Policy
project: "[[C5 Katalog 2026]]"
c5-id: HR-07
c5-area: HR
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/hr
aliases:
  - HR-07
---

# HR-07 · Remote Working — Policy

> [!info] Kontext
> **Bereich:** Personnel (HR)  
> **Kriterium-ID:** HR-07  
> **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### HR-07.01B — Basic

**Kriterium (EN):**

> Policies and procedures for the protection of information when personnel works remotely are documented, communicated and provided in accordance with SP-01 and address the following aspects:
>
> 1. Establishing guidelines for the personnel for the safe handling and storage of sensitive information and data types;
> 2. Definition of remote access security requirements;
> 3. Utilisation of secure communication methods and enforcement of secure network use (e.g., VPN usage, endpoint protection, multi-factor authentication, secure communication channels); and
> 4. Provision of organisation-approved equipment and prohibition of unregulated personal devices.

**Deutsche Übersetzung:**

Richtlinien und Verfahren zum Schutz von Informationen bei Remote-Arbeit von Mitarbeitenden sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und adressieren folgende Aspekte:

1. Erstellung von Vorgaben für den sicheren Umgang mit und die Speicherung sensitiver Informationen und Datentypen;
2. Definition von Sicherheitsanforderungen für den Remote-Zugriff;
3. Nutzung sicherer Kommunikationsmethoden und Durchsetzung sicherer Netznutzung (z. B. VPN, Endpoint-Protection, MFA, sichere Kommunikationskanäle);
4. Bereitstellung organisationsgenehmigter Ausrüstung und Verbot unregulierter privater Geräte.

**Zusatzinformation (DE):**

Dieses Kriterium bezieht sich auf externe Arbeitsplätze außerhalb des Firmenstandorts, während [[PS-08 Workplace Security Requirements|PS-08]] Sicherheitsanforderungen an interne Büroarbeitsplätze adressiert.

Die Vorgaben zum sicheren Umgang mit sensitiven Informationen beziehen sich auf organisatorische Maßnahmen, an die sich das Personal zu halten hat. Sicherheitsanforderungen für den Remote-Zugriff betreffen technische Maßnahmen wie MFA und VPN sowie Regeln für den konkreten Arbeitsplatz (z. B. Umgang in öffentlichen Räumen, in denen der Bildschirm eingesehen werden kann).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Remote-Work-Policy** mit klaren Regeln: kein Arbeiten in öffentlichen Räumen mit Zugriff auf Patientendaten (Café, Zug); Blickschutzfolie am Firmen-Laptop; separate Home-Office-Zone ohne Familienzugang; verschlossenes Whiteboard/Notizen
- **Zero-Trust-Remote-Access**: kein klassisches VPN, sondern ZTNA (z. B. Cloudflare Access, Zscaler, Twingate); pro Ressource explizite Autorisierung, MFA verpflichtend, Device Compliance Check (Betriebssystem aktuell, Disk verschlüsselt, EDR aktiv)
- **Firmen-Hardware verpflichtend**: BYOD ausgeschlossen für Rollen mit Zugriff auf Patientendaten; Firmen-Laptop mit MDM (Intune / Jamf), Full-Disk-Encryption (BitLocker/FileVault), EDR (CrowdStrike/SentinelOne), Auto-Lock nach 5 min
- **Sichere Kommunikation**: nur genehmigte Tools (Teams/Slack mit E2E-Enterprise-Verschlüsselung); keine Patientendaten in Consumer-Messengern (WhatsApp, iMessage); Screenshots von Patientendaten verboten

## Verwandte Kriterien

- [[HR-08 Remote Working - Implementation]]
- [[PS-08 Workplace Security Requirements|PS-08]] *(noch nicht angelegt)*
- [[IAM-08 Authentication Mechanisms|IAM-08]] *(noch nicht angelegt)*
- [[COS-01 Technical Safeguards|COS-01]] *(noch nicht angelegt)*
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
