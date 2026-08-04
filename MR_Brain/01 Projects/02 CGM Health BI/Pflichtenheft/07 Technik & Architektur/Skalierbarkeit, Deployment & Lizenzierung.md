---
title: Skalierbarkeit, Deployment & Lizenzierung
project: "[[CGM Health BI]]"
bereich: technik
status: entwurf
tags:
  - pflichtenheft
  - technik
  - skalierbarkeit
  - deployment
  - lizenzierung
---

# Skalierbarkeit, Deployment & Lizenzierung

## Skalierbarkeit

Das System muss mit stark wachsenden Größen umgehen: mehr gleichzeitige Nutzer, deutlich mehr Datenvolumen und eine steigende Zahl angebundener Einrichtungen/Mandanten – **ohne Neubau der Architektur**.

> [!todo] Details offen
> Hier fehlen noch konkretisierende Details (Zielgrößen für Nutzerzahl, Datenvolumen, Mandantenzahl).

## Modularität im Betrieb

Einzelne Module sollen unabhängig lauffähig und auch klein/einfach einrichtbar sein, sodass kleine Kunden schlank starten und bei Bedarf wachsen können.

## Deployment-Modelle

Das Produkt läuft je nach Kundenbedarf:

- **On-Premises** (Klinik-Rechenzentrum, alles „im Haus"): DWH und App im Kliniknetz, interner Browser-Zugriff.
- **Cloud-SaaS** (Multi-Tenant-Betrieb): Klinik-Vorsysteme liefern Daten in Cloud-Infrastruktur, Zugriff der Nutzer über HTTPS.

Die Frontend-Architektur ist von Grund auf **cloud-tauglich** (zustandslos, skalierbar, container-fähig), sodass Cloud-Betrieb ohne Umbau möglich ist.

## Konfiguration & Rollout

- Kundenspezifische Anpassungen erfolgen über **Konfiguration statt individuellem Code** – Anpassungen überstehen Produkt-Updates (vgl. [[Leitprinzipien#Konfiguration statt Code]]).
- Korrekturen und neue Inhalte lassen sich **zentral pflegen** und in die Breite (viele Mandanten/Standorte) **automatisiert ausrollen**, statt sie überall einzeln nachzuziehen.

## Lizenzierung

- Über einen **Lizenzschlüssel** werden Funktionalitäten automatisiert freigegeben. Der Umfang skaliert mit der Lizenz – Freischaltung **ohne manuellen Eingriff** auf dem Kundensystem.
- Lizenzen und Freigaben sollen möglichst **zentral** verwaltet und gepflegt werden können (ein Ort für Vergabe, Änderung, Überblick).

## Betriebsaufwand

Einführung und laufender Betrieb sollen mit **geringem Aufwand** möglich sein (schnelle Einrichtung, wenig manuelle Wartung, möglichst automatisierte Prozesse).
