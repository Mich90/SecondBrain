---
title: PS-01 Physical Security and Environmental Control Requirements
project: "[[C5 Katalog 2026]]"
c5-id: PS-01
c5-area: PS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ps
aliases:
  - PS-01
---

# PS-01 · Physical Security and Environmental Control Requirements

> [!info] Kontext
> **Bereich:** Physical Security (PS) · **Kriterium-ID:** PS-01 · **Unterkriterien:** 11 (6 Basic · 5 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Falsche Planung kann die Betriebssicherheit und Verfügbarkeit der Räume oder Gebäude gefährden — etwa durch fehlerhafte Bewertung elementarer Gefahren am Standort (Luftverkehr, Erdbeben, Hochwasser, Gefahrstoffe) oder durch fehlerhafte Konzeption von Bandbreite oder Stromversorgung.
>
> **Relevante Gebäude und Räume** sind Rechenzentren und Serverräume mit Systemkomponenten zur Verarbeitung von Kundendaten (inkl. Backup-/Redundanz-RZ) sowie die technischen Versorgungsanlagen (Strom, Kühlung, Brandbekämpfung, TK, Sicherheit etc.).
>
> **Nicht abgedeckt:** Räume und Gebäude, in denen keine Kundendaten verarbeitet oder gespeichert werden (z. B. Büros, Serverräume mit reinen Dev/Test-Komponenten) — diese sind in [[PS-08 Workplace Security Requirements|PS-08]] adressiert.

## Unterkriterien

### PS-01.01B — Basic

**Kriterium (EN):**

> The cloud service provider defines and documents at least two security areas, with at least one sensitive area and one public area. A sensitive area covers the buildings and premises in which sensitive activities take place, such as hosting the system components used for providing the cloud service. A public area covers all buildings and premises not otherwise covered by a security area.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert und dokumentiert mindestens zwei Sicherheitsbereiche — mindestens einen sensitiven Bereich und einen öffentlichen Bereich. Ein sensitiver Bereich umfasst Gebäude und Räume, in denen sensitive Aktivitäten stattfinden (z. B. Hosting der Systemkomponenten für den Cloud-Dienst). Ein öffentlicher Bereich umfasst alle Gebäude und Räume, die nicht anderweitig durch einen Sicherheitsbereich abgedeckt sind.

---

### PS-01.02B — Basic

**Kriterium (EN):**

> Security requirements for premises and buildings related to the cloud service provided are based on the security objectives of the information security policy, protection needs identified for the cloud service and a risk assessment regarding physical and environmental security. The security requirements are documented, communicated and provided in a policy or framework according to SP-01.

**Deutsche Übersetzung:**

Sicherheitsanforderungen für Räume und Gebäude im Zusammenhang mit dem Cloud-Dienst basieren auf den Sicherheitszielen der Informationssicherheitsleitlinie, dem identifizierten Schutzbedarf des Cloud-Dienstes und einer Risikobewertung zur physischen und Umgebungssicherheit. Die Sicherheitsanforderungen sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] in einer Policy oder einem Framework dokumentiert, kommuniziert und bereitgestellt.

---

### PS-01.03B — Basic

**Kriterium (EN):**

> Security requirements for data centres are based on criteria in accordance with established rules of technology and the criteria PS-02 to PS-07. They are suitable for addressing the following risks in accordance with the applicable legal and contractual requirements:
>
> 1. Faults in planning;
> 2. Unauthorised access (including access to the premises by drones);
> 3. Insufficient surveillance;
> 4. Lightning and overvoltage (aligned with the internationally harmonised standards of IEC 62305);
> 5. Fire and smoke;
> 6. Unwanted water;
> 7. Failures and/or unavailable telecommunications;
> 8. Power failure; and
> 9. Insufficient heating, ventilation, airconditioning (HVAC) and filtration.

**Deutsche Übersetzung:**

Sicherheitsanforderungen für Rechenzentren basieren auf Kriterien gemäß den anerkannten Regeln der Technik und den Kriterien [[PS-02 Redundancy Model|PS-02]] bis [[PS-07 Surveillance of Operational and Environmental Parameters|PS-07]]. Sie adressieren gemäß den anwendbaren rechtlichen und vertraglichen Anforderungen folgende Risiken:

1. Planungsfehler;
2. Unautorisierter Zugriff (einschließlich Zugriff auf das Gelände durch Drohnen);
3. Unzureichende Überwachung;
4. Blitzschlag und Überspannung (abgestimmt auf die international harmonisierten Standards **IEC 62305**);
5. Feuer und Rauch;
6. Ungewolltes Wasser;
7. Ausfälle und/oder Nichtverfügbarkeit der Telekommunikation;
8. Stromausfall;
9. Unzureichende Heizung, Lüftung, Klimatisierung (HVAC) und Filtration.

**Zusatzinformation (DE):**

Die anerkannten Regeln der Technik sind in relevanten Standards definiert, z. B. **EN 50600** (Einrichtungen und Infrastrukturen von Rechenzentren). Hinweis: Die deutsche C5-Version nutzt „Stand der Technik" — international gilt „established rules of technology" (etwas unterhalb von „state of the art").

---

### PS-01.04B — Basic

**Kriterium (EN):**

> The maximum tolerable downtimes of utility facilities are suitable for meeting the availability requirements contained in the service level agreement.

**Deutsche Übersetzung:**

Die maximal tolerierbaren Ausfallzeiten der Versorgungseinrichtungen sind so gewählt, dass die Verfügbarkeitsanforderungen aus dem SLA erfüllt werden können.

---

### PS-01.05B — Basic

**Kriterium (EN):**

> If the cloud service provider operates the cloud service in data centres operated by service organisations, the document describes:
>
> 1. The complementary subservice organisation controls (CSOC) expected at the service organisations; and
> 2. The measures for monitoring the design and operation of controls at the service organisations with respect to these CSOC (cf. SSO-05).

**Deutsche Übersetzung:**

Wenn der Cloud-Diensteanbieter den Cloud-Dienst in Rechenzentren betreibt, die von Service-Organisationen betrieben werden, beschreibt das Dokument:

1. Die von den Service-Organisationen erwarteten Complementary Subservice Organisation Controls (CSOC);
2. Die Maßnahmen zur Überwachung der Ausgestaltung und operativen Umsetzung der Kontrollen bei den Service-Organisationen bezüglich dieser CSOC (vgl. [[SSO-05 Monitoring of Compliance with Requirements|SSO-05]]).

---

### PS-01.06B — Basic

**Kriterium (EN):**

> If the cloud service provider operates the cloud service in data centres operated by service organisations, the cloud service provider performs a verification of the implementation of suitable CSOC in accordance with the criteria for controlling and monitoring service organisations (cf. SSO-05).

**Deutsche Übersetzung:**

Wenn der Cloud-Diensteanbieter den Cloud-Dienst in Rechenzentren betreibt, die von Service-Organisationen betrieben werden, verifiziert der Cloud-Diensteanbieter die Umsetzung geeigneter CSOC gemäß den Kriterien zur Steuerung und Überwachung von Service-Organisationen (vgl. [[SSO-05 Monitoring of Compliance with Requirements|SSO-05]]).

---

### PS-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> The security requirements include time constraints for self-sufficient operation in the event of exceptional events (e.g. prolonged power outage, heat waves, low water in cold river water supply) and maximum tolerable utility downtime.

**Deutsche Übersetzung:**

Die Sicherheitsanforderungen enthalten Zeitvorgaben für den autarken Betrieb bei Ausnahmeereignissen (z. B. längerer Stromausfall, Hitzewellen, Niedrigwasser der Kühlwasserversorgung) und maximal tolerierbare Ausfallzeiten der Versorgungseinrichtungen.

**Zusatzinformation (DE):**

Zeitvorgaben für den autarken Betrieb sowie maximal tolerierbare Ausfallzeiten werden typischerweise im Rahmen der Business Impact Analysis (vgl. [[BCM-02 Business Impact Analysis|BCM-02]], [[BCM-03 Planning of Business Continuity|BCM-03]]) erhoben.

---

### PS-01.02AC — Additional (Complementing)

**Kriterium (EN):**

> The security requirements include time limits in order to provide self-sufficient operation of a location for at least 72 hours in the event of a failure of the external power supply, or until all services are transferred to another location.

**Deutsche Übersetzung:**

Die Sicherheitsanforderungen umfassen Zeitgrenzen für einen autarken Betrieb eines Standorts von **mindestens 72 Stunden** bei Ausfall der externen Stromversorgung, oder bis alle Dienste an einen anderen Standort verlagert sind.

**Zusatzinformation (DE):**

Die 72-Stunden-Vorgabe für autarken Betrieb entspricht den Leitlinien für Behörden, Unternehmen und KRITIS-Betreiber gemäß dem **Bundesamt für Bevölkerungsschutz und Katastrophenhilfe (BBK)**.

---

### PS-01.03AC — Additional (Complementing)

**Kriterium (EN):**

> The security requirements for a self-sufficient operation during a heat period are based on the highest outside temperatures that can reasonably be estimated to occur at the locations of the premises and buildings within the lifespan of the cooling supply system. The cloud service provider determines these temparatures with an appropriate safety margin.

**Deutsche Übersetzung:**

Die Sicherheitsanforderungen für den autarken Betrieb während einer Hitzeperiode basieren auf den höchsten Außentemperaturen, die vernünftigerweise über die Lebensdauer der Kühlungsanlage an den Standorten der Räume und Gebäude erwartet werden können. Der Cloud-Diensteanbieter legt diese Temperaturen mit angemessenem Sicherheitszuschlag fest.

**Zusatzinformation (DE):**

Eine vernünftige Schätzung kann auf Daten des **Deutschen Wetterdienstes (DWD)** oder anderer verlässlicher Quellen (z. B. **ASHRAE**) basieren. Diese Schätzungen sollten die Effekte des Klimawandels berücksichtigen. Ein angemessener Sicherheitszuschlag hängt vom Standort ab; in Deutschland können in der Regel **3 Kelvin** als angemessen gelten.

---

### PS-01.04AC — Additional (Complementing)

**Kriterium (EN):**

> The security requirements stipulate that the permissible operating and environmental parameters of the cooling supply system shall also be maintained on at least five consecutive days with these outside temperatures including the safety margin (cf. PS-06).

**Deutsche Übersetzung:**

Die Sicherheitsanforderungen legen fest, dass die zulässigen Betriebs- und Umgebungsparameter der Kühlungsanlage auch an mindestens **fünf aufeinanderfolgenden Tagen** mit diesen Außentemperaturen (inkl. Sicherheitszuschlag) eingehalten werden (vgl. [[PS-06 Protection against Interruptions caused by Power Failures and similar Risks to Supply Facilities|PS-06]]).

---

### PS-01.05AC — Additional (Complementing)

**Kriterium (EN):**

> The security requirements take into account that if water is taken from a body of water (e.g., river or lake) for air conditioning, it is determined at which water levels and water temperatures the air conditioning can be maintained for how long.

**Deutsche Übersetzung:**

Die Sicherheitsanforderungen berücksichtigen, dass bei Entnahme von Wasser aus einem Gewässer (z. B. Fluss oder See) zur Klimatisierung festgelegt wird, bei welchen Wasserständen und Wassertemperaturen die Klimatisierung wie lange aufrechterhalten werden kann.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **RZ-Sicherheitskonzept nach EN 50600** dokumentieren: Zonenmodell (öffentlich → allgemein → geschützt → sensitiv), pro Zone anwendbare Kontrollen; Blitzschutz nach IEC 62305, Brandschutz mit F90-Sektoren, Hochwasserschutz basierend auf HQ-100-Niveaus
- **72-Stunden-Autarkie**: Dieselgeneratoren mit Tankvorräten für 72 h; Wartungsverträge mit Kraftstoffversorgern (SLA für Nachlieferung); jährliche Übungstests mit Volllast-Schwenk; wichtig für KRITIS-relevante Krankenhauskunden
- **Klima-Reserve**: Kühlungsauslegung für 5 aufeinanderfolgende Tage mit T_max + 3K (regional angepasst — z. B. Frankfurt ~40 °C Auslegung); Backup-Kühlung (Adiabatik) oder Free Cooling; Monitoring von PUE-Werten und Trigger-Werten
- **CSOC-Nachweise vom Colo-Betreiber**: bei Nutzung von externem RZ (z. B. Equinix, NTT, Interxion) jährliche C5/ISO-27001-Berichte einholen, spezifische physische Kontrollen prüfen, jährlicher Audit-Termin vor Ort

## Verwandte Kriterien

- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
- [[PS-02 Redundancy Model]]
- [[PS-03 Perimeter Protection]]
- [[PS-04 Physical Site Access Control]]
- [[PS-05 Protection against Threats from Outside and from the Environment]]
- [[PS-06 Protection against Interruptions caused by Power Failures and similar Risks to Supply Facilities]]
- [[PS-07 Surveillance of Operational and Environmental Parameters]]
- [[SSO-05 Monitoring of Compliance with Requirements|SSO-05]] *(noch nicht angelegt)*
- [[BCM-02 Business Impact Analysis|BCM-02]] *(noch nicht angelegt)*
