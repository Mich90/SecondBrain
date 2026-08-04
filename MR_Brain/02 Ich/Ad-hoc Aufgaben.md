---
tags:
  - ich
  - action-items
  - ad-hoc
status: aktiv
---
# Ad-hoc Aufgaben

Manuell erfasste Aufgaben außerhalb von Meetings. Ergänzung zu [[Eigene Action Items]] (Meeting-gespeist).

> [!info] Nutzung
> - Neue Aufgabe: `- [ ] Aufgabentext #prio/mittel 📅 2026-08-15`
> - Erledigt: Häkchen setzen (`- [x]`)
> - Optional: Kontext-Wikilink z. B. `[[CGM Health BI]]`, Person `[[Nils Wittig]]`, Fälligkeit `📅 YYYY-MM-DD`, Priorität `#prio/hoch` `#prio/mittel` `#prio/niedrig`

## Offen

### 🔴 Hoch
- [ ] 

### 🟡 Mittel
- [ ] 

### 🟢 Niedrig
- [ ] 

## Warten auf / Blockiert
- [ ] 

## Ideen / Someday
- [ ] 

---

## Automatische Übersichten

### Alle offenen Ad-hoc Aufgaben (nach Priorität)
```dataview
TASK
FROM "02 Ich/Ad-hoc Aufgaben"
WHERE !completed
GROUP BY (contains(tags, "prio/hoch") ? "🔴 Hoch" : contains(tags, "prio/mittel") ? "🟡 Mittel" : contains(tags, "prio/niedrig") ? "🟢 Niedrig" : "⚪ Ohne Priorität")
```

### Fällig in den nächsten 7 Tagen
```dataview
TASK
FROM "02 Ich/Ad-hoc Aufgaben"
WHERE !completed AND due AND due <= date(today) + dur(7 days)
SORT due ASC
```

### Kürzlich erledigt
```dataview
TASK
FROM "02 Ich/Ad-hoc Aufgaben"
WHERE completed
SORT file.mtime DESC
LIMIT 10
```
