---
tags:
  - system
aktualisiert: 2026-07-20
---
# Start hier – Anleitung zum Vault

> [!abstract] Struktur
> - **00 System** – Templates & diese Anleitung
> - **01 Projects** – ein Unterordner pro Projekt/Initiative (bestehend: Grouper, eisTIKNextGen)
> - **02 Ich** – [[Über mich]], [[Prinzipien]], [[Ziele 2026]], Weekly Reviews
> - **03 Personen** – eine Notiz pro Person (Directs, Stakeholder)
> - **04 Meetings** – alle Meeting-Notizen, flach, Dateiname beginnt mit Datum
> - **05 Entscheidungen** – eine Notiz pro größerer Entscheidung
> - **06 Wissen** – Prozesse, Architektur, Learnings, Referenz
> - **07 Inbox** – alles Unsortierte; wöchentlich leeren

## Namenskonventionen
- **Meetings & 1:1s:** `YYYY-MM-DD Typ Kontext`, z. B. `2026-07-20 1zu1 Anna` oder `2026-07-21 Review Grouper`
- **Entscheidungen:** kurzer sprechender Titel, z. B. `Grouper – Wechsel auf Postgres`
- **Personen:** voller Name als Dateiname, z. B. `Anna Müller`

## Die drei Regeln, die alles verknüpfen
1. **Personen, Projekte und Ziele immer als `[[Wikilink]]`** erwähnen – nie nur als Text.
2. **Properties im Frontmatter ausfüllen** (datum, person, projekt, status) – sie machen den Vault abfragbar.
3. **Neues in [[07 Inbox]]**, freitags per [[Template Weekly Review|Weekly Review]] einsortieren.

## Einrichtung (einmalig)
1. **Templates aktivieren:** Einstellungen → Core-Plugins → *Vorlagen* aktivieren → Vorlagenordner auf `00 System/Templates` setzen. *(Alternativ Community-Plugin **Templater** für mehr Automatik.)*
2. **Dataview installieren:** Einstellungen → Community-Plugins → *Dataview* installieren & aktivieren – sonst bleiben die Abfrage-Blöcke leer. *(Alternativ das Core-Feature **Bases** nutzen.)*
3. Optional: **QuickAdd** installieren, um per Hotkey ein neues 1:1 / Meeting mit Template anzulegen.

## Templates
- [[Template Person]] → neue Notiz in `03 Personen`
- [[Template 1zu1]] → neue Notiz in `04 Meetings`
- [[Template Meeting]] → neue Notiz in `04 Meetings`
- [[Template Entscheidung]] → neue Notiz in `05 Entscheidungen`
- [[Template Projekt]] → neue Notiz in `01 Projects/<Projektordner>`
- [[Template Weekly Review]] → neue Notiz in `02 Ich`

## Erste Schritte
- [ ] [[Über mich]] ausfüllen
- [ ] [[Prinzipien]] ausfüllen
- [ ] [[Ziele 2026]] ausfüllen
- [ ] Für jeden Direct eine Personen-Notiz aus [[Template Person]] anlegen
- [ ] Dataview installieren, Vorlagenordner setzen
