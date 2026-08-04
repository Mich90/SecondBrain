---
title: KI, Q&A & proaktive Analyse
project: "[[CGM Health BI]]"
bereich: funktional
thema: ki
status: entwurf
tags:
  - pflichtenheft
  - funktional
  - ki
  - nlq
  - insights
---

# KI, Q&A & proaktive Analyse

> [!info] Legende
> **Muss** = Must-Have · **Kann** = Nice-to-have. (Alle Anforderungen dieses Themas stammen aus dem Nice-to-have-Block.)

## Natürliche Sprache & Q&A

| ID | Anforderung |
| --- | --- |
| KI-01 | Einfache Anfragen in natürlicher Sprache (z. B. „Zeige die Entwicklung der Notaufnahmepatienten der letzten 12 Monate nach Fachabteilung" oder „Zeige mir die Belegung der Inneren Medizin im letzten Quartal"). |
| KI-02 | Vorschläge/Autocomplete, um Nutzer zu gültigen Begriffen, Kennzahlen und Dimensionen zu führen. |
| KI-03 | Ergebnisse aus natürlicher Sprachabfrage/Q&A werden direkt als Visualisierung (Chart, KPI-Kachel, Tabelle) erzeugt und sind anschließend weiter editierbar. |

## Insights & „Why"-Analysen

| ID | Anforderung |
| --- | --- |
| KI-04 | „Quick Insights" bzw. automatische Erkenntnisse, z. B. automatisch erkannte Auffälligkeiten in Zeitreihen oder Segmenten (Peaks, starke Veränderungen, Ausreißer). |
| KI-05 | Insights auf Knopfdruck für einen ausgewählten Datensatz oder eine Visualisierung generieren. |
| KI-06 | Identifizierte Anomalien werden verständlich erklärt. |
| KI-07 | Aus automatisch erzeugten Insights direkt in passende Detailansichten oder Drill-downs springen. |
| KI-08 | Erklärungen, warum sich ein KPI verändert hat (z. B. „Welche Faktoren haben zur Veränderung beigetragen?" – analog „Explain the increase"). |
| KI-09 | Die UI zeigt, welche Dimensionen/Attribute für eine Erklärung herangezogen wurden, und erlaubt, diese zu ändern oder zu ergänzen. |
| KI-10 | Ergebnisse solcher „Why"-Analysen als neue Visualisierung oder Story-Element speicherbar. |

## Prognose

| ID | Anforderung |
| --- | --- |
| KI-11 | Prognosefunktionen für ausgewählte Kennzahlen (z. B. Belegung, Fallzahlen, Erlöse, Kosten, OP-Auslastung). |
| KI-12 | Prognosen im Frontend als zusätzliche Linien/Serien oder Kennzahlen (z. B. Forecast vs. Ist) darstellbar. |
| KI-13 | Prognosemethodik (z. B. verwendetes Modell, Trainingszeitraum) im Frontend nachvollziehbar dokumentiert und einsehbar. |

## Assistenz & Empfehlungen

| ID | Anforderung |
| --- | --- |
| KI-14 | Vorschläge für geeignete Visualisierungstypen, basierend auf gewählten Kennzahlen und Dimensionen. |
| KI-15 | Layout- oder Filterempfehlungen (z. B. „Füge die Dimension Fachabteilung hinzu, um Unterschiede sichtbar zu machen"). |
| KI-16 | KI-generierte Vorschläge ablehn- oder manuell überschreibbar; Entscheidungsgrundlage möglichst transparent und nachvollziehbar (keine „Black Box" im UI). |
| KI-17 | Automatisierte verbale Zusammenfassungen („Data Stories in Worten"), z. B. „Im Juni stieg die Verweildauer um X % gegenüber dem Vormonat", die der Nutzer anpassen und speichern kann. |
| KI-18 | KI-Assistenz bei der Erstellung von Kommentaren oder Berichtsinterpretationen (Formulierungsvorschläge, die der Nutzer prüft und freigibt). |
| KI-19 | Die UI zeigt klar an, welche Inhalte (Visualisierungen, Texte, Empfehlungen) KI-generiert sind und welche manuell eingegeben wurden oder aus der Datenbankabfrage stammen. |

> [!warning] Grundhaltung
> Alle KI-Funktionen folgen [[Leitprinzipien#AI als Instrument, nicht als Selbstzweck|„AI als Instrument, nicht als Selbstzweck"]]: nachvollziehbar, steuerbar, kein autonomes Handeln. Voraussetzung ist eine saubere [[Voraussetzung – Semantische Schicht|Semantikschicht]].
