---
title: Gruppe 3 – Strukturprüfung & Erweiterungsvorschlag
tags:
  - eistik-next-gen
  - workshop/2026-07
  - pflichtenheft
---

# Gruppe 3 – Strukturprüfung & Erweiterungsvorschlag

> [!abstract]
> Prüfung der offiziellen Pflichtenheft-Struktur (Kap. 5 + 6) gegen die **Konsens-Themen**
> (Must-Haves & Missing Features aus [[09-konsolidierung-tag1|Konsolidierung Tag 1]], Abschnitt 1).
> Scope Gruppe 3: **Nicht-funktionale Anforderungen & Rahmen** (Tech, Frontend/UX, ETL ausgenommen).

## A. Aktuelle offizielle Struktur

```
5   Nicht-funktionale Anforderungen (NFRs)
 51  Performance & Antwortzeiten
 52  Usability & Ergonomie
 53  Systemvoraussetzungen (Client-Side)
 54  Deployment / Wartung
6   Schnittstellen & Rahmenbedingungen
 61  API-Anforderungen (Kommunikation mit dem DWH)
 62  Authentifizierung (Security)
```

## B. Abgleich Konsens-Themen → aktuelle Kapitel

| Konsens-Thema (Nennungen) | Passt zu | Abgedeckt? |
|---------------------------|----------|-----------|
| Frontend-Performance / Echtzeit-Ad-hoc-Analyse (5) | 51 | ✅ ja |
| Weg vom FAT-Client → **Web, responsive, mobile** (5) | 52 / 53 | ⚠️ nur teilweise – Web/Responsive/Mobile nicht explizit |
| KI / AI-Funktionalitäten (6) | — | ❌ kein NFR-Heim (Rahmen: KI-Betrieb, Embedded) |
| Semantische Schicht / Datenkatalog & Lineage (3) | 61 | ⚠️ teilweise (als Abfragegrundlage) |
| Embedded Analytics / Widgets (3) | 61 | ⚠️ teilweise – Einbettung/Widget-API fehlt |
| Cloud / Multi-Deployment (3) | 54 | ⚠️ „Wartung" ja, **Deployment-Modelle** unscharf |
| Rollen-/Rechte- & Governance (5) | 62 | ⚠️ „Authentifizierung" ≠ Autorisierung/Governance |
| Konfiguration statt Code (5) | 54 | ⚠️ nur implizit (Update-Sicherheit) |
| Komplexität reduzieren (4) | — | ❌ eher Querschnitt/Prinzip |

## C. Erkannte Lücken

1. **Web/Responsive/Mobile** als eigenständiges Thema (Kern der Next Gen – „weg vom FAT-Client").
2. **Autorisierung & Governance** – 62 heißt nur „Authentifizierung"; Rollen/Rechte, Mandanten, keine Schattenlogiken fehlen.
3. **Datenschutz & Compliance** – Pseudonymisierung, Anonymisierung, Audit-Logging (DSGVO/Art. 9) nicht verortet.
4. **Deployment-Modelle** – on-prem / SaaS / Cloud explizit (nicht nur „Wartung").
5. **Skalierbarkeit** – große Datenmengen, eigenständige Module.
6. **Embedded Analytics / Widget-Schnittstelle** – Einbindung in Drittsysteme.
7. **Semantische Schicht** als Schnittstellen-/Abfrageprinzip.
8. **KI-Rahmenbedingungen** – Betrieb/Einbettung von KI (nicht-funktionaler Teil).
9. **Update-Sicherheit / Konfiguration statt Code** – als NFR sichtbar machen.

## D. Vorschlag: erweiterte Kapitelstruktur (kompatibel zur Nummerierung)

```
5   Nicht-funktionale Anforderungen (NFRs)
 51  Performance & Antwortzeiten
 52  Usability & Ergonomie
 53  Systemvoraussetzungen (Client-Side)          [Browser-/Endgeräte-Matrix]
 54  Web, Responsive & Mobile                     ⟵ NEU
 55  Skalierbarkeit & Lastverhalten               ⟵ NEU
 56  Deployment-Modelle (on-prem / SaaS / Cloud)  ⟵ NEU (Split aus „Deployment/Wartung")
 57  Betrieb, Wartung & Update-Sicherheit         ⟵ (vormals 54; Konfiguration statt Code)
6   Schnittstellen & Rahmenbedingungen
 61  API-Anforderungen (Kommunikation mit dem DWH)
 62  Semantische Schicht & Datenzugriff           ⟵ NEU
 63  Embedded Analytics & Widget-Schnittstelle    ⟵ NEU
 64  Authentifizierung & Autorisierung (Security) ⟵ (erweitert um Rollen/Rechte/Governance)
 65  Datenschutz & Compliance                     ⟵ NEU (DSGVO, Audit-Logging)
 66  KI-Rahmenbedingungen (Betrieb & Einbettung)  ⟵ NEU
```

> [!note]
> „Usability & Ergonomie" (52) bleibt; das VIA-Design/Konsistenz-Thema wird dort verortet.
> Reine UI/UX-Funktionalität, die in Gruppe 2 gehört, wird hier nur als NFR-Rahmen gestreift.

## E. Zu entscheiden (vor Arbeitsphase-Befüllung)

- [ ] Erweiterte Nummerierung (D) übernehmen – oder schlanker halten?
- [ ] „Deployment/Wartung" wirklich in 56 + 57 splitten?
- [ ] KI-Rahmen (66) bei Gruppe 3 oder eher Gruppe 1/2?
- [ ] Abgrenzung 52 (Usability, Gruppe 3) ↔ funktionale UI-Themen (Gruppe 2).
