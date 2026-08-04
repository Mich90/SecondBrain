---
title: Filter, Drill & Interaktion
project: "[[CGM Health BI]]"
bereich: funktional
thema: filter-interaktion
status: entwurf
tags:
  - pflichtenheft
  - funktional
  - filter
  - drill
  - interaktion
---

# Filter, Drill & Interaktion

> [!info] Legende
> **Muss** = Must-Have · **Kann** = Nice-to-have.

## Muss-Anforderungen

| ID | Anforderung |
| --- | --- |
| FIL-01 | Globale Filter pro Dashboard/Bericht (z. B. Zeitraum, Standort, Fachabteilung, Kostenträger). |
| FIL-02 | Drill-down und Drill-up auf Hierarchien (z. B. Konzern → Verbund → Krankenhaus → Fachabteilung → Station → Fall). |
| FIL-03 | Drill-Cross-Detail: Springen aus einem Bericht in unterschiedliche Detailberichte unter Mitnahme des aktuellen Kontextes. |
| FIL-04 | Drill-down auf Patienten-/Fallebene an Berechtigungen und Datenschutzanforderungen (Anonymisierung/Pseudonymisierung) gebunden. |

## Kann-Anforderungen

| ID | Anforderung |
| --- | --- |
| FIL-05 | Lokale Filter auf Elementebene (z. B. einzelne Tabelle oder Grafik). |
| FIL-06 | Master-Detail-Filtermechanismen: ein Master-Filter steuert andere Visualisierungselemente. |
| FIL-07 | Cross-Filtering: Auswahl in einer Visualisierung (z. B. Klick auf Balken) wirkt als Filter auf andere Visualisierungen oder hebt diese hervor. |
| FIL-08 | Verschiedene Filterarten (Datumsbereiche inkl. „letzte X Tage/Wochen/Monate", Auswahllisten, Suchfelder, Bereichsslider). |
| FIL-09 | Aktueller Filterzustand jederzeit sichtbar und mit einem Klick zurücksetzbar. |
| FIL-10 | Filterzustände speicher- und teilbar (z. B. als persönliche Ansicht oder als Link). |
| FIL-11 | Konfigurierbare Drillpfade. |
| FIL-12 | Filtereinstellungen eines Berichts in eine Zwischenablage kopieren und in andere Berichte einfügen. |
| FIL-13 | Deeplinks: Links zu Dashboards/Berichten mit festem Filterzustand teilbar. |
| FIL-14 | Deeplink-Empfänger sieht bei ausreichender Berechtigung denselben Blick (inkl. Filterung); bei fehlenden Rechten wird eine verständliche Hinweis-/Fehlermeldung angezeigt. |
| FIL-15 | Rückgängig-Funktion (Undo). |
| FIL-16 | Dashboards erscheinen initial innerhalb einer definierten Ladezeit; bei längeren Abfragen Ladeanzeige mit Fortschritt und Abbruchoption. |
| FIL-17 | Filter- und Drill-Interaktionen möglichst in Echtzeit; bei Verzögerungen visuelle Hinweise. |

> [!note] Bezug
> FIL-04 setzt zwingend auf das Backend-Enforcement aus dem [[Rollen- & Berechtigungsmodell]] auf. FIL-16/FIL-17 konkretisieren [[Betrieb, Performance & Compliance#Performance als Nutzererlebnis|Performance als Nutzererlebnis]].
