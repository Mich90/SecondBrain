---
title: Export, Druck & Verteilung
project: "[[CGM Health BI]]"
bereich: funktional
thema: export
status: entwurf
tags:
  - pflichtenheft
  - funktional
  - export
  - verteilung
---

# Export, Druck & Verteilung

> [!info] Legende
> **Muss** = Must-Have · **Kann** = Nice-to-have.

## Muss-Anforderungen

| ID | Anforderung |
| --- | --- |
| EXP-01 | Tabellarische Inhalte müssen in Excel/CSV zur weiteren Verarbeitung exportiert werden können. |

## Kann-Anforderungen

| ID | Anforderung |
| --- | --- |
| EXP-02 | Export von Dashboards und Ansichten als PDF. |
| EXP-03 | Export einzelner Visualisierungselemente (z. B. Diagramm als Bild) optional möglich. |
| EXP-04 | Export von Berichten und Dashboards in PDF und Excel; zusätzlich Export in Präsentationsformate (z. B. PowerPoint, inkl. ausgewählter Visualisierungen bzw. ganzer Story). |
| EXP-05 | Druckvorschau, in der Seitenumbrüche, Kopf-/Fußzeilen, Logos und weitere Layout-Aspekte sichtbar sind. |
| EXP-06 | Seitenlayout-Einstellungen (Hoch-/Querformat, Seitenränder, Paginierung). |
| EXP-07 | Bereichsmarkierungen innerhalb tabellarischer Berichte (z. B. je Abteilung oder je Standort eine separate Seite im PDF/Print). |
| EXP-08 | Reportabonnements: Nutzer erhalten Berichte zeitgesteuert. |
| EXP-09 | Zustellung abonnierter Berichte per E-Mail (als Anhang oder Link). |
| EXP-10 | Abonnement-Empfänger verwalten ihre Abonnements im Frontend eigenständig (Anlegen, Ändern, Löschen). |
| EXP-11 | Anwender konfigurieren geplante Exporte (z. B. monatlicher PDF-Bericht an definierte Empfänger). |
| EXP-12 | Zeitplan, Empfängerliste, Exportformat und zugehöriger Filterzustand sind in der UI für geplante Exporte konfigurierbar. |
| EXP-13 | Beim Versand per E-Mail ist der Absendername frei konfigurierbar (Auswahl aus einer Liste hinterlegter Absender). |
| EXP-14 | Import von Berichten oder Berichtsmappen aus anderen Projekten/Instanzen. |
| EXP-15 | Integration in Office-Umgebungen bzw. Klinikintranet über Embedding (z. B. iFrame), sodass Inhalte in Präsentationen oder Portale eingebettet werden können. |

> [!note] Bezug
> EXP-15 (Embedding) knüpft an [[Architektur – Widgets, Kanäle & Integration#Embedded Analytics (Headless-Ansatz)|Embedded Analytics]] an. Für alle Exportkanäle gilt die kanalübergreifende Rechteprüfung aus dem [[Rollen- & Berechtigungsmodell]] (Rendering mit Rechteprüfung).
