---
title: Architektur – Widgets, Kanäle & Integration
project: "[[CGM Health BI]]"
bereich: anforderungen
status: entwurf
tags:
  - pflichtenheft
  - anforderungen
  - architektur
---

# Architektur – Widgets, Kanäle & Integration

## Widget-first-Architektur

Das **Widget** ist die kleinste auslieferbare Einheit der Plattform – nicht der Bericht, nicht das Dashboard. Jedes Widget ist eigenständig, einbettbar, kanalagnostisch und wiederverwendbar. Ein Bericht ist eine **Komposition von Widgets**, keine eigene technische Einheit.

> [!warning]
> Widgets enthalten **niemals Fachlogik** – sie konsumieren ausschließlich die Semantikschicht.

## Kanalstrategie und Delivery-Modell

Information muss über mehrere Kanäle auslieferbar sein, ohne für jeden Kanal eigene Fachlogik oder eigene Berichte zu bauen.

- **Primärkanal:** Web-Browser (volle Interaktion)
- **Weitere Kanäle:** Teams, Mobile, Office, KIS/ERP, Ambient-Displays – bedient über **kanalspezifische Adapter**
- Ein gemeinsames **Design System** stellt Konsistenz über alle Kanäle sicher
- Das Frontend ist **ein Kanal unter mehreren** – externe Tools (Power BI, Excel) konsumieren dieselbe Semantik

## Gestufte Interaktionstiefe

Nicht jeder Nutzer braucht dieselbe Interaktionstiefe. Die Plattform muss **vier Stufen** unterstützen:

| Stufe | Bedeutung | Beispiel-Kanal |
| --- | --- | --- |
| **Ambient** | reine Anzeige | iWATCH, Ambient-Display |
| **Micro** | einzelne KPI | Mobile |
| **Compact** | Dashboard | Laptop |
| **Full** | explorative Analyse | Desktop, Bericht |

Jedes Widget **deklariert seine Stufe**; der Kanal bestimmt die maximal mögliche Stufe. Ein Widget passt sich dem Kanal der Visualisierung an, statt die Darstellung zu skalieren.

## Modulare Inhaltsarchitektur

Fachliche Inhalte werden als eigenständige, unabhängig auslieferbare **Module** strukturiert. Module können einzeln lizenziert, aktiviert und aktualisiert werden. Neue Module lassen sich hinzufügen, ohne bestehende zu verändern. Die Plattform stellt ein einheitliches Framework bereit, in dem Module lauffähig sind.

> [!info] Bezug
> Welche fachlichen Module das sind, wird im [[Content-Portfolio & Module|Content-Portfolio]] definiert.

## Embedded Analytics (Headless-Ansatz)

Visuelle Komponenten sollen in andere Systeme integrierbar sein (**Headless-Ansatz**) – auch außerhalb des CGM-Systemorbits (Nicht-CGM-KIS, Drittsysteme).

- Widgets müssen als eigenständige, einbettbare UI-Komponenten in Drittanwendungen funktionieren (KIS, Intranet, Teams, ERP)
- Authentifizierung, Theming und Rechteprüfung müssen auch im **eingebetteten Kontext** vollständig greifen
- Die Analysearbeit muss über Kanalgrenzen hinweg **fortsetzbar** sein

## Offene Schnittstellen

- Das Frontend konsumiert Daten **ausschließlich über standardisierte APIs** – kein direkter Datenbankzugriff
- Externe Tools konsumieren dieselbe Semantikschicht über standardisierte **Connectoren**
- Authentifizierung und Row-Level-Security greifen auch über externe Connectoren
- **SSO** über bestehende Identity-Infrastruktur (AD, OAuth 2.0, OIDC)
