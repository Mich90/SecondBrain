---
title: Voraussetzung – Semantische Schicht
project: "[[CGM Health BI]]"
bereich: anforderungen
status: entwurf
tags:
  - pflichtenheft
  - anforderungen
  - semantik
  - voraussetzung
---

# Voraussetzung – Semantische Schicht

> [!info] Separates Dokument
> Die Semantikschicht wird in einem **separaten Dokument** spezifiziert. Hier wird sie nur als Voraussetzung referenziert. Für das Frontend ergeben sich daraus die folgenden Abhängigkeiten.

## Abhängigkeiten für das Frontend

- Das Frontend setzt voraus, dass **Kennzahlen, Dimensionen und Berechnungsregeln als versionierte, definierte Objekte über eine API** bereitgestellt werden.
- **Keine Berechnungslogik im Frontend** – alle Kalkulationen sind serverseitig.
- Berechtigungen werden in der Semantikschicht **enforced**; das Frontend respektiert und visualisiert sie.
- KI-Funktionalitäten und Natural-Language-Query setzen eine **saubere Semantikschicht** als Grundlage voraus.
