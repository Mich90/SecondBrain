---
title: F02 – Authentifizierung, Rollen & Tenant-Kontext
project: "[[CGM Health BI]]"
bereich: architektur
komponente: analyse-gui
feature: F02
phase: 0
status: geplant
version: 0.1
date: 2026-07-28
tags:
  - analyse-gui
  - feature
  - auth
  - keycloak
  - multi-tenant
---

# F02 – Authentifizierung, Rollen & Tenant-Kontext

> [!abstract] Ziel
> Nutzer melden sich per Keycloak (OIDC, Code Flow + PKCE) an; das Backend validiert JWTs, mappt Rollen/Gruppen und löst den aktiven Mandanten auf. Alle EF-Queries sind automatisch tenant-gefiltert, und das User-Token steht für die Durchreichung an Cube bereit – **ein User-Ident über Frontend, Backend und Cube hinweg**.

> [!info] Status & Zuordnung
> **Status:** geplant · **Phase:** 0 · **Abhängig von:** F00, F01 · **Blockiert:** F03–F20
> **Pflichtenheft-Bezug:** NAV-03 (Mandantenkontext), [[Rollen- & Berechtigungsmodell]] (Backend-Enforcement)
> **Entscheidungen:** F-A6 (User/Rolle/Gruppe, Union), F-A8 (mandantenübergreifend, TenantId)

## 1 · Nutzungsszenario

Ein Nutzer öffnet die App → Redirect zu Keycloak → nach Login zurück mit Tokens. Das Frontend hängt an jeden API-Call das Access Token und den aktiven Tenant. Das Backend validiert das Token, ermittelt die dem Nutzer erlaubten Tenants aus dem Token-Claim, prüft den angeforderten Tenant dagegen und stellt Request-scoped `ICurrentUser` (Username, Rollen, Gruppen, Raw-Token) und `ITenantContext` (aktive TenantId) bereit. Hat der Nutzer mehrere Tenants, bietet die Shell (F04) einen Kontextschalter.

## 2 · Scope & Abgrenzung

- **In Scope:** Frontend-OIDC-Integration, Backend-JWT-Validierung, Claims-Mapping (Rollen aus `realm_access.roles`/`resource_access`, Gruppen aus `groups`), Tenant-Auflösung + globaler EF-Query-Filter, `/api/me`-Endpunkt, Autorisierungs-Policies.
- **Out of Scope:** Dashboard-Berechtigungs-Entität und -Prüfung (F15), Embed-Tokens (F09), Keycloak-Realm-Administration (Betriebsthema; Anforderungen an den Realm werden hier dokumentiert).

## 3 · Anforderungen an den Keycloak-Realm (dokumentiert, nicht implementiert)

- Client `hbi-analysegui` (public, Code Flow + PKCE, Redirect-URIs der App) und Audience-Mapping fürs Backend.
- Rollen: `hbi-designer` (Gestaltung), `hbi-admin` (Verbindungs-/Tenant-Verwaltung), Standardnutzer ohne Zusatzrolle.
- Claims im Access Token: `preferred_username`, `groups` (Group-Membership-Mapper), Tenant-Claim (konfigurierbarer Name, Default `hbi_tenant`) als **Array** der erlaubten Tenant-Kennungen.
- Dieselbe Realm-/JWKS-Konfiguration ist in Cube hinterlegt (`CUBEJS_JWK_URL`), damit das durchgereichte User-Token dort direkt validiert wird.

## 4 · Technisches Design

### 4.1 Frontend

- Library: `angular-auth-oidc-client` (zertifiziert), Konfiguration aus `config.json` (F00): authority, clientId, scopes `openid profile roles`.
- Silent Renew via Refresh Token; Auth-Guard auf allen Routen außer Embed-Routen (F20).
- HTTP-Interceptor: `Authorization: Bearer <token>` + `X-Tenant-Id: <aktiver Tenant>` an alle `/api`-Calls; 401 → Re-Login, 403 → Fehlerseite „keine Berechtigung".
- Tenant-State als Signal-Store in `core/`; initiale Wahl: einziger Tenant automatisch, sonst zuletzt genutzter (localStorage) oder Auswahl-Dialog.

### 4.2 Backend

- `AddJwtBearer` mit Authority/Audience aus `AuthOptions`; Clock Skew klein halten; Rollen-Claim-Transformation Keycloak → .NET-Rollen.
- Policies: `Designer` (Rolle `hbi-designer`), `Admin` (Rolle `hbi-admin`), Default = authentifiziert.
- **Tenant-Middleware** (nach AuthN): liest `X-Tenant-Id`, prüft gegen die Tenant-Claims des Tokens **und** gegen aktive `Tenants`-Einträge in SQLite; kein Header + genau ein erlaubter Tenant → automatisch dieser; sonst 400/403. Ergebnis in `ITenantContext` (scoped).
- **Globaler EF-Query-Filter:** `HasQueryFilter(e => e.TenantId == tenantContext.TenantId)` für alle `ITenantOwned`-Entitäten; SaveChanges-Interceptor setzt `TenantId` beim Anlegen und verwirft clientseitig gelieferte Werte. `IgnoreQueryFilters()` nur in klar gekennzeichneten Admin-Pfaden.
- `GET /api/me` → `{ username, displayName, roles[], groups[], tenants[{id,name}], activeTenantId }` – Datenquelle für Shell und Kontextschalter.
- `ICurrentUser.RawToken` steht dem Cube-Client (F03) für die Durchreichung zur Verfügung; das Backend erstellt **keine** eigenen Tokens Richtung Cube.

## 5 · Akzeptanzkriterien

- [ ] Unauthentifizierter `/api`-Call → 401; gültiges Token → 200.
- [ ] `X-Tenant-Id` außerhalb der Token-Claims → 403; ohne Header bei genau einem erlaubten Tenant → automatische Auflösung.
- [ ] Entität wird beim Anlegen zwingend mit dem aktiven Tenant persistiert, auch wenn der Client eine andere TenantId sendet.
- [ ] Query-Filter: Nutzer aus Tenant B erhält für Objekt aus Tenant A ein 404 (Tenant-Isolationstest, wiederverwendbare Testbasis für alle Folge-Features).
- [ ] `Designer`-Policy: Nutzer ohne Rolle erhält 403 auf einem Test-Endpunkt.
- [ ] `/api/me` liefert Rollen, Gruppen und Tenant-Liste korrekt aus einem Referenz-Token.
- [ ] Frontend: Login-Redirect, Silent Renew, Logout funktionieren; Interceptor setzt beide Header.

## 6 · Testplan

- **Unit:** Claims-Mapping, Tenant-Middleware-Logik (Matrix: Header × Claims).
- **Integration:** Test-JWTs mit eigenem Signing-Key (Authority gemockt via `TestServer`-Konfiguration); Tenant-Isolations-Testbasis als wiederverwendbare Fixture.
- **E2E (manuell in Phase 0):** Login-Roundtrip gegen Dev-Keycloak.
