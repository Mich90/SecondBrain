---
title: Sicherheit & Zugriffsschutz
project: "[[CGM Health BI]]"
bereich: sicherheit
status: entwurf
tags:
  - pflichtenheft
  - sicherheit
  - security
  - berechtigungen
---

# Sicherheit & Zugriffsschutz

## Durchgängiges Berechtigungskonzept

Ein durchgängiges Berechtigungskonzept auf **drei Ebenen**:

- **funktionale Ebene** der Applikation
- **Spalten** (Dimensionen, Kennzahlen)
- **Zeilen** (Datensatz)

> [!info] Bezug
> Das fachliche Rollenmodell (funktionale Rolle vs. Datenrolle, Enforcement im Backend) ist in [[Rollen- & Berechtigungsmodell]] beschrieben.

## Mandantentrennung

Daten verschiedener Mandanten sind **strikt** voneinander getrennt.

## Authentifizierung

- **SSO-Integration** in Klinik-Identitätssysteme (z. B. AD/IdP über **OpenID Connect / SAML**). Anwender melden sich sicher und idealerweise nur einmal an.
- Einsatz **sicherer Tokens** (z. B. JWT), Speicherung in **HttpOnly-Cookies**, Kommunikation ausschließlich über **HTTPS**.
- **Automatischer Logout** nach (konfigurierbarer) Inaktivität (z. B. 15–30 Min.). Token-Erneuerung im Hintergrund, solange der Nutzer aktiv ist; nach Timeout erneute Anmeldung erforderlich.

## Schutz gegen Web-Angriffe

| Angriff | Schutz |
| --- | --- |
| **XSS** | Angular-Mechanismen + Content Security Policy |
| **CSRF** | SameSite-Cookies / Token |
| **Clickjacking** | Frame-Einschränkungen |
| **SQL-Injection** | Keine direkte SQL-Eingabe aus dem Browser; nur parametrisierte Queries über den Semantic Layer |

> [!info]
> Gerade im Cloud-Umfeld ein zentraler Bestandteil.

## Protokollierung (Audit)

Sicherheitsrelevante Events werden im Backend protokolliert – u. a. Login, Datenabrufe, Exporte, Admin-Aktionen (**wer hat wann was getan**), um Nachvollziehbarkeit und Compliance sicherzustellen.

## Datensparsamkeit im Client

- Es werden **nur die notwendigen Patientendaten** im UI angezeigt.
- **Keine Speicherung sensibler Daten im LocalStorage** des Browsers.
