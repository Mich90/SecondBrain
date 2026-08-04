---
title: Leitprinzipien
project: "[[CGM Health BI]]"
bereich: anforderungen
status: entwurf
tags:
  - pflichtenheft
  - anforderungen
  - prinzipien
---

# Leitprinzipien

> [!abstract] Grundprinzipien, die alle weiteren Anforderungen prägen. Sie sind architektonische Grundprinzipien – keine optionalen Features.

## Semantik & Fachlogik

- **Semantik existiert genau einmal** – eine KPI besitzt genau eine gültige Definition je Version.
- **Fachlogik gehört niemals ins Frontend** – das Frontend konsumiert ausschließlich die Semantikschicht.

## Konfiguration statt Code

Alles, was kundenindividuell ist – Module, Berechtigungen, Layouts, Theming, Berichtssets – wird über **Konfiguration** gesteuert, nicht über Code. Kundenkonfigurationen müssen Updates überleben. Keine individuelle Kundenentwicklung im Code – das System ist per Design **update-sicher** und standardisiert.

## Kontext vor Vollständigkeit

Der Nutzer sieht, was er **jetzt** braucht, nicht alles, was existiert. Kontext ergibt sich aus Rolle, Zeitpunkt, Gerät, Aufgabe und Situation. Die Plattform muss Kontextregeln unterstützen, die steuern, welche Inhalte wem wann angezeigt werden.

## Kognitive Entlastung als Designprinzip

Das System muss dem Nutzer mentale Arbeit **abnehmen**, nicht aufbürden:

- **Aufmerksamkeit lenken** – Information kommt proaktiv zum Nutzer (Push, Alerts, Ambient), statt dass er sie suchen muss
- **Kontext statt Datenmenge** – weniger anzeigen, aber das Richtige
- **Interpretation vorleisten** – Abweichungen markieren, Vergleichswerte automatisch mitliefern, Ausreißer erklären
- **Konsistenz beseitigt Lernaufwand** – gleiche Aktion = gleiche Geste, überall im Produkt, über alle Kanäle

> [!example] Messbarkeit
> Kognitive Entlastung ist messbar: Zeit bis zur relevanten Information, Klicks bis zur Kernaussage, Onboarding-Dauer für neue Nutzer.

## Push statt Pull

Die Plattform muss den Paradigmenwechsel von **Pull** (Nutzer öffnet Bericht) zu **Push** (System liefert Information proaktiv) architektonisch ermöglichen. Das erfordert eine **Event- und Subscription-Engine** mit konfigurierbaren Schwellenwerten, Zustellkanälen und Empfängerregeln.

> [!warning]
> Alerting ist kein Add-on – es ist ein **zentraler Delivery-Mechanismus**.

## AI als Instrument, nicht als Selbstzweck

KI-Funktionalitäten dienen der kognitiven Entlastung: natürlichsprachlicher Zugang zu Daten, kontextsensitive Erklärungen, Abweichungsanalysen, Handlungsempfehlungen. AI bleibt **Assistent** – nachvollziehbar, steuerbar, kein autonomes Handeln.

> [!info] Voraussetzung
> Voraussetzung für jede sinnvolle KI-Funktion ist eine maschinenlesbare, saubere Semantikschicht. Ohne diese Grundlage ist KI wertlos.
