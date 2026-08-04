---
title: UI, UX & Design
project: "[[CGM Health BI]]"
bereich: anforderungen
status: entwurf
tags:
  - pflichtenheft
  - anforderungen
  - ui-ux
  - design
---

# UI, UX & Design

## Anspruch

- **Begeisterndes UI und UX** – die Oberfläche folgt im Standard dem **CGM Via Design System**
- **First-Class White-Labeling** zur Adaption an Kunden-CI oder zur Integration in CGM-fremde Subsysteme
- **Intuitive Bedienbarkeit** ohne hohen Schulungsaufwand für den Endanwender

## Barrierefreiheit / Monochromatische Darstellung

Barrierefreiheit wird berücksichtigt: Alle Visualisierungen müssen auch in **monochromatischer Darstellung** lesbar und unterscheidbar sein.

## Datenvertrauen

Das Frontend muss den **Qualitätsstatus der Daten aktiv kommunizieren**:

- Freshness-Indikatoren, Qualitäts-Badges, Datenwarnungen
- Jede Kennzahl muss auf Klick erklärbar sein: **Definition, Berechnung, Herkunft, Stand, Version**

> [!danger] Grundregel
> Ein Widget mit unsicheren Daten zeigt eine **Warnung – niemals eine falsche Zahl**.

## Neuentwicklung der Oberfläche

- Neuentwicklung der Web-Oberfläche als **browserbasierte, responsive Anwendung**
- Eigenständiges **UX-Design und Interaktionskonzept**

## Konsistentes Design-System

Alle Module und Bildschirme folgen einem gemeinsamen, konsistenten Design-System (**G3/VIA-konform**): ein zentrales Set aus Farben, Typografie, Icon-Set und Abständen. Der Anwender findet sich modulübergreifend sofort zurecht; das Produkt wirkt „aus einem Guss".

Zentrale Bausteine (Tabellen, Filter, Dialoge, Charts) werden **einmal als wiederverwendbare Standard-Komponenten** gebaut und überall gleich eingesetzt – gleiches Aussehen und Verhalten im ganzen Produkt.

## Usability & Selbsterklärung

- Die Bedienung orientiert sich an etablierten Usability-Prinzipien (**„10 goldene Regeln"**), ist ohne lange Schulung verständlich, mit klarer Navigation und schneller Orientierung. Ziel: **geringer Schulungsaufwand**.
- Direkt in der Anwendung wird erklärt, was wo gepflegt wird und welche Daten zur Verfügung stehen (Tooltips, Hilfetexte, geführte Abläufe). Neue Anwender können sich **selbst helfen**, ohne extern nachzufragen.
- **Fehlermeldungen** sind fachlich verständlich formuliert (was ist passiert, was kann der Nutzer tun) statt kryptischer technischer Fehler-Codes.

## Internationalisierung

Die Oberfläche ist **mehrsprachig auslegbar**. Texte sind im Idealfall auslagerbar/übersetzbar.

> [!todo] Offen
> Das Zielsprachen-Set ist noch festzulegen.

## Barrierefreiheit

Die Anwendung soll **barrierearm** bedienbar sein:

- Tastaturbedienbarkeit
- ausreichende Kontraste (ergänzt die monochromatische Lesbarkeit oben)
- semantisch sauberes HTML (Screenreader-tauglich)

## Anpassung über die Oberfläche

Anpassungen (Strukturen, Berichte, Einstellungen) erfolgen für Anwender/Admin **vollständig über die Oberfläche** – nicht im Backend oder per Code. Das macht Anpassungen schneller und für mehr Rollen zugänglich (vgl. [[Leitprinzipien#Konfiguration statt Code]]).
