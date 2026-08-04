---
title: Betrieb, Performance & Compliance
project: "[[CGM Health BI]]"
bereich: anforderungen
status: entwurf
tags:
  - pflichtenheft
  - anforderungen
  - nichtfunktional
  - betrieb
  - performance
---

# Betrieb, Performance & Compliance

## Deployment- und Betriebsmodell

Die Plattform muss **On-Premise, SaaS und Cloud aus einer Produktlogik** unterstützen.

- Cloud-first konzipiert, aber durch **Hybrid-Cloud-Fähigkeit (BYOC – Bring Your Own Cloud)** auch in kundeneigenen Infrastrukturen betreibbar
- Hybrid: sowohl on-prem als auch cloud-ready
- Frontend ist **unabhängig von Backend-Releases** aktualisierbar
- Skalierbarer Rollout für einzelne Mandanten **ohne Gesamtsystem-Neustart**
- Ein wirtschaftliches Einstiegsprofil für on-prem **plus** ein optionales SaaS-Modell sind strategisch notwendig

## Compliance & Zertifizierung

> [!important] C5-Zertifizierungsfähigkeit
> Das System muss die Voraussetzungen für eine **C5-Zertifizierung** (BSI Cloud Computing Compliance Criteria Catalogue) erfüllen.

## Performance als Nutzererlebnis

Performance ist kein rein technisches Thema – sie ist ein **zentrales Qualitätsmerkmal des Nutzererlebnisses**. Ein System, das sich träge anfühlt, verliert Akzeptanz unabhängig von seiner fachlichen Qualität.

> [!info] Abgrenzung
> Performance-Optimierungen **unterhalb** der Semantikschicht (Datenhaltung, Caching, Pre-Aggregation) sind nicht Gegenstand dieses Dokuments. Die **Frontend-Schicht** muss aber ihren Teil beitragen: schnelles Rendering, visuelles Feedback bei laufenden Abfragen, keine wahrnehmbare Verzögerung bei Nutzerinteraktionen.

### Strategische Performance-Prinzipien

- **Perceived Performance zählt:** Nicht die technische Ladezeit ist entscheidend, sondern das subjektive Empfinden flüssiger Interaktion. Skeleton-Screens, progressive Inhaltsdarstellung und sofortiges visuelles Feedback sind Pflicht.
- **Kein Layout-Shift:** Sichtbare Inhalte dürfen sich nicht nachträglich verschieben, während weitere Daten nachladen (CLS ≤ 0,1 gemäß Core Web Vitals).
- **Performance-Budget:** Jedes Widget, jede Seite hat ein definiertes Performance-Budget. Neue Features werden nicht nur auf Funktionalität, sondern auch auf ihren Performance-Impact bewertet.
- **Skalierbarkeit:** Performance-Ziele gelten nicht nur für Demos mit kleinen Datenmengen, sondern für klinikweites Jahres-Reporting mit realen Datenvolumina und realer Nutzerzahl.
- **Messung im Feld:** Performance wird kontinuierlich mit realen Nutzerdaten gemessen (Real User Monitoring), nicht nur in Labortests.
