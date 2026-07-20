---
tags:
  - projekt
status: aktiv
owner: 
start: {{date:YYYY-MM-DD}}
ziel: 
---
# {{title}}

> [!info]- Hinweis
> Ablage in `01 Projects` (eigener Unterordner pro Projekt, wie bei Grouper & eisTIKNextGen). `owner` als Wikilink auf die verantwortliche Person, `ziel` als Wikilink auf [[Ziele 2026]] oder ein konkretes Ziel.

## Worum geht es?
*(1–3 Sätze: Ziel, Nutzen, Scope)*

## Status & nächste Schritte
- **Status:** 
- [ ] *(nächster Schritt)*

## Risiken & offene Fragen
- 

## Entscheidungen zu diesem Projekt
```dataview
LIST
FROM #entscheidung
WHERE contains(file.outlinks, this.file.link)
SORT datum DESC
```

## Meetings zu diesem Projekt
```dataview
LIST
FROM #meeting
WHERE contains(file.outlinks, this.file.link)
SORT datum DESC
```
