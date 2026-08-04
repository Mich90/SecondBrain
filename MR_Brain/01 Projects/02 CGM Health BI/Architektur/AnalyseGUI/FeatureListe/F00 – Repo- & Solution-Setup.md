---
title: F00 – Repo- & Solution-Setup
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F00
phase: 0
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - setup
---

# F00 – Repo- & Solution-Setup

> [!abstract] Ziel
> Ein lauffähiges Grundgerüst: ein Repository mit `/backend` (.NET-8-Solution) und `/frontend` (Angular-Workspace, aktuelle Version), das gegen die **bestehende Cube-Instanz** und Keycloak konfiguriert werden kann, inkl. plattformneutraler Build-/Test-Skripte als CI-Grundlage.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 0 · **Abhängig von:** – · **Blockiert:** alle weiteren Features
> **Entscheidungen:** F-A1 (Mono-Repo, zwei Master-Ordner), F-A2 (Angular latest, VIA später), F-A12 (Cube existiert)

## 1 · Nutzungsszenario

Ein Entwickler/Agent klont das Repo, trägt in `appsettings.Development.json` bzw. `environment.development.ts` die URLs der bestehenden Cube- und Keycloak-Instanzen ein, führt `./build.ps1` (oder die Einzelkommandos) aus und hat Backend (`https://localhost:7xxx/health` → healthy, Swagger erreichbar) und Frontend (`ng serve`) laufen.

## 2 · Scope & Abgrenzung

- **In Scope:** Repo-Struktur, .NET-Solution mit Projektschnitt, Angular-Workspace, Basis-Konfigurationsdateien, Build-/Test-Skripte, README, `.editorconfig`/Linting, optionales Docker-Compose für lokalen Keycloak.
- **Out of Scope:** Fachliche Endpunkte, EF/DB (F01), Auth-Implementierung (F02), CI-Pipeline-Definition für eine konkrete Plattform (Restpunkt F-A1 – Skripte werden so gebaut, dass jede CI sie aufruft).

## 3 · Repository-Struktur

```
/ (Repo-Root)
├── backend/
│   ├── HealthBi.AnalyseGui.sln
│   ├── src/
│   │   ├── HealthBi.AnalyseGui.Api/            # ASP.NET Core Web API (Composition Root)
│   │   ├── HealthBi.AnalyseGui.Domain/         # Entitäten, Definitionsschemata, Interfaces (keine Abhängigkeiten)
│   │   └── HealthBi.AnalyseGui.Infrastructure/ # EF Core/SQLite, Cube-Client, Keycloak-Anbindung
│   └── tests/
│       ├── HealthBi.AnalyseGui.UnitTests/
│       └── HealthBi.AnalyseGui.IntegrationTests/
├── frontend/
│   └── analyse-gui/                            # Angular-Workspace (App: analyse-gui)
│       └── src/app/
│           ├── core/        # Auth, Interceptors, Tenant-Context, API-Client
│           ├── shared/      # UI-Basiskomponenten, Design-Tokens, Pipes
│           └── features/    # widgets/, dashboards/, catalog/ (je Feature ein Ordner)
├── deploy/
│   └── docker-compose.dev.yml                  # nur Keycloak (falls keine geteilte Dev-Instanz)
├── build.ps1 / build.sh                        # restore → build → test (Backend) + lint → test → build (Frontend)
├── .editorconfig · .gitignore · README.md
```

> [!note] Namenskonvention
> `HealthBi.AnalyseGui.*` ist Platzhalter – falls CGM-Namensvorgaben existieren, vor dem ersten Commit ersetzen (einzige Stelle: Solution/Projektnamen + Root-Namespace).

## 4 · Technisches Design

- **Backend:** `dotnet new` auf .NET 8 LTS; Nullable + ImplicitUsings an; `Directory.Build.props` für gemeinsame Compiler-Settings/Analyzer; API-Projekt referenziert Infrastructure + Domain, Infrastructure referenziert Domain (klassische Zwiebel, bewusst schlank – kein separates Application-Projekt, Services leben im Api-/Domain-Schnitt).
- **Frontend:** `ng new analyse-gui --style=scss --routing` mit aktueller CLI; ESLint + Prettier; Ordnerkonvention core/shared/features; `environment.ts`-Dateien nur für Build-Zeit-Werte, Laufzeit-Konfiguration (API-URL, Keycloak) über `public/config.json`, das die App beim Start lädt (`provideAppInitializer`) – so ist dasselbe Frontend-Build in allen Umgebungen deploybar.
- **Anbindung Bestandssysteme (F-A12):** `appsettings.Development.json` enthält auskommentierte Beispielblöcke für Cube-URL(s) und Keycloak-Realm; echte Werte lokal via User Secrets bzw. nicht eingecheckter `appsettings.Local.json`.
- **Docker-Compose (optional):** nur `keycloak` (Import eines Dev-Realms `hbi` mit Testusern/Rollen `hbi-designer`, `hbi-user`, zwei Test-Tenants als Claim) – wird nur gebraucht, wenn keine geteilte Dev-Keycloak-Instanz existiert.
- **CI-neutral:** `build.ps1`/`build.sh` kapseln alle Schritte; die spätere Pipeline (Plattform offen) ruft nur diese Skripte.

## 5 · Akzeptanzkriterien

- [ ] `dotnet build` und `dotnet test` laufen grün (leere Beispieltests vorhanden).
- [ ] `ng lint`, `ng test --watch=false`, `ng build` laufen grün.
- [ ] Backend startet, `/health` liefert 200 (Basis-Check ohne DB, kommt in F01).
- [ ] Frontend lädt `config.json` beim Start und zeigt Platzhalter-Shell.
- [ ] README beschreibt Setup gegen bestehende Cube-/Keycloak-Instanz in < 10 Schritten.
- [ ] Keine Secrets im Repo (Check via `.gitignore` + Review).

## 6 · Offene Punkte dieses Features

> [!question] CI-Plattform (Restpunkt F-A1)
> Azure DevOps, GitLab oder GitHub Actions? Bis zur Antwort bleiben nur die neutralen Build-Skripte.

> [!question] Geteilte Dev-Keycloak-Instanz?
> Existiert ein Dev-Realm auf der bestehenden Keycloak-Instanz (an der auch Cube hängt), oder brauchen wir das lokale Compose-Setup inkl. Cube-seitiger JWKS-Konfiguration für den Dev-Realm?
