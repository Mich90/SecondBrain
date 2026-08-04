---
title: AM-10 Protection of Hardware on Hold
project: "[[C5 Katalog 2026]]"
c5-id: AM-10
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-10
---

# AM-10 · Protection of Hardware on Hold

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-10 · **Unterkriterien:** 2 (1 Basic · 1 Sharpening)

## Unterkriterien

### AM-10.01B — Basic

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07), the cloud service provider has documented and implemented a procedure for protecting hardware components of the cloud service's production environment that are temporarily not in use. The procedure supports the secure storage and protection against unauthorised access or damage of inactive hardware until it is needed again.

**Deutsche Übersetzung:**

Basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) hat der Cloud-Diensteanbieter ein Verfahren zum Schutz von Hardware-Komponenten der produktiven Cloud-Dienst-Umgebung dokumentiert und implementiert, die vorübergehend nicht in Nutzung sind. Das Verfahren unterstützt die sichere Aufbewahrung und den Schutz vor unautorisiertem Zugriff oder Beschädigung inaktiver Hardware, bis diese wieder benötigt wird.

---

### AM-10.01AS — Additional (Sharpening)

**Kriterium (EN):**

> Based on a risk assessment (cf. OIS-07), the cloud service provider has documented and implemented a procedure for protecting any hardware components that are temporarily not in use. The procedure supports the secure storage and protection against unauthorised access or damage of inactive hardware until it is needed again.

**Deutsche Übersetzung:**

Basierend auf einer Risikobewertung (vgl. [[OIS-07 Risk Management Policy|OIS-07]]) hat der Cloud-Diensteanbieter ein Verfahren zum Schutz **sämtlicher** Hardware-Komponenten dokumentiert und implementiert, die vorübergehend nicht in Nutzung sind. Das Verfahren unterstützt die sichere Aufbewahrung und den Schutz vor unautorisiertem Zugriff oder Beschädigung inaktiver Hardware, bis diese wieder benötigt wird.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Sicherer Lagerraum im Rechenzentrum**: Zutritt nur mit 4-Augen-Prinzip, Videoüberwachung, Zutritts-Log; getrennter Bereich für „On-Hold" vs. „Ready for Deployment"
- **Datenträger vor Lagerung entfernen oder verschlüsseln**: Server, die aus Prod entnommen wurden und noch Patientendaten enthalten könnten, werden entweder sofort kryptografisch gelöscht oder in versiegelten, protokollierten Boxen gelagert bis Deletion
- **Regelmäßige Inventur**: monatliche physische Zählung des Lagerbestands gegen CMDB; Abweichungen sofort dokumentieren und untersuchen (Diebstahl / falsche Buchung / interne Entnahme)
- **Umgebungsschutz**: Lagerraum klimatisiert und gesichert gegen Wasser/Feuer (relevant, wenn Reserven für DR-Zwecke vorgehalten werden)

## Verwandte Kriterien

- [[AM-05 Policy for the Proper and Secure Use of Assets]]
- [[AM-07 Decommissioning of Hardware]]
- [[AM-11 Transfer of Hardware]]
- [[PS-01 Physical Security and Environmental Control Requirements|PS-01]] *(noch nicht angelegt)*
- [[OIS-07 Risk Management Policy]]
