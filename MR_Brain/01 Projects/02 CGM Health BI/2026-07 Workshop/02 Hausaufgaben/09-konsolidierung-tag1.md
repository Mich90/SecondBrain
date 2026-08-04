---
title: Konsolidierung Tag 1 – eisTIK® NEXT GEN
date: 2026-07-07
tags:
  - eistik-next-gen
  - workshop/2026-07
  - konsolidierung
---

# Konsolidierung Tag 1 – eisTIK® NEXT GEN

> [!abstract] Erste Konsolidierung & Tagesabschluss
> (Agenda Tag 1, 16:45.) Zusammenführung aller 8 Hausaufgaben-Pitches: Cluster nach Themen, Häufigkeit
> (wer hat es genannt) und markierte Konflikte/Klärungspunkte.
> Quelle: die Einzeldateien [[01-michael|01]]–[[08-kai|08]] in diesem Ordner.
> Fokus: **Frontend & UX** (ETL ausgenommen).

**Teilnehmer/Kürzel:** Michael (Mi) · Mario (Ma) · Nils (Ni) · Markus (Mk) · Kai (Ka) · Stephan (St) · Uta (Ut) · Stefan (Sf)

**Legende:** 🟢 Must-Have · 🔵 Missing Feature · 🔴 Out of Scope · 🔢 Anzahl Nennungen

---

## 1. Große Konsens-Cluster (kategorieübergreifend)

Themen mit breiter Zustimmung – die stärksten Kandidaten fürs Pflichtenheft.


| Thema                                                                                                            | 🔢 | Genannt von                                                                | Kategorie(n)                                                 |
| ---------------------------------------------------------------------------------------------------------------- | -- | -------------------------------------------------------------------------- | ------------------------------------------------------------ |
| **Alerting / Echtzeit-Reaktion** (Push, Schwellwerte, Frühwarnung, ereignisorientiertes Reporting)              | 5  | Mi, Ma, Mk, St, Sf                                                         | 🔵                                                           |
| **Frontend-Performance / Echtzeit-Ad-hoc-Analyse** (schnelle Ladezeiten, visuelles Feedback, Skalierbarkeit)     | 5  | Mi, Ma, St, Sf, (Ut: schnelle Datenlisten)                                 | 🔵                                                           |
| **KI / AI-Funktionalitäten** (Assistenten, Ad-hoc-Abfragen, KI-Reporting)                                       | 6  | Ka, Ma, Ut, St, Sf, Mi                                                     | 🟢 (Ma, St) / 🔵 (Ka, Ut, Sf, Mi)                            |
| **Cloud / Multi-Deployment** (Hybrid: on-prem + SaaS + Cloud)                                                    | 3  | Mi, Ma, Sf                                                                 | 🔵                                                           |
| **Embedded Analytics / Widgets** (einmal bauen, mehrfach nutzen, in andere Apps einbinden)                       | 3  | Mi, Mk, St                                                                 | 🔵                                                           |
| **Semantische Schicht / Datenkatalog & Lineage / Datenvertrauen** (eine Wahrheit, Herkunft & Qualität sichtbar) | 3  | Mi, Mk, St                                                                 | 🔵                                                           |
| **Weg vom FAT-Client** → reines Web-Frontend, responsive, mobile                                                | 5  | Mi, Ma, St, Sf, (Ut/Ka implizit Web)                                       | 🔴 FAT-Client (Mi, Ma, St) · 🔵 Web/Responsive (Mi, Ma, St) |
| **Externe/eigene Datenanbindung & -anreicherung** (individueller Import, Data Integration Designer)              | 5  | Ka, Ma, Ut, St, Mi                                                         | 🟢                                                           |
| **Berichtswesen / Standardberichte** (Standard-Sets ausliefern, vollwertig)                                      | 5  | Ka, Mk, Ut, St, Sf                                                         | 🟢 (Mk, St) / 🔵 (Ka, Ut, Sf)                                |
| **Migrationskonzept** (bestehendes Berichtswesen überführen)                                                   | 3  | Ka, Sf, (Ut: Im-/Export)                                                   | 🔵                                                           |
| **Komplexität reduzieren**                                                                                      | 4  | Ma, Ut, Ka, Sf                                                             | 🔴                                                           |
| **Konfiguration statt Code** (keine Individualentwicklung, update-sicher)                                        | 5  | Mi, St, Sf, (Ma: keine Individuallösungen) (Ni: keine Einzelkunden-Tools) | 🟢 (Mi) / 🔴 (Mi, St, Sf, Ma, Ni)                            |
| **Rollen-/Rechte- & Governance-Konzept** (klar, feingranular, keine Schattenlogiken)                             | 5  | Mi, Ma, Mk, St, Sf                                                         | 🟢 (Mk, St, Sf) / 🔵 (Ma) / 🔴 altes Konzept (Mi, Ma)        |

---

## 2. Cluster nach Kategorie (zusammengefasst)

> Verwandte Einzelnennungen sind zu Themenblöcken gebündelt.
> **Hinweis:** „Data Integration Designer" (Ma) = **externe Datenanreicherung** →
> zusammengeführt mit „Externe Datenanbindung / Import".

### 🟢 Must-Haves (Was muss bleiben?)


| Themenblock                                 | Genannt von        | Enthält / Details                                                                                                                                                                                                                |
| ------------------------------------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Externe Datenanbindung & -anreicherung**  | Ka, Ma, Ut, St, Mi | Individueller Import eigener/externer Quellen;**Data Integration Designer**; Anreicherung ohne native Schnittstelle                                                                                                               |
| **Berichte, Dashboards & Berichtsdesigner** | Mi, Mk, Ut         | Visualisierung als Herzstück; eigene Berichte gestalten; Berichte auch extern (Excel) bauen                                                                                                                            |
| **Self-Service & Flexibilität**            | Mi, Ut, Ka         | Eigene Analysen/Berichte; Varianten-/Regelmanager, eigene Strukturen; Tiefenanalyse/Drilldown                                                                                                                                     |
| **Individualisierung durch Konfiguration**  | Mi                 | Ohne Code, update-sicher (↔ Out of Scope „Code-Individualisierung")                                                                                                                                                             |
| **Einzelfallanalyse**                       | Ut, Ka             | Alle Falldaten auf einen Blick                                                                                                                                                                                          |
| **Excel-Export**                            | Ut                 | Basis der Controlling-Arbeit                                                                                                                                                                                                      |
| **Kostenrechnung / InEK-Kalkulation**       | Ka, Ma             | KST, KTR, InEK; eigenständiger Grouper (Simulation/Qualität)                                                                                                                                                          |
| **Datenumfang & -qualität**                | Ma                 | Hohe Detailtiefe, geprüfte Qualität                                                                                                                                                                                             |
| **KI / AI-Funktionalitäten**               | Ma, St             |                                                                                                                                                                                                                                   |
| **Mandantenfähigkeit & Rollout**           | Mk, St             | Auch Träger; CI/Branding; feingranulare Rechte; skalierbarer Rollout                                                                                                                                                             |
| **Berechtigungslogiken**                    | Sf, St, Mk         | Standardberichte ausliefern (St), neues Bereichtigungskonzept                                                                                                                                                                     |
| **Strategische Leitplanken**                | Sf, Ni             | Markteintrittshürden hochhalten; Branchenfokus (Know-how > Technologie); Endanwender-Orientierung; Standardisierung als Skalierungsbasis;**Fokus Gesundheitswesen breiter als KH**, alle CGM-Systeme weltweit anbinden |

### 🔵 Missing Features (Was brauchen wir neu?)


| Themenblock                                     | Genannt von        | Enthält / Details                                                                                                                                                                                                             |
| ----------------------------------------------- | ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Alerting & Echtzeit-Reaktion**                | Mi, Ma, Mk, St, Sf | Push/Schwellwerte, Frühwarnung, ereignisorientiertes Reporting                                                                                                                                                                |
| **Frontend-Performance & Echtzeitanalyse**      | Mi, Ma, St, Sf, Ut | < 5 Sek., visuelles Feedback, schnelle Datenlisten, Skalierbarkeit                                                                                                                                                             |
| **Semantische Schicht, Datenkatalog & Lineage** | Mi, Mk, St         | „Eine Wahrheit"; Herkunft/Aktualität/Qualität sichtbar (Datenvertrauen)                                                                                                                                                     |
| **Cloud / Multi-Deployment & Skalierbarkeit**   | Mi, Ma, Sf         | Hybrid on-prem/SaaS/Cloud; extreme Skalierbarkeit, eigenständige Module                                                                                                                                                       |
| **Embedded Analytics / Widgets**                | Mi, Mk, St         | Einbindung in andere Applikationen; fortsetzbare/teilbare Analysearbeit (Mk)                                                                                                                                                   |
| **UI/UX & Bedienbarkeit**                       | Mi, Ma, St, Ut     | Modern, responsive, mobile, Multilanguage, VIA-Design; volle UI-Konfiguration; intuitive Bedienung + Anleitungen                                                                                                               |
| **KI-Unterstützung**                           | Sf, St, Ka, Ut     | Ad-hoc-Abfragen; KI-Assistenten                                                                                                                                                                                                |
| **API-Offenheit & Entwicklungsprozess**         | Mi, St             | Zentrale Plattform/Datenquelle; KI/MCP, API für QA, Versionierung                                                                                                                                                             |
| **Datenschutz**                                 | Sf                 | Pseudonymisierung, Anonymisierung, Audit-Logging                                                                                                                                                                               |
| **Standardberichtswesen & Migration**           | Ka, Ut, Sf         | Standard-Berichtssets; Im-/Export von Elementen; Berichte für erste Datenprüfung; Migrationskonzept                                                                                                                          |
| **Planung & Steuerung**                         | Ka, Ni             | Hochrechnung/Planung; Liquiditäts- & Insolvenzmanagement                                                                                                                                                                      |
| **Lizenzierung & Funktionsfreigabe**            | Ni                 | Skalierungsfähige Lizenzschlüssel; automatisierte Freigabe von Funktionalitäten anhand des Schlüssels; möglichst zentralisierte Lizenzierungs-/Pflegemöglichkeit (Bezug zu „Lizenzmodell/Bundles", Out of Scope – Ka) |
| **Benchmarking**                                | Ka, Sf             | Kundenvergleiche (kein Konsens)                                                                                                                                                                                                |
| **Datenakquise/-handel (Projekt MARE)**         | Ni                 | Das Thema hat Auswirkungen auf die Komplexität des Datenmodells, der semantischen Schicht und des Datenvolumens, welches sich deutlich erhöht. DSGVO/Art. 9 Gesundheitsdaten: Rechtsgrundlage, Einwilligung, Anonymisierung |

### 🔴 Out of Scope (Worauf verzichten wir?)


| Themenblock                                               | Genannt von        | Enthält / Details                                                                                                                                                                                                      |
| --------------------------------------------------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **FAT-Client / Desktop-Installationen**                   | Mi, Ma, St         | → alles im Browser                                                                                                                                                                                                     |
| **Individualisierung im Code / Einzelkunden-Entwicklung** | Mi, St, Sf, Ma, Ni | Nur über Konfiguration; Standards schaffen; keine Individuallösungen                                                                                                                                                  |
| **Altes Rechtekonzept / Impersonation**                   | Mi, Ma             | Schlankeres Rollen-/Rechtemodell                                                                                                                                                                                        |
| **Komplexität reduzieren**                               | Ut, Ka, Sf         | Auch: zu große Cubes je Thema (Ka)                                                                                                                                                                                     |
| **Technik-nahe Altlasten**                                | Ma                 | Features auf DB-Ebene; Wartung von Fremdtools (Jedox, Excel)                                                                                                                                                            |
| **Monolithes System**                                     | Sf                 | Ziel stattdessen: Trennung Technik/Content/Logik                                                                                                                                                                        |
| **Eigenentwicklung Berichtsdesigner**                     | Sf                 | Strategisch bewerten (Make-or-buy)                                                                                                                                                                           |
| **Druck / PDF-Export**                                    | Mk                 | vs. eigenes Must-Have „Berichtswesen inkl. PDF"                                                                                                                                                             |
| **Produktlinien-Altlasten**                               | Ka, Ut             | Kein Parallelbetrieb .NET/.akut (Ablösung); keine systemübergreifende Datenübernahme                                                                                                                                 |
| **Fachliche Spezialthemen**                               | Ka, Ut, St, Ni     | Prozessuales MD-Management; strategisches DRG-Grouping (MetaKIS); strikte DRG/PEPP-Trennung (Ut: soll gemeinsam gehen); differenziertes Medizincontrolling Einzelfall; Expertentools neu entwickeln |
| **Lizenzmodell**                                          | Ka                 | Einzellizenzen → Themen-/Bundle-Lizenzen                                                                                                                                                                               |
| **EOH**                                                   | Ut, St, (Ma)       |                                                                                                                                                                                                                         |

## 3. Nächste Schritte

- [ ]  Konsens-Cluster (Abschnitt 1) als Kern-Backlog ins Pflichtenheft übernehmen.
- [ ]  Priorisierung Must-Have vs. Neu vs. Verzicht je Cluster festlegen.
- [ ] Übertrag in den [[04-ideen-und-anforderungen|Anforderungskatalog]].
