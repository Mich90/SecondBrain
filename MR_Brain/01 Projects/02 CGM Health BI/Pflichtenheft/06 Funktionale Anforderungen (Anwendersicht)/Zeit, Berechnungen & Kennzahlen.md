---
title: Zeit, Berechnungen & Kennzahlen
project: "[[CGM Health BI]]"
bereich: funktional
thema: berechnungen
status: entwurf
tags:
  - pflichtenheft
  - funktional
  - berechnungen
  - kennzahlen
  - zeit
---

# Zeit, Berechnungen & Kennzahlen

> [!info] Legende
> **Muss** = Must-Have · **Kann** = Nice-to-have.

## Muss-Anforderungen

| ID | Anforderung |
| --- | --- |
| CALC-01 | Anwender (mindestens Power-User) können in der Oberfläche einfache berechnete Felder definieren (z. B. Differenzen Ist−Plan, Quotienten/Verhältnisse wie Fälle pro Bett oder Kosten pro Fall, Prozentanteile, Wachstumsraten). |
| CALC-02 | Standardfunktionen zur Berechnung: arithmetische Operatoren, Aggregationsfunktionen, logische Funktionen, Datums-/Zeitfunktionen, Textfunktionen. |

## Kann-Anforderungen

| ID | Anforderung |
| --- | --- |
| CALC-03 | Zeitreihenanalysen mit flexiblen Zeitgranularitäten (Tag, Woche, Monat, Quartal, Jahr). |
| CALC-04 | „On-the-fly"-Zeitaggregation: Umschaltung der Zeitgranularität per UI. |
| CALC-05 | Vergleich von flexiblen Zeiträumen. |
| CALC-06 | Kundenindividuelle Zeitraumprofile (z. B. Wirtschaftsjahr, letztes Quartal, letzte 12 Monate) als auswählbare Filteroption. |
| CALC-07 | Verständliche, fachliche Syntax bzw. Formular-Builder für berechnete Felder, um Standardnutzer nicht mit reiner Formelsprache zu konfrontieren. |
| CALC-08 | Berechnete Felder innerhalb eines Dashboards wiederverwendbar; globale Freigabe optional durch Administratoren oder Power-User. |
| CALC-09 | Definition globaler berechneter Kennzahlen auf Berichtsebene, in mehreren Visualisierungselementen wiederverwendbar. |
| CALC-10 | Definition lokaler berechneter Kennzahlen auf Elementebene (nur in einer bestimmten Tabelle oder Grafik gültig). |
| CALC-11 | Aggregationsart pro Kennzahl in der Visualisierung festlegbar (z. B. Summe, Durchschnitt, Minimum, Maximum, Anzahl, ggf. Median). |
| CALC-12 | Gruppierungen per UI definierbar (z. B. Werte in Kategorien zusammenfassen, Binning für Alter/Wertebereiche), soweit dies nicht der semantischen Schicht widerspricht. |
| CALC-13 | Die UI macht deutlich, welche Berechnungen lokal (nur aktuelle Ansicht) und welche zentral in der semantischen Schicht definiert sind. |
| CALC-14 | Kennzahlendefinitionen per UI einsehbar (z. B. Definition, Quelle, Gültigkeitszeitraum) für Transparenz über Berechnungen. |
| CALC-15 | Berichtsvariablen (z. B. Referenzjahr, Planversion, Szenarioname), verwendbar in Filtern, Berechnungen und Textfeldern. |
| CALC-16 | Änderungen an Berichtsvariablen wirken sich konsistent auf alle abhängigen Elemente des Berichts aus. |

> [!warning] Grenze zur Semantikschicht
> CALC-13/CALC-14 stützen das Leitprinzip [[Leitprinzipien#Semantik & Fachlogik|„Semantik existiert genau einmal / Fachlogik nie im Frontend"]]. UI-nahe Berechnungen sind erlaubt, dürfen aber zentrale Definitionen nicht überschreiben.
