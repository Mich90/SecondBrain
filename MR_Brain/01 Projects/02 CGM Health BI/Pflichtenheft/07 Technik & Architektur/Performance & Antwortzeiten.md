---
title: Performance & Antwortzeiten
project: "[[CGM Health BI]]"
bereich: technik
status: entwurf
tags:
  - pflichtenheft
  - technik
  - performance
  - nichtfunktional
---

# Performance & Antwortzeiten

> [!info] Bezug
> Konkretisiert die strategischen Prinzipien aus [[Betrieb, Performance & Compliance#Performance als Nutzererlebnis]] mit messbaren Zielwerten.

## Antwortzeit-Zielwerte

Wenn ein Anwender eine Analyse ausführt (Filter setzen, Bericht öffnen, Kennzahl aufrufen), soll das Ergebnis schnell erscheinen.

| Fall | Zielwert |
| --- | --- |
| Kleine Analysen | < 0,5 Sek. |
| Standard-Abfragen (typische Dashboards / Filter) | ≤ 2 Sek. |
| Komplexere Fälle | 5 Sek. als **Obergrenze** |

## Unmittelbares Feedback

Zwei zusammengehörige Aspekte:

- **(a) Unmittelbare UI-Reaktion** – Oberflächen-Reaktionen (Button-Klick, Filter setzen, Speichern) fühlen sich flüssig an: sichtbares Feedback innerhalb von ca. **0,3–0,5 Sek.**, unabhängig von der Datenabfrage.
- **(b) Aktives Ladefeedback** – dauert eine ausgelöste Operation länger, signalisiert die Oberfläche sichtbar, dass sie arbeitet (Fortschrittsanzeige, Skeleton, Spinner, ggf. mit Kontext).

> [!warning]
> Der Nutzer soll nie „ins Leere" warten und im Zweifel unsicher sein, ob das System hängt.

## Große Datenbestände

Die Antwortzeiten dürfen auch bei sehr großen Datenbeständen (viele Fälle, lange Zeiträume, viele Dimensionen) **nicht spürbar einbrechen**.

- Umgang mit großen Tabellen über **Paging / virtuelles Scrolling**, statt Tausende Zeilen gleichzeitig im Browser zu rendern und dadurch die Abfragezeiten künstlich zu verlängern.

## Ad-hoc nahezu in Echtzeit

Anwender sollen spontane, nicht vorbereitete Auswertungen (**Ad-hoc**) durchführen und aktuelle Kennzahlen **nahezu in Echtzeit** sehen können.

## Kaltstart

Beim Kaltstart der App (erster Aufruf nach Login) sollen Inhalte schnell sichtbar sein. Es gelten weiterhin die genannten UI/UX-Vorgaben zum Nutzerfeedback.
