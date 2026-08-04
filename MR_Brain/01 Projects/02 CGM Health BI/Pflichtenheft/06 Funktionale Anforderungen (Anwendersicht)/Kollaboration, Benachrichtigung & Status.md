---
title: Kollaboration, Benachrichtigung & Status
project: "[[CGM Health BI]]"
bereich: funktional
thema: kollaboration
status: entwurf
tags:
  - pflichtenheft
  - funktional
  - kollaboration
  - alerts
  - status
---

# Kollaboration, Benachrichtigung & Status

> [!info] Legende
> **Muss** = Must-Have · **Kann** = Nice-to-have. (Alle Anforderungen dieses Themas stammen aus dem Nice-to-have-Block.)

## Kann-Anforderungen

| ID | Anforderung |
| --- | --- |
| COL-01 | Kommentarfunktion auf Dashboard-/Berichtsebene und auf Ebene einzelner Visualisierungselemente. |
| COL-02 | Kommentare werden mit Zeitstempel, Autor und optional Bezug auf den aktuellen Filter-/Berichtszeitraum gespeichert; Threading (Antworten, Status „offen/erledigt") wird unterstützt. |
| COL-03 | „Mentionen" von Nutzern in Kommentaren samt Benachrichtigungen; zusätzlich Chatfunktion. |
| COL-04 | Annotationen in Charts (Markierung und Beschriftung von Ereignissen im Zeitverlauf). |
| COL-05 | Storytelling: Erstellung geführter „Stories" mit Sequenzen von Ansichten und Begleittext. |
| COL-06 | Präsentationsmodus (Vollbild mit reduzierten UI-Elementen). |
| COL-07 | Konfigurierbare Alert-Mechanismen mit definierbaren Schwellwerten für Kennzahlen. |
| COL-08 | Alerts sind im Frontend sichtbar (z. B. Badges, Banner, markierte KPIs) und unterscheiden sich klar von regulären Statusanzeigen. |
| COL-09 | Berichte/Dashboards haben einen im Frontend sichtbaren Status (z. B. „Entwurf", „in Prüfung", „freigegeben"). |
| COL-10 | Änderungen an – insbesondere freigegebenen – Berichten werden versioniert und nachvollziehbar protokolliert. |
| COL-11 | Papierkorb inkl. Protokoll, wer auf Löschen geklickt hat. |

> [!note] Bezug
> COL-07/COL-08 (Alerting) sind die Anwendersicht auf das Architekturprinzip [[Leitprinzipien#Push statt Pull|„Push statt Pull"]] (Event- und Subscription-Engine).
