---
title: PS-06 Protection against Interruptions caused by Power Failures and similar Risks to Supply Facilities
project: "[[C5 Katalog 2026]]"
c5-id: PS-06
c5-area: PS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ps
aliases:
  - PS-06
---

# PS-06 · Protection against Interruptions caused by Power Failures and similar Risks to Supply Facilities

> [!info] Kontext
> **Bereich:** Physical Security (PS) · **Kriterium-ID:** PS-06 · **Unterkriterien:** 7 (3 Basic · 4 Complementing)

## Unterkriterien

### PS-06.01B — Basic

**Kriterium (EN):**

> Measures to prevent the failure of the technical supply facilities required for the operation of system components with which cloud service customer data is processed and to protect equipment containing cloud service customer data, are documented and set up in accordance with the security requirements of the cloud service provider (cf. PS-01) with respect to the following aspects:
>
> 1. Operational redundancy (N+1) in power and cooling supply;
> 2. Use of appropriately sized uninterruptible power supplies (UPSes) and emergency power supplies (EPSes), designed to ensure that all data remains undamaged in the event of a power failure. The functionality of UPSes and EPSes is checked at least annually by suitable tests and exercises (cf. BCM-04);
> 3. Maintenance (servicing, inspection, repair) of the utilities in accordance with the manufacturer's recommendations; and
> 4. Protection of power supply and telecommunications lines against interruption, interference, damage and eavesdropping.

**Deutsche Übersetzung:**

Maßnahmen zur Verhinderung des Ausfalls der für den Betrieb von Systemkomponenten, mit denen Kundendaten verarbeitet werden, erforderlichen technischen Versorgungseinrichtungen und zum Schutz der Geräte, die Kundendaten enthalten, sind gemäß den Sicherheitsanforderungen des Cloud-Diensteanbieters (vgl. [[PS-01 Physical Security and Environmental Control Requirements|PS-01]]) hinsichtlich folgender Aspekte dokumentiert und eingerichtet:

1. **Betriebsredundanz (N+1)** in Strom- und Kühlungsversorgung;
2. Einsatz angemessen dimensionierter unterbrechungsfreier Stromversorgungen (**USVs**) und Notstromversorgungen (**NEA**), so ausgelegt, dass alle Daten bei einem Stromausfall unbeschädigt bleiben. Die Funktionsfähigkeit von USVs und NEAs wird mindestens jährlich durch geeignete Tests und Übungen überprüft (vgl. [[BCM-04 Business Continuity Tests and Exercises|BCM-04]]);
3. Wartung (Instandhaltung, Inspektion, Reparatur) der Versorgungseinrichtungen gemäß Herstellerempfehlungen;
4. Schutz von Strom- und Telekommunikationsleitungen vor Unterbrechung, Störung, Beschädigung und Abhören.

**Zusatzinformation (DE):**

Maßnahmen zur Verhinderung des Ausfalls der technischen Versorgungseinrichtungen betreffen z. B. Stromversorgung, Kühlung, Brandschutztechnik, Telekommunikation, Sicherheitstechnik.

Cloud-Diensteanbieter können sicherstellen, dass alle Daten bei einem Stromausfall unbeschädigt bleiben, indem sie Server nach einem definierten Verfahren herunterfahren.

Strom- und Telekommunikationsleitungen können vor Unterbrechung, Störung, Beschädigung und Abhören z. B. durch unterirdische Versorgung über unterschiedliche Versorgungswege geschützt werden.

---

### PS-06.02B — Basic

**Kriterium (EN):**

> Uninterruptible Power Supplies (UPSes) and Emergency Power Supplies (EPSes) are implemented to comply with the availability requirements defined in the Service Level Agreement.

**Deutsche Übersetzung:**

USVs und NEAs sind so implementiert, dass sie die im SLA definierten Verfügbarkeitsanforderungen erfüllen.

---

### PS-06.03B — Basic

**Kriterium (EN):**

> The protection of power supply and telecommunications lines is checked regularly, but at least every two years as well as in case of suspected manipulation, by qualified personnel regarding the following aspects:
>
> 1. Traces of violent attempts to open closed distributors;
> 2. Up-to-dateness of the documentation within the distributor;
> 3. Conformity of the actual wiring and patching with the documentation;
> 4. The short-circuits and earthing of unneeded cables and wires are intact; and
> 5. Impermissible installations and modifications.

**Deutsche Übersetzung:**

Der Schutz von Strom- und Telekommunikationsleitungen wird regelmäßig, jedoch mindestens **alle zwei Jahre** sowie bei Verdacht auf Manipulation, durch qualifiziertes Personal hinsichtlich folgender Aspekte überprüft:

1. Spuren gewaltsamer Öffnungsversuche geschlossener Verteiler;
2. Aktualität der Dokumentation im Verteiler;
3. Übereinstimmung der tatsächlichen Verkabelung und Patchung mit der Dokumentation;
4. Kurzschlüsse und Erdung nicht benötigter Kabel und Leitungen sind intakt;
5. Unzulässige Installationen und Modifikationen.

**Zusatzinformation (DE):**

Wurde während des Prüfzeitraums eines Type-2-Prüfauftrags keine Prüfung durchgeführt, vermerkt der Auditor im Prüfergebnis „kein Vorkommen", sofern die vorherige Prüfung innerhalb der geforderten zwei Jahre stattfand. Zur Bewertung der Ausgestaltung der Kontrolle kann der Auditor Nachweise zur vorherigen Prüfung einholen, auch wenn diese nicht im Prüfzeitraum lag. Fand über zwei Jahre keine Prüfung statt, vermerkt der Auditor eine Abweichung.

---

### PS-06.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cooling supply system is designed in such a way that the permissible operating and environmental parameters are also ensured on at least five consecutive days with the highest outside temperatures that can reasonably be estimated to occur at the locations of the premises and buildings within the lifespan of the cooling supply system, with an appropriate safety margin.

**Deutsche Übersetzung:**

Die Kühlungsanlage ist so ausgelegt, dass die zulässigen Betriebs- und Umgebungsparameter auch an mindestens **fünf aufeinanderfolgenden Tagen** mit den höchsten Außentemperaturen, die vernünftigerweise über die Lebensdauer der Anlage erwartet werden können, mit angemessenem Sicherheitszuschlag, gewährleistet sind.

**Zusatzinformation (DE):**

Dieses Unterkriterium fordert die Umsetzung konkreter Maßnahmen zur Erfüllung der in [[PS-01 Physical Security and Environmental Control Requirements|PS-01.03AC]] geforderten Policy. Die höchsten vernünftigerweise erwarteten Außentemperaturen werden ebenfalls im Rahmen von PS-01.03AC festgelegt.

---

### PS-06.02AC — Additional (Complementing)

**Kriterium (EN):**

> The connection to the telecommunications network is designed with sufficient redundancy so that the failure of a telecommunications network does not impair the security or performance of the cloud service provider.

**Deutsche Übersetzung:**

Die Anbindung an das Telekommunikationsnetz ist mit ausreichender Redundanz ausgelegt, sodass der Ausfall eines TK-Netzes die Sicherheit oder Leistungsfähigkeit des Cloud-Diensteanbieters nicht beeinträchtigt.

---

### PS-06.03AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider implements measures to ensure the compatibility of the conditions for installation, maintenance and servicing of the related technical equipment (e.g., electrical power, air conditioning, fire protection) with the cloud service's availability and security requirements.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter implementiert Maßnahmen, um die Kompatibilität der Bedingungen für Installation, Wartung und Instandhaltung der zugehörigen technischen Einrichtungen (z. B. Elektrik, Klima, Brandschutz) mit den Verfügbarkeits- und Sicherheitsanforderungen des Cloud-Dienstes sicherzustellen.

---

### PS-06.04AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider ensures that maintenance agreements for equipment used for the hosting of the cloud service enable the timely installation of security updates on this equipment.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter stellt sicher, dass Wartungsverträge für Ausrüstung, die für das Hosting des Cloud-Dienstes genutzt wird, die zeitnahe Installation von Sicherheitsupdates auf dieser Ausrüstung ermöglichen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **N+1 Redundanz** in Strom (2 unabhängige Trafo-Stationen, USV je Strang) und Kühlung (mindestens 3 Kaltwasser-Sätze bei Auslegung für 2 gleichzeitig); jährliche Belastungstests mit Lastschwenk auf redundante Komponenten
- **USV-Auslegung** für 15 min Überbrückung, danach Diesel-NEA mit 72-h-Kraftstoffvorrat; jährlicher Volltest, monatliche Kurztests; Wartung durch zertifizierten Dienstleister mit dokumentierten SLAs
- **Redundante TK-Anbindung**: mind. 2 Carrier über physisch getrennte Trassen (verschiedene Kabelwege); Backup via drahtloser Richtfunk oder Satellit; BGP-Multi-Homing für IP-Redundanz
- **Alle 2 Jahre Verteilerprüfung** durch qualifizierten Elektriker; bei Verdacht auf Manipulation (z. B. auffällige Aktivität in Videoüberwachung) außerplanmäßige Sofort-Prüfung; Dokumentation in CMDB

## Verwandte Kriterien

- [[PS-01 Physical Security and Environmental Control Requirements]]
- [[PS-07 Surveillance of Operational and Environmental Parameters]]
- [[BCM-04 Business Continuity Tests and Exercises|BCM-04]] *(noch nicht angelegt)*
- [[OPS-27 Managing Vulnerabilities - Patch Management|OPS-27]] *(noch nicht angelegt)*
