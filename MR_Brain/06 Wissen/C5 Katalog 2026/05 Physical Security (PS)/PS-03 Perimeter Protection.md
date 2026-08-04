---
title: PS-03 Perimeter Protection
project: "[[C5 Katalog 2026]]"
c5-id: PS-03
c5-area: PS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ps
aliases:
  - PS-03
---

# PS-03 · Perimeter Protection

> [!info] Kontext
> **Bereich:** Physical Security (PS) · **Kriterium-ID:** PS-03 · **Unterkriterien:** 7 (6 Basic · 1 Complementing)

## Unterkriterien

### PS-03.01B — Basic

**Kriterium (EN):**

> The structural shell of premises and buildings related to the cloud service provided are physically solid and protected by adequate security measures that meet the security requirements of the cloud service provider (cf. PS-01).

**Deutsche Übersetzung:**

Die bauliche Hülle der Räume und Gebäude, die im Zusammenhang mit dem Cloud-Dienst stehen, ist physisch solide und durch angemessene Sicherheitsmaßnahmen gemäß den Sicherheitsanforderungen des Cloud-Diensteanbieters (vgl. [[PS-01 Physical Security and Environmental Control Requirements|PS-01]]) geschützt.

---

### PS-03.02B — Basic

**Kriterium (EN):**

> The security measures are designed to detect and prevent unauthorised access so that the information security of the cloud service is not compromised.

**Deutsche Übersetzung:**

Die Sicherheitsmaßnahmen sind darauf ausgelegt, unautorisierten Zugriff zu erkennen und zu verhindern, sodass die Informationssicherheit des Cloud-Dienstes nicht beeinträchtigt wird.

**Zusatzinformation (DE):**

Sicherheitsmaßnahmen zur Erkennung unautorisierten Zugriffs können Sicherheitspersonal, Videoüberwachung oder Einbruchmeldeanlagen sein.

---

### PS-03.03B — Basic

**Kriterium (EN):**

> The outer doors, windows and other construction elements exhibit an appropriate security level so that their combined resistance time withstand a break-in attempt for at least ten minutes in total. This time period applies from the moment an external intruder is detected (e.g. by perimeter surveillance).

**Deutsche Übersetzung:**

Außentüren, Fenster und andere Bauelemente weisen ein angemessenes Sicherheitsniveau auf, sodass ihre kombinierte Widerstandszeit einen Einbruchsversuch für insgesamt mindestens **zehn Minuten** aushält. Dieser Zeitraum gilt ab dem Zeitpunkt, an dem ein externer Eindringling erkannt wird (z. B. durch Perimeter-Überwachung).

**Zusatzinformation (DE):**

Die Widerstandsklasse **RC4 nach DIN EN 1627** legt fest, dass Türen, Fenster und andere Bauteile einem Einbruchsversuch mindestens zehn Minuten standhalten. Der US-Standard SD-STD-01.01 Rev.G. ist ein internationales Äquivalent. Die Erfüllung des Kriteriums verlangt jedoch nicht zwingend die Einhaltung dieser Standards.

Zusätzlich fordert das Unterkriterium, dass die Bauelemente in ihrer Gesamtheit zu einer Widerstandszeit von mindestens zehn Minuten führen. Es verlangt daher nicht zwingend, dass jedes einzelne Bauelement diese Anforderung für sich allein erfüllt, sofern die kombinierten Maßnahmen einen externen Angriff wirksam für die geforderte Zeit verzögern.

---

### PS-03.04B — Basic

**Kriterium (EN):**

> The surrounding wall constructions as well as the locking mechanisms meet the associated requirements.

**Deutsche Übersetzung:**

Die umgebenden Wandkonstruktionen sowie die Schließmechanismen erfüllen die zugehörigen Anforderungen.

---

### PS-03.05B — Basic

**Kriterium (EN):**

> If the construction elements as a whole do not fully meet the associated requirements, compensating controls are implemented to restore the appropriate security level.

**Deutsche Übersetzung:**

Wenn die Bauelemente in ihrer Gesamtheit die zugehörigen Anforderungen nicht vollständig erfüllen, werden kompensierende Kontrollen implementiert, um das angemessene Sicherheitsniveau wiederherzustellen.

**Zusatzinformation (DE):**

Kompensierende Maßnahmen können zusätzliche Sicherheitsebenen umfassen (z. B. Sicherheitsbereiche auf dem Gelände), eine verstärkte Präsenz von Sicherheitspersonal, Videoüberwachung und Einbruchmeldeanlagen.

---

### PS-03.06B — Basic

**Kriterium (EN):**

> Data centre personnel are trained on how to respond effectively to unauthorised ingress or egress attempts.

**Deutsche Übersetzung:**

Rechenzentrumspersonal ist geschult, wie es effektiv auf unautorisierte Ein- oder Ausdringversuche reagiert.

---

### PS-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> The security measures installed at the site include permanently present security personnel (at least two individuals), video surveillance and anti-burglary systems.

**Deutsche Übersetzung:**

Die vor Ort installierten Sicherheitsmaßnahmen umfassen dauerhaft anwesendes Sicherheitspersonal (mindestens zwei Personen), Videoüberwachung und Einbruchmeldeanlagen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Bauliche Härtung nach RC4**: Umfriedung mit Sicherheitszaun (mind. 2,5 m Höhe), stahlverstärkte Außenfassade, RC4-zertifizierte Türen und Fenster (falls vorhanden), Panzerglas in den ersten Stockwerken
- **Layered Perimeter**: Außenperimeter (Zaun + Bewegungsmelder + Kamera), Gebäudehülle (RC4-Türen + Zutrittsschleusen), sensitiver Bereich (Serverraum mit doppelter Authentisierung); jede Ebene erhöht die Verzögerung
- **24×7 Security-Team**: mindestens 2 Security-Mitarbeitende dauerhaft vor Ort; regelmäßige Schulungen inkl. Angriffssimulationen (Social Engineering, Tailgating, aggressives Verhalten); enge Kopplung mit lokaler Polizei / Wachdienst für Eskalation
- **Detection-Systeme**: PIR-Sensoren + Video-Analytik mit KI-Erkennung von Personen/Fahrzeugen auf dem Perimeter; automatische Meldung an Leitstelle bei Anomalien; Videoaufzeichnung mindestens 30 Tage (bei Vorfällen länger)

## Verwandte Kriterien

- [[PS-01 Physical Security and Environmental Control Requirements]]
- [[PS-04 Physical Site Access Control]]
- [[PS-05 Protection against Threats from Outside and from the Environment]]
- [[HR-03 Security Training and Awareness Programme]]
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
