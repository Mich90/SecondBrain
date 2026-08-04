---
tags:
  - person
  - stakeholder
rolle: VP Produktmanagement
team: Produktmanagement
seit: 
---
# Stephan Werthebach

## Profil
- **Rolle:** VP Produktmanagement
- **Beziehung:** Peer / enge Zusammenarbeit (wöchentliches 1:1, siehe [[Über mich]])
- **Stärken:** 
- **Arbeitsstil / Präferenzen:** 

## Aktuelle Themen
- 

## Gemeinsame Themen / Schnittstellen
- 

## Offene Action Items aus 1:1s
```dataview
TASK
FROM "04 Meetings"
WHERE !completed AND contains(text, "Verantwortung: [[" + this.file.name + "]]")
```

## 1:1-Historie
```dataview
LIST
FROM #meeting AND #1zu1
WHERE contains(file.outlinks, this.file.link)
SORT datum DESC
```

## Entscheidungen mit Beteiligung
```dataview
LIST
FROM #entscheidung
WHERE contains(file.outlinks, this.file.link)
SORT datum DESC
```
