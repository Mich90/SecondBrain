---
title: AM-12 Removable Media and Endpoint Devices
project: "[[C5 Katalog 2026]]"
c5-id: AM-12
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-12
---

# AM-12 · Removable Media and Endpoint Devices

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-12 · **Unterkriterien:** 2 (1 Basic · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Ein Wechseldatenträger (removable medium) ist ein portables Datenträger-Medium, das einem Computergerät oder Netzwerk hinzugefügt oder daraus entfernt werden kann. Beispiele u. a.: optische Discs (CD, DVD, Blu-ray), externe/wechselbare HDDs oder SSDs, magnetische/optische Bänder, Flash-Speicher (USB, eSATA, USB-Sticks).

## Unterkriterien

### AM-12.01B — Basic

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07), the cloud service provider designs, implements and maintains controls for endpoint devices and removable storage media regarding the following aspects:
>
> 1. Except for system administrative tasks for which no other method is available, the use of removable media is forbidden;
> 2. Removable media is used for dedicated, specific purposes only;
> 3. Storage encryption is enabled on managed endpoints and removable storage media (except those used for unavoidable system administration actions) to protect information from unauthorised disclosure;
> 4. Managed endpoints are configured with anti-malware detection and prevention technology and services;
> 5. Self-execution from removable storage is disabled and storage media is scanned before use on the cloud service provider's systems;
> 6. Measures are to be taken by users to protect mobile endpoints and removable storage in transit and in storage;
> 7. Protection in terms of confidentiality and integrity of any equipment containing cloud service customer data during the transfer off-site for disposal is equivalent to that on the site;
> 8. Cloud service customer data and cloud service derived data stored on shareable equipment is encrypted in accordance with CRY-05 or destroyed using a secure deletion mechanism before the equipment is shared with a third party;
> 9. Users are to use mobile endpoints and removable storage in a secure manner, this includes for example not leaving media openly accessible in public spaces, using screen locks and screen privacy films; and
> 10. Measures for maintaining proper security of third party endpoints with access to organisational assets are to be defined.

**Deutsche Übersetzung:**

Basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) entwirft, implementiert und pflegt der Cloud-Diensteanbieter Kontrollen für Endgeräte und Wechseldatenträger hinsichtlich folgender Aspekte:

1. Außer für Systemadministrations-Aufgaben, für die keine andere Methode verfügbar ist, ist die Nutzung von Wechseldatenträgern verboten;
2. Wechseldatenträger werden nur für dedizierte, spezifische Zwecke genutzt;
3. Storage-Verschlüsselung ist auf verwalteten Endgeräten und Wechseldatenträgern aktiviert (außer bei unvermeidbaren Administrationsaktionen), um Informationen vor unautorisierter Offenlegung zu schützen;
4. Verwaltete Endgeräte sind mit Anti-Malware-Erkennung und -Präventionstechnologie/-diensten konfiguriert;
5. Auto-Execution von Wechseldatenträgern ist deaktiviert; Datenträger werden vor Nutzung auf Systemen des Cloud-Diensteanbieters gescannt;
6. Nutzer ergreifen Maßnahmen zum Schutz mobiler Endgeräte und Wechseldatenträger während Transport und Lagerung;
7. Der Schutz hinsichtlich Vertraulichkeit und Integrität aller Geräte mit Kundendaten während des Transfers zur Entsorgung außerhalb des Standorts ist gleichwertig zu dem am Standort;
8. Kundendaten und abgeleitete Daten auf gemeinsam nutzbaren Geräten sind gemäß [[CRY-05 Encryption of Data at Rest|CRY-05]] verschlüsselt oder werden mit einem sicheren Löschmechanismus gelöscht, bevor das Gerät mit einer dritten Partei geteilt wird;
9. Nutzer verwenden mobile Endgeräte und Wechseldatenträger sicher — u. a. keine offene Zugänglichkeit in öffentlichen Räumen, Nutzung von Bildschirmsperren und Blickschutzfolien;
10. Maßnahmen zur Aufrechterhaltung der ordnungsgemäßen Sicherheit von Drittanbieter-Endgeräten mit Zugriff auf Organisations-Assets werden definiert.

---

### AM-12.01AC — Additional (Complementing)

**Kriterium (EN):**

> Policies and procedures for endpoint devices and removable storage media furthermore contain the following aspects:
>
> 1. Managed endpoints are configured with appropriate software firewalls;
> 2. Managed endpoints are configured with Data Loss Prevention (DLP) technologies and rules in accordance with a risk assessment (cf. OIS-07);
> 3. Remote geo-location capabilities are enabled for all managed mobile endpoints; and
> 4. Define, implement and evaluate processes, procedures and technical safeguards to enable the deletion of company data remotely on managed endpoint devices.

**Deutsche Übersetzung:**

Richtlinien und Verfahren für Endgeräte und Wechseldatenträger enthalten zusätzlich folgende Aspekte:

1. Verwaltete Endgeräte sind mit angemessenen Software-Firewalls konfiguriert;
2. Verwaltete Endgeräte sind mit Data-Loss-Prevention-Technologien (DLP) und -Regeln gemäß einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) konfiguriert;
3. Remote-Geolokalisierungsfunktionen sind für alle verwalteten mobilen Endgeräte aktiviert;
4. Prozesse, Verfahren und technische Schutzmaßnahmen zur Remote-Löschung von Unternehmensdaten auf verwalteten Endgeräten sind definiert, implementiert und bewertet.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **USB-Sperre per MDM**: alle USB-Ports auf Firmen-Endgeräten deaktiviert (Ausnahme: signierte Yubikeys für MFA); Ausnahmen für Ops-Admins nur mit dokumentierter Freigabe + gehärtetem/verschlüsseltem Firmen-USB-Stick
- **Vollständiger Endpoint-Stack**: BitLocker/FileVault (FDE), Defender/CrowdStrike (EDR), Software-Firewall (Windows Defender FW / Little Snitch), DLP (z. B. Microsoft Purview, Symantec) — Regeln blockieren Upload von Patientendaten in Consumer-Cloud (Dropbox, Gmail)
- **Remote-Wipe & Geolokalisierung**: MDM (Intune / Jamf) mit „Find My Device"; bei Verlust automatischer Wipe-Befehl binnen 4 h; für Notfälle 24×7-Hotline zur Meldung
- **Sicherer Transfer**: kein Datentransport per USB-Stick — stattdessen verschlüsselte File-Transfer-Service (z. B. Nextcloud, Kiteworks); bei Ausnahmen protokollierte Übergabe mit Empfängerbestätigung

## Verwandte Kriterien

- [[AM-05 Policy for the Proper and Secure Use of Assets]]
- [[AM-08 Commitment to Proper Use, Safe and Secure Handling and Return of Assets]]
- [[OIS-07 Risk Management Policy]]
- [[CRY-05 Encryption of Data at Rest|CRY-05]] *(noch nicht angelegt)*
- [[OPS-04 Protection Against Malware - Policies and Procedures|OPS-04]] *(noch nicht angelegt)*
- [[HR-07 Remote Working - Policy]]
