---
title: Navigation, Startseite & Berichtskatalog
project: "[[CGM Health BI]]"
bereich: funktional
thema: navigation
status: entwurf
tags:
  - pflichtenheft
  - funktional
  - navigation
  - katalog
---

# Navigation, Startseite & Berichtskatalog

> [!info] Legende
> **Muss** = Must-Have (Anwendersicht) · **Kann** = Nice-to-have (Anwendersicht). IDs dienen der Nachverfolgbarkeit.

## Muss-Anforderungen

| ID | Anforderung |
| --- | --- |
| NAV-01 | Such- und Filterfunktionen für den Berichtskatalog (z. B. Suche nach Name, Kategorie, Ersteller, Änderungsdatum, Tags). |
| NAV-02 | Rollenbasierte Sichten der Navigation, sodass jede Rolle (z. B. Controller, Geschäftsführung, ärztliche Leitung, Pflegedienstleitung, OP-Management, Stationsleitung) nur relevante Bereiche und Berichte sieht. |
| NAV-03 | Verbund-/Mandantenkontexte (z. B. Standort, Haus, Unternehmensverbund) in Navigation, Katalogen und Filtern abbilden; globaler Kontextschalter für Mandant/Standort. |
| NAV-04 | Mehrsprachfähigkeit (Multi-Language). |

## Kann-Anforderungen

| ID | Anforderung |
| --- | --- |
| NAV-05 | Globale, konsistente Navigationsleiste für Zugriff auf Startseite, Berichtskategorien, Favoriten/Schnellzugriffe und persönliche Einstellungen. |
| NAV-06 | Strukturierung der Inhalte nach Berichtskategorien (z. B. Controlling, Medizin, Pflege, OP, Management, Qualität). |
| NAV-07 | Berichtskatalog, in dem Berichte nach Kategorien, Projekten und Berichtsmappen organisiert werden. |
| NAV-08 | Erstellung und Verwaltung von Berichtsmappen (Sammlungen von Einzelberichten, z. B. Monatsabschluss, Budgetrunde). |
| NAV-09 | Personalisierbare Startseite pro Nutzer/Rolle mit Favoritenberichten, häufig genutzten und zuletzt verwendeten Berichten. |
| NAV-10 | Wechsel zwischen klassischer Menüsteuerung (Menüleisten, Baumstruktur) und Shortcuts/Schnellzugriff (Favoritenleiste, Tastenkürzel). |
| NAV-11 | Konsistente UI hinsichtlich Layout, Farben, Symbolen und Interaktionen. |
| NAV-12 | Metadaten zu Berichten (Beschreibung, Besitzer, Erstell-/Änderungsdatum, Tags, Fachbereich) anzeigen und in der Suche nutzbar machen. |
| NAV-13 | Parallele Arbeit mit mehreren offenen Berichten/Dashboards (z. B. Tabs oder interne Fenster). |
| NAV-14 | Zusammenhänge zwischen Berichten anzeigen (z. B. verknüpfte Detailberichte, Drill-Through-Ziele, Stories). |

> [!note] Bezug
> NAV-02 und NAV-03 setzen auf das [[Rollen- & Berechtigungsmodell]] und die dort beschriebene Mandantenfähigkeit auf.
