---
title: Rollen- & Berechtigungsmodell
project: "[[CGM Health BI]]"
bereich: rollen
status: entwurf
tags:
  - pflichtenheft
  - rollen
  - berechtigungen
  - security
---

# Rollen- & Berechtigungsmodell

> [!abstract] Grundtrennung
> Das System trennt **funktionale Rolle** (was darf der Nutzer *tun*) und **Datenrolle** (was darf er *sehen*).

## Rechtetyp 1: Funktionale Rolle

**Definition:** Bestimmt, welche Aktionen ein Nutzer im System ausführen darf – unabhängig davon, auf welche Daten er Zugriff hat.

- **Granularität:** funktionsbasiert, nicht personenbasiert
- Ein Nutzer kann **mehrere** funktionale Rollen besitzen
- Berechtigungen sind **additiv** – keine Rolle entzieht Rechte einer anderen

## Rechtetyp 2: Datenrolle

**Definition:** Bestimmt, welche Datenausschnitte ein Nutzer sehen darf – unabhängig davon, welche Aktionen er ausführen kann.

- **Granularität:** dimensionsbasiert – die Einschränkung erfolgt entlang der im Semantic Layer definierten Dimensionen
- Datenrollen sind **restriktiv** – ohne explizite Zuweisung sieht der Nutzer **keine** Daten
- Mehrere Datenrollen werden **vereinigt (Union)**, nicht geschnitten

## Enforcement

> [!danger] Backend-Enforcement
> Die Rechteprüfung findet **ausschließlich im Backend** statt – nie im Widget, nie im Kanal. Das Backend liefert nur Daten zurück, die **beide** Prüfungen bestehen.

- Gilt **kanalübergreifend identisch**: Web, Teams, Mobile, PDF-Export, API
- Wechsel des Kanals oder Identity Providers ändert die Rechtelogik nicht
- **Zeilenbasierte Berechtigungsprüfung (Row-Level-Security)** über alle Ausgabekanäle hinweg: Browser, PDF-Versand, eingebettete Widgets, externe Tools (Power BI, Excel)
- Ein **zentrales Rechtemodell**, das kanalunabhängig greift
- Das Frontend **stellt Rechte dar, definiert sie aber nicht**

## Kombination & Mandantenfähigkeit

- Ein Nutzer kann mehrere funktionale **und** mehrere Datenrollen haben; die Kombination ergibt den tatsächlichen Handlungsraum.
- **Mandantenfähigkeit:** Ein Chefarzt sieht ausschließlich die aggregierten und fallbezogenen Daten seiner eigenen Fachabteilung; die Geschäftsführung besitzt standortübergreifende Ansichten.

## CI / Branding (Mandantenfähigkeit)

- Eigenes Logo, eigene Farben, eigene Navigationsstruktur pro Kunde/Mandant
- CI-Theming über alle Kanäle: Web, Mobile, Teams-Einbettung, PDF
- **Keine Einzelinstallationspflege** – Konfiguration über die Plattform
- White-Labeling ist ein **First-Class-Feature**, keine Projektleistung
