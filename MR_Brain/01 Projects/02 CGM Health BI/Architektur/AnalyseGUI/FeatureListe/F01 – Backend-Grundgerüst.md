---
title: F01 – Backend-Grundgerüst
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F01
phase: 0
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - backend
  - sqlite
---

# F01 – Backend-Grundgerüst

> [!abstract] Ziel
> Das Backend hat ein vollständiges Konfigurationsmodell über `appsettings.json` (Options-Pattern), eine per EF Core migrierte SQLite-Datenbank, strukturiertes Logging, Health Checks, einheitliches Fehlerformat (ProblemDetails) und OpenAPI – die technische Basis für alle Fach-Features.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 0 · **Abhängig von:** F00 · **Blockiert:** F02, F03, F06, F10

## 1 · Nutzungsszenario

Systemsicht: Beim Start liest das Backend die Konfiguration (appsettings + Environment-Overrides + User Secrets), wendet ausstehende EF-Migrationen auf die SQLite an (steuerbar per Konfiguration), registriert Health Checks und stellt Swagger UI in Development bereit. Jeder unbehandelte Fehler wird als RFC-7807-ProblemDetails mit Correlation-Id ausgeliefert und geloggt.

## 2 · Scope & Abgrenzung

- **In Scope:** Konfigurationsmodell, DbContext + Migrations-Infrastruktur + `Tenant`-Entität (als erste Migration), Serilog, HealthChecks, ProblemDetails, OpenAPI, Correlation-Id-Middleware.
- **Out of Scope:** Auth (F02), Cube-Client (F03), Fach-Entitäten (F06/F10).

## 3 · Konfigurationsmodell (`appsettings.json`)

```json
{
  "Database": {
    "SqlitePath": "data/analysegui.db",
    "ApplyMigrationsOnStartup": true
  },
  "Auth": {
    "Authority": "https://keycloak.example/realms/hbi",
    "Audience": "hbi-analysegui",
    "TenantClaim": "hbi_tenant",
    "DesignerRole": "hbi-designer"
  },
  "Cube": {
    "DefaultTimeoutSeconds": 30,
    "MetaCacheTtlMinutes": 15,
    "ContinueWaitMaxRetries": 20
  },
  "Cors": {
    "AllowedOrigins": ["https://localhost:4200"]
  },
  "Serilog": { "MinimumLevel": { "Default": "Information" } }
}
```

Jede Sektion wird als typisierte Options-Klasse (`DatabaseOptions`, `AuthOptions`, `CubeOptions`, `CorsOptions`) mit `ValidateDataAnnotations().ValidateOnStart()` registriert – Fehlkonfiguration bricht den Start ab statt zur Laufzeit zu knallen. Cube-**Verbindungen** (URLs je Tenant) liegen nicht in appsettings, sondern in der SQLite-Registry (F03); appsettings enthält nur Verhaltens-Defaults.

## 4 · Technisches Design

- **EF Core + SQLite:** `AnalyseGuiDbContext` in Infrastructure; SQLite mit `Journal Mode=WAL` und `Foreign Keys=On` (Connection-String-Pragmas); Migrationen im Infrastructure-Projekt; Startup-Migration hinter `ApplyMigrationsOnStartup` (Prod ggf. per CLI/Deploy-Schritt). Erste Migration legt `Tenants` an (`Id`, `Name`, `KeycloakTenantClaim` unique, `Enabled`).
- **Interceptor für Audit-Felder:** `SaveChangesInterceptor` setzt `CreatedBy/At`, `ModifiedBy/At` für alle Entitäten, die `IAuditable` implementieren (Username kommt ab F02 aus dem `ICurrentUser`-Service; bis dahin „system").
- **Serilog:** Console (strukturiert) + Rolling File (`logs/`, Pfad konfigurierbar); Request-Logging-Middleware; Correlation-Id (Header `X-Correlation-Id`, sonst generiert) in LogContext und ProblemDetails.
- **HealthChecks:** `/health` (liveness) und `/health/ready` (readiness: SQLite-Konnektivität; Cube-Checks werden in F03 ergänzt).
- **Fehlerbehandlung:** `IExceptionHandler` (NET 8) → ProblemDetails; Validierungsfehler (FluentValidation oder DataAnnotations, Festlegung: **FluentValidation** für DTOs) → 400 mit Fehlerliste; bekannte Domänenfehler als typisierte Exceptions → gemappte Statuscodes.
- **OpenAPI:** Swashbuckle, nur in Development öffentlich; XML-Kommentare an; Grundlage für den generierten Frontend-Client (F04).

## 5 · Akzeptanzkriterien

- [ ] Start mit gültiger Konfiguration erzeugt/migriert die SQLite-Datei; `Tenants`-Tabelle existiert.
- [ ] Start mit fehlender Pflicht-Konfiguration (z. B. `Auth:Authority`) schlägt mit klarer Fehlermeldung fehl.
- [ ] `/health` 200; `/health/ready` 503, wenn SQLite-Pfad nicht beschreibbar.
- [ ] Unbehandelte Exception → 500 ProblemDetails mit `traceId`/Correlation-Id, Details nur in Dev.
- [ ] Serilog schreibt Console + File; Correlation-Id taucht in Log und Response auf.
- [ ] Swagger UI in Development erreichbar.

## 6 · Testplan

- **Unit:** Options-Validierung (gültig/ungültig), Audit-Interceptor.
- **Integration (WebApplicationFactory, SQLite in-memory bzw. Temp-File):** Health-Endpunkte, ProblemDetails-Format, Migrations-Anwendung.
