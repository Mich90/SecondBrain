---
title: Offene Fragen – AnalyseGUI
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
status: teilweise-beantwortet
date: 2026-07-28
tags:
  - architektur
  - cgm-health-bi
  - analyse-gui
  - offene-fragen
---

# Offene Fragen – AnalyseGUI

> [!info] Zweck
> Rückfragen zur Implementierungsplanung ([[AnalyseGUI – Implementierungsplan (MOC)]]). Beantwortete Fragen sind mit `==(beantwortet)==` markiert und in den Plan eingearbeitet.

## Fragenliste

> [!question]- F-A1 – Repository- & Projektstruktur ==(beantwortet 07/2026)==
> **Antwort:** **Ein einzelnes Repository**, Backend und Frontend in **zwei Master-Ordnern** (`/backend`, `/frontend`). Querschnittliches (Docker-Compose, CI-Konfiguration, Repo-README, `.editorconfig`) liegt auf Root-Ebene. Struktur im Detail: [[F00 – Repo- & Solution-Setup]].
> **Restpunkt offen:** Welche CI-Umgebung (Azure DevOps / GitLab / GitHub Actions)? F00 legt die Pipeline-Skripte zunächst plattformneutral an (Build-Skripte, die jede CI aufrufen kann).

> [!question]- F-A2 – Angular-Version & VIA ==(beantwortet 07/2026, aktualisiert 2026-07-29)==
> ~~**Antwort:** **Aktuelle stabile Angular-Version** (beim Setup via `ng new` mit latest; Stand der Planung ≥ v21).~~
> **Update 2026-07-29 (Entscheidung 13 im MOC):** Frontend-Technologie ist **vorerst React** – Basis ist das Lovable-Frontend (`/frontend`: React 19, TanStack Start/Router, shadcn/ui, Zustand, ECharts, react-grid-layout). Angular-Bezüge in F04–F14 sind technologieneutral zu lesen. Unverändert gilt: **VIA kommt später** – Design-Token-Schicht von Anfang an, sodass der spätere VIA-Umstieg ein Token-Austausch statt eines Umbaus ist ([[F04 – Frontend-Shell & Theme]]).
> **Restpunkt:** Herkunft der „vorhandenen Filterobjekte" – durch die Filter-Widget-Modi des Lovable-Frontends (Dropdown/Listbox/Button-Leiste, shadcn-basiert) weitgehend obsolet; formal offen, ob die Alt-Listboxen noch übernommen werden sollen (F13).

> [!question]- F-A3 – BFF-Pattern ==(beantwortet 07/2026)==
> **Antwort:** Bestätigt. Das Frontend spricht ausschließlich mit dem .NET-Backend; das Backend proxied alle Cube-Queries (Token-Weitergabe, Validierung gegen die gespeicherte Widget-Definition, Audit). Interne Nutzung und Embedding laufen über denselben Datenpfad.

> [!question]- F-A4 – Semantic Layer „n Stück" ==(beantwortet 07/2026)==
> **Antwort:** **Sowohl als auch.** (a) Mehrere Cube-Instanzen sind als Verbindungen registrierbar (`SemanticLayerConnection`-Registry in SQLite, tenant-bezogen) **und** (b) innerhalb jeder Instanz stehen mehrere Cubes über die Meta-API zur Verfügung. Ein Widget referenziert genau eine Verbindung + einen Cube-Kontext darin.

> [!question]- F-A5 – Externe Widget-API: Antwortform ==(beantwortet 07/2026)==
> **Antwort:** Die Widget-API liefert das **fertige Widget inkl. Daten als Web Component bzw. iFrame-Einbindung** – identisch zur Darstellung im Dashboard. **Reine Daten-Abfragen sind nicht Teil der Widget-API**; wer nur Daten will, fragt direkt am Semantic Layer (Cube REST/SQL) ab. Konsequenz: F09/F20 als Embedding-Strang (Embed-Token & Endpunkte im Backend, Web-Component-Paketierung & iFrame-Route im Frontend).

> [!question]- F-A6 – Berechtigungs-Prinzipale für Dashboards ==(beantwortet 07/2026)==
> **Antwort:** **Sowohl als auch** – Berechtigung an einzelne **User**, **Rollen** und **Gruppen** (Keycloak). **Union-Semantik:** Hat der Nutzer über Username, Rolle **oder** Gruppe ein passendes Recht, darf er zugreifen. Stufen view/edit/owner; „Designer" (Widgets/Dashboards erstellen) als privilegierte Keycloak-Rolle.

> [!question]- F-A7 – Widget-Änderungsverhalten ==(beantwortet 07/2026)==
> **Antwort:** Änderungen am zentralen Widget **wirken sofort in allen Dashboards** (Referenz, keine Kopie). Keine Versionierung/Pinning zum Start; Duplizieren-Funktion als bewusster Weg für abweichende Varianten. UI-Hinweis im Designer: „Dieses Widget wird in n Dashboards verwendet."

> [!question]- F-A8 – Mandanten-Kontext ==(beantwortet 07/2026)==
> **Antwort:** Die AnalyseGUI ist **mandantenübergreifend**; der **Tenant-Bezug wird in die SQLite eingebaut** (`TenantId` an allen Definitionsentitäten). Tenant-Auflösung über Keycloak-Token-Claim; globaler Kontextschalter (NAV-03) in der Shell, sofern ein Nutzer Zugriff auf mehrere Mandanten hat. Jede Query filtert serverseitig auf den aktiven Tenant.

> [!question]- F-A9 – Sprachen zum Start ==(beantwortet 07/2026)==
> **Antwort:** Zum Start reicht **Deutsch**, die App ist aber **von Beginn an multilingual vorbereitet** – exakt das Konzept aus [[F04 – Frontend-Shell & Theme]]: alle Texte ab dem ersten Commit über Translation-Keys (ngx-translate), Sprachwahl in der Shell, Locale-basierte Zahlen-/Datumsformatierung. Weitere Sprachen = zusätzliche JSON-Dateien, kein Umbau.

> [!question] F-A10 – SQLite-Betriebsannahme ⏳
> Annahme: Single-Instance-Deployment des Backends (Last liegt auf Cube/ClickHouse). Korrekt? Vorsorge für späteren Mehrinstanz-Betrieb über EF Core (Provider-Wechsel auf PostgreSQL möglich) – reicht das? *Durch den mandantenübergreifenden Betrieb (F-A8) relevanter: eine zentrale Instanz für alle Mandanten sollte bzgl. Verfügbarkeit/Backup bewusst entschieden werden.*

> [!question]- F-A11 – Scope des ersten Release ==(beantwortet 07/2026)==
> **Antwort:** Bestätigt. **Kernrelease** = Phase 0–2 + F15/F16/F17 (Berechtigungen, Datenrechte-Verhalten, Katalog) inkl. Tabellen-Widget. **Iteration 2** = Deeplinks/gespeicherte Ansichten (F18), Export (F19), Embedding (F09/F20) sowie Drill-down, Cross-Filtering und Pivot.

> [!question]- F-A12 – Demo-/Dev-Umgebung ==(beantwortet 07/2026)==
> **Antwort:** **Cube mit Daten existiert bereits.** Der Dev-Stack startet ClickHouse/Cube **nicht** lokal, sondern verbindet sich per Konfiguration (`appsettings.Development.json`) gegen die bestehende Cube-Instanz. Docker-Compose lokal nur für Keycloak, sofern keine geteilte Dev-Instanz existiert (Restpunkt in [[F00 – Repo- & Solution-Setup]]).
