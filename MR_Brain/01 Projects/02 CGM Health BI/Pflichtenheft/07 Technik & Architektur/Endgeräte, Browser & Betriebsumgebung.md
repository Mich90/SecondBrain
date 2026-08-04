---
title: Endgeräte, Browser & Betriebsumgebung
project: "[[CGM Health BI]]"
bereich: technik
status: entwurf
tags:
  - pflichtenheft
  - technik
  - endgeraete
  - browser
---

# Endgeräte, Browser & Betriebsumgebung

## Browser-Support-Matrix

| Browser | Support | Versionen |
| --- | --- | --- |
| **Chrome** | verbindlich | aktuelle + vorherige |
| **Edge** (Chromium) | verbindlich | aktuelle + vorherige |
| Firefox | optional | – |
| Safari | optional | – |

> [!info]
> Ergibt eine klare Support-Matrix für Kunden-IT und QA.

## Arbeitsplätze & Umgebung

- **Primär:** Desktop-Arbeitsplätze und Laptops im Kliniknetz; optional Betrieb über **Citrix/Terminalserver**
- **Sekundär:** Tablets (Windows, iPad) für Visite/Nutzung auf Station
- Smartphone-Umfang siehe [[#Gestaffelter Funktionsumfang nach Endgeräteklasse]]

## Rein webbasiert

- Für die Nutzung ist **keine Installation oder Wartung** von Software am Arbeitsplatz nötig – Zugriff rein über den Browser. Reduziert Rollout- und Wartungsaufwand beim Kunden. *(Mobile Device ausgenommen.)*
- Die neue Generation ist **ausschließlich webbasiert**. Betrieb und Updates laufen zentral, nicht am einzelnen Arbeitsplatz.

## Responsivität

Die Oberfläche passt sich automatisch an die Bildschirmgröße an und ist auf allen Zielgrößen bedienbar und lesbar.

## Gestaffelter Funktionsumfang nach Endgeräteklasse

| Klasse | Umfang |
| --- | --- |
| **Tablet** | Volle Bedienbarkeit – Anzeigen **und** aktives Arbeiten (Filtern, Bearbeiten, Navigieren), v. a. für Visite/Station |
| **Smartphone** | Mindestens einzelne KPIs und einzelne Analysen (Lese-/Anzeige-Fokus); **kein** Fokus auf komplexe Analysepfade (mehrstufige Drilldowns, aufwändige Konfiguration) |

> [!note] Native App
> Eine **native App auf mobilen Geräten** ist notwendig, z. B. für Alerting.

## Touch

Für Tablet/Smartphone soll die Bedienung **touch-tauglich** sein (ausreichend große Ziele, Gesten), wo sinnvoll.
