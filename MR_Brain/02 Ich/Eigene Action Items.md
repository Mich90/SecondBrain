---
tags:
  - ich
  - action-items
---
# Eigene Action Items

Übersicht aller offenen und erledigten Aufgaben, für die ich selbst verantwortlich bin. Speist sich automatisch aus allen 1:1s und Meetings, in denen als Verantwortlicher `[[Eigene Action Items]]` gesetzt ist.

## Offene Aufgaben
```dataview
TASK
FROM "04 Meetings"
WHERE !completed AND contains(text, "Verantwortung: [[" + this.file.name + "]]")
```

## Kürzlich erledigt
```dataview
TASK
FROM "04 Meetings"
WHERE completed AND contains(text, "Verantwortung: [[" + this.file.name + "]]")
SORT file.mtime DESC
LIMIT 20
```
