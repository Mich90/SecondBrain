---
tags:
  - person
  - direct-report
rolle: Teamlead eisTIK
team: eisTIK
seit: 
---
# Mario Zube

## Profil
- **Rolle:** Teamlead eisTIK
- **Team:** eisTIK
- **Produktbezug:** [[eisTIK]]
- **Stärken:** 
- **Arbeitsstil / Präferenzen:** 

## Aktuelle Themen
- 

## Entwicklungsziele
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
