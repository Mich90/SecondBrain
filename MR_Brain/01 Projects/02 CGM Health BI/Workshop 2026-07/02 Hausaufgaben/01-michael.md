---
title: Hausaufgabe – Michael (VP Development)
tags:
  - eistik-next-gen
  - workshop/2026-07
  - hausaufgabe
person: Michael
rolle: VP Development
---

# Hausaufgabe – Michael (VP Development)

> [!info]
> Fokus: **Frontend & User Experience** (ETL ausgenommen). Pro Kategorie **3–5 Punkte**.
> Aufgabenstellung: siehe [[00-aufgabenstellung|Aufgabenstellung]]
> _Dokumentiert aus der Präsentation „2026-07-09_eisTIK_Next_Generation_Workshop.pptx"._

## 🟢 Must-Haves (Was muss bleiben?)

1. **Individualisierung durch Konfiguration** – Anpassung ohne Code: schnell, wartbar und update-sicher, ohne individuelle Anpassungen im Hintergrund.
2. **Berichte & Dashboards** – aussagekräftige Visualisierung als Herzstück des Produkts.
3. **Self-Service** – Anwender können eigene Analysen und Berichte erstellen.
4. **Externe Datenanbindung** – Möglichkeit, eigene Datenquellen hinzuzufügen.

## 🔵 Missing Features (Was brauchen wir neu?)

_Fünf Themen für die Next Generation – je Thema Kundennutzen im Fokus._

1. **Analyse-Performance im Frontend (Reaktion in Echtzeit)**
   - _Ziel:_ Analysen laufen spürbar performant (Rückmeldung < 5 Sek.); Objekte signalisieren aktiv, dass sie arbeiten – der Nutzer wartet nicht ins Leere.
   - _Heute:_ Lange Wartezeiten ohne erkennbare Rückmeldung – unklar, ob das System arbeitet.
   - _Nutzen:_ Kurze Wartezeiten sorgen für direkte Akzeptanz beim Endanwender.

2. **Semantische Schicht (eine Wahrheit für alle Kennzahlen)**
   - _Ziel:_ Zentrales Business-Vokabular – Kennzahlen und Dimensionen einheitlich definiert, unabhängig von der technischen Datenquelle.
   - _Heute:_ Definitionen verteilt und technisch geprägt; dieselbe Kennzahl kann in Berichten abweichen.
   - _Nutzen:_ Konsistente Zahlen über alle Berichte, weniger Interpretationsstreit, schnellere Self-Service-Analysen; zugleich Grundlage für verlässliche KI (Kennzahlen im richtigen Kontext → belastbare, nachvollziehbare Antworten).

3. **Hybrid Cloud (Cloud & On-Premise)**
   - _Ziel:_ Sensible Daten bleiben lokal, Skalierung und Services aus der Cloud – frei kombinierbar je nach Bedarf des Hauses.
   - _Heute:_ Betrieb on-premises – eingeschränkte Skalierung, aufwändigere Updates und Infrastruktur.
   - _Nutzen:_ Skalierbarkeit nach Bedarf bei voller Datenhoheit, geringere Infrastrukturkosten, schnellere Updates.

4. **UI/UX (ein Erlebnis, vier Facetten)**
   - _Facetten:_ VIA-Design · Widgets & Einbindung in andere Applikationen · Mobile/Responsive · Multilanguage.
   - _Heute:_ Eigenständige, in die Jahre gekommene Oberfläche – teils desktop-gebunden (FAT-Client), nicht mehrsprachig, schwer einbindbar.
   - _Nutzen:_ Vertraute, intuitive Bedienung im gesamten CGM-Kosmos, ausschließlich in Web-Technologie; Kennzahlen dort, wo entschieden wird – eingebettet, mobil und international. Widgets liefern Analysen dorthin, wo sie benötigt werden.

5. **Entwicklungsprozess (schneller & sicherer liefern)**
   - _Bausteine:_ Entwicklung mit KI-Tools (MCP) · API – auch für QA & automatisiertes Testen · Versionierung/Repository.
   - _Heute:_ Manuelle, schwer automatisierbare Abläufe ohne offene APIs; Tests und Nachvollziehbarkeit aufwändig.
   - _Nutzen:_ Schnellere Release-Zyklen bei höherer Qualität und Stabilität; Anpassungen nachvollziehbar, testbar und zukunftssicher.

## 🔴 Out of Scope (Worauf verzichten wir?)

_Bewusster Verzicht schafft Fokus – für weniger Komplexität und bessere Wartbarkeit._

1. **Kein lokaler Client mehr** – alles läuft über den Browser; keine Installation/Wartung am Arbeitsplatz, keine lokalen Installationen beim Anwender.
2. **Keine Individualisierung im Code** – Anpassungen ausschließlich über Konfiguration (update-sicher, wartbar, testbar); wenn nötig, Standards implementieren.
3. **Aktuelles Rechtekonzept** – bewusster Verzicht zugunsten eines schlankeren, klareren Datenmodells und Rollen-/Rechte-Konzepts.
