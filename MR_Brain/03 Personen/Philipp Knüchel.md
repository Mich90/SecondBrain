---
tags:
  - person
  - stakeholder
rolle: Führungskraft Connected Solutions
team: Connected Solutions
seit: 
---
# Philipp Knüchel

## Profil
- **Rolle:** Führungskraft, Organisation „Connected Solutions"
- **Beziehung:** Vorgesetzter in der Linie / Reporting-Linie (siehe [[Über mich]])
- **Stärken:** 
- **Arbeitsstil / Präferenzen:** 

## Aktuelle Themen
- 

## Erwartungen an mich / Vereinbarungen
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
