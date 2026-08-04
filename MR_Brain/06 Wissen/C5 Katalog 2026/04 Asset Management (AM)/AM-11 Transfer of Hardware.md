---
title: AM-11 Transfer of Hardware
project: "[[C5 Katalog 2026]]"
c5-id: AM-11
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-11
---

# AM-11 · Transfer of Hardware

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-11 · **Unterkriterien:** 3 (3 Basic)

## Unterkriterien

### AM-11.01B — Basic

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07), the cloud service provider ensures the secure and controlled transfer of hardware objects used in the cloud service production environment to an offsite or alternate location.

**Deutsche Übersetzung:**

Basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) stellt der Cloud-Diensteanbieter den sicheren und kontrollierten Transfer von Hardware-Objekten, die in der produktiven Cloud-Dienst-Umgebung genutzt werden, an einen externen oder alternativen Standort sicher.

---

### AM-11.02B — Basic

**Kriterium (EN):**

> The transfer of hardware is authorised by designated personnel.

**Deutsche Übersetzung:**

Der Transfer von Hardware wird von benanntem Personal autorisiert.

**Zusatzinformation (DE):**

Die Autorisierung stellt sicher, dass Hardware-Transfers — intern oder extern — kontrolliert, nachvollziehbar und richtlinienkonform sind. Dies ist besonders wichtig für Assets, die sensible Daten enthalten oder in Produktivumgebungen genutzt werden. Der Prozess umfasst typischerweise:

1. Verifikation von Asset-Eigentum und Klassifizierung;
2. Bewertung zugehöriger Risiken;
3. Dokumentation der Transferanfrage und Freigabe;
4. Bestätigung der sicheren Handhabung während des Transports.

---

### AM-11.03B — Basic

**Kriterium (EN):**

> The cloud service provider ensures that all transfers of hardware objects used in the cloud service production environment are conducted using secure, documented methods designed to prevent unauthorised access, tampering, data leakage, or loss during transit. These methods include physical protection, chain-of-custody tracking, and verification upon receipt.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt sicher, dass sämtliche Transfers von Hardware-Objekten, die in der produktiven Cloud-Dienst-Umgebung genutzt werden, mittels sicherer, dokumentierter Methoden erfolgen, die darauf ausgelegt sind, unautorisierten Zugriff, Manipulation, Datenabfluss oder Verlust während des Transports zu verhindern. Diese Methoden umfassen physischen Schutz, Chain-of-Custody-Tracking und Verifikation beim Empfang.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Genehmigter Transportdienstleister** (z. B. Iron Mountain, Rhenus Data Office) mit GPS-Tracking, versiegelten Boxen und Chain-of-Custody-Protokoll; Vertraglich zugesicherter DSGVO-Standard, AVV vorhanden
- **Vor dem Transport**: Datenträger kryptografisch löschen (falls möglich) ODER Datenträger separieren und separat transportieren; Firmware-Reset; RMA-Nummer und Ausgangsprotokoll mit Zeitstempel
- **Empfangs-Verifikation**: Foto-Nachweis am Zielort, Prüfung Siegel unversehrt, Registrierung in Ziel-CMDB, Rückbestätigung an Ursprungs-Site; jede Abweichung als Sicherheitsvorfall behandeln
- **Für RMA an Hersteller**: bei defekten Datenträgern mit Restdaten Vor-Ort-Vernichtung dokumentieren statt Rückgabe; Kaufvertragslicher Zusatz „Data-in-Failure"-Prozess

## Verwandte Kriterien

- [[AM-07 Decommissioning of Hardware]]
- [[AM-10 Protection of Hardware on Hold]]
- [[PS-01 Physical Security and Environmental Control Requirements|PS-01]] *(noch nicht angelegt)*
- [[OIS-07 Risk Management Policy]]
- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations|SSO-01]] *(noch nicht angelegt)*
