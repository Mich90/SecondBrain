---
tags:
  - projekt
status: aktiv
owner: 
start: 
ziel: "[[Ziele 2026]]"
aktualisiert: 2026-07-20
---
# Grouper – Projektsteuerung

> [!info] Abgrenzung
> Diese Notiz ist die **Management-Sicht** (Status, Risiken, Entscheidungen, Meetings). Die technische Dokumentation liegt in [[Grouper Project Overview]].

## Worum geht es?
Klassifikations-Engine für das deutsche Krankenhaus-Abrechnungssystem: Zuordnung von **DRG**- und **PEPP**-Codes zu Patientenfällen nach InEK-Spezifikation (jährlich wechselnde DSL). Umsetzung in C#/.NET 8, jährliche InEK-Zertifizierung.

## Status & nächste Schritte
- **Status:** *(z. B. Zertifizierung 2027 in Vorbereitung)*
- **Verantwortlicher Teamlead:** *(→ `owner`-Property als Wikilink füllen)*
- [ ] *(nächster Schritt)*

## Risiken & offene Fragen
- 

## Wichtige Links
- [[Grouper Project Overview]] – technische Übersicht
- [[Key Architecture Decisions]] – Architektur-Entscheidungen
- [[Certification Process]] – InEK-Zertifizierung

## Entscheidungen zu diesem Projekt
```dataview
LIST
FROM #entscheidung
WHERE contains(file.outlinks, this.file.link)
SORT datum DESC
```

## Meetings zu diesem Projekt
```dataview
LIST
FROM #meeting
WHERE contains(file.outlinks, this.file.link)
SORT datum DESC
```
