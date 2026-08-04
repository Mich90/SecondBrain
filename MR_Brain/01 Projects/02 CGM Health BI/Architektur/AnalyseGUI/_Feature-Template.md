---
title: _Feature-Template
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
status: vorlage
tags:
  - analyse-gui
  - vorlage
---

# Fxx – Feature-Name

> [!abstract] Ziel
> Ein Satz: Was kann der Nutzer / das System nach Abschluss dieses Features, was vorher nicht ging?

> [!info] Status & Zuordnung
> **Status:** geplant · in Arbeit · umgesetzt · abgenommen
> **Phase:** 0–3 · **Abhängig von:** Fxx, Fxx · **Blockiert:** Fxx
> **Pflichtenheft-Bezug:** IDs (z. B. FIL-01, VIS-02)

## 1 · User-Workflow / Nutzungsszenario

Beschreibung des Ablaufs aus Nutzersicht (oder Systemsicht bei Infrastruktur-Features). Bei UI-Features: die konkreten Schritte, die der Nutzer geht.

## 2 · Scope & Abgrenzung

- **In Scope:** …
- **Out of Scope (bewusst):** … (mit Verweis, wo es stattdessen landet)

## 3 · Betroffene Projekte & Komponenten

| Projekt | Komponenten/Neuerungen |
| --- | --- |
| Backend (API/Domain/Infrastructure) | … |
| Frontend | … |
| SQLite-Schema | Migration ja/nein, betroffene Entitäten |
| Dev-Stack / Config | appsettings-Keys, Docker-Compose-Änderungen |

## 4 · Technisches Design

### 4.1 Datenmodell

Entitäten/Felder, EF-Konfiguration, Migrationen. Tenant-Filter beachten.

### 4.2 API-Vertrag

Endpunkte als Tabelle (Methode, Route, Request/Response-DTOs, Statuscodes, benötigte Rolle). JSON-Schemata für Definitionsdokumente inline als Codeblock.

### 4.3 Frontend

Routen, Komponenten, State (Signals/Stores), verwendete Libraries.

### 4.4 Sicherheits- & Tenant-Aspekte

Welche Rollen dürfen was; wie greift der Tenant-Filter; was wird an Cube durchgereicht.

## 5 · Akzeptanzkriterien

- [ ] Kriterium 1 (testbar formuliert)
- [ ] Kriterium 2
- [ ] Tenant-Isolationstest: Tenant A sieht keine Objekte von Tenant B
- [ ] Responsive / i18n-Keys / Loading-Error-Empty-States (bei UI)

## 6 · Testplan

Unit / Integration / E2E – was genau abgedeckt wird.

## 7 · Offene Punkte dieses Features

> [!question] …
