---
tags:
  - person
  - direct-report
rolle: Teamlead IT Service KMS
team: IT Service KMS
seit: 
---
# Marcel Thier

## Profil
- **Rolle:** Teamlead IT Service KMS
- **Team:** IT Service KMS
- **Produktbezug:** keine direkte Produktzugehörigkeit (querschnittlich)
- **Stärken:** 
- **Arbeitsstil / Präferenzen:** 

## Aktuelle Themen
- 

## Entwicklungsziele
- 

## Offene Action Items aus 1:1s
```dataview
TASK
FROM #meeting AND #1zu1
WHERE contains(file.outlinks, this.file.link) AND !completed
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
