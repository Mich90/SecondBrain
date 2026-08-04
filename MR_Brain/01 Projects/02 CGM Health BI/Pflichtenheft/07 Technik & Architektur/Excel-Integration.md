---
title: Excel-Integration
project: "[[CGM Health BI]]"
bereich: technik
status: entwurf
tags:
  - pflichtenheft
  - technik
  - excel
  - schnittstellen
---

# Excel-Integration

> [!abstract] Warum
> Es werden Schnittstellen bereitgestellt, über die Daten direkt nach Excel exportiert bzw. aus Excel importiert werden können – **Excel ist Basis der Controlling-Arbeit**.

> [!warning] Offen
> **Formate sind noch zu diskutieren.**

## (a) Export als native .xlsx

Export der aktuellen Analyse/Tabelle als **native .xlsx** (nicht nur CSV), inkl.:

- Spaltenüberschriften
- Formate (Zahlen, Datum, Prozent)
- – wo sinnvoll – erhaltener Aggregations-/Gruppenstruktur

## (b) Große Mengen über Export-Endpunkt

Berücksichtigung der Ergebnismengen-Begrenzung (siehe [[API, Semantic Layer & Schnittstellen#API-Design]]): bei großen Mengen läuft der Excel-Export über den **dedizierten Export-Endpunkt** (asynchron/serverseitig), nicht über die begrenzte Standard-Abfrage.

## (c) Berechtigungen & Anonymisierung

Respektierung von Berechtigungen und Mandanten-Trennung (nur freigegebene Daten werden exportiert). Pseudonymisierung/Anonymisierung (siehe [[Datenschutz & Rechtliche Vorgaben]]) greift auch im Export.

## (d) Import

Einlesen strukturierter Excel-Dateien zur **Datenanreicherung**, mit Feld-/Spalten-Mapping und Validierung der Eingabedaten.

## (e) Live-Zugriff aus Excel (Standard)

Excel kann Kennzahlen/Dimensionen **direkt aus dem Semantic Layer** abrufen und in einer PivotTable/Abfrage aktualisierbar halten – ohne manuellen Datei-Export.

- **Empfohlene Standardschnittstelle: XMLA-Endpoint** (Excel „Analyze in Excel" / PivotTable-Anbindung, Abfrage über MDX/DAX) als De-facto-Standard für den semantischen Excel-Zugriff.
- **Ergänzend OData** als offene, tool-neutrale Read-Schnittstelle für flache Abfragen und „Daten abrufen" in Excel (kein OLAP-Modell).
- Auch der Live-Zugriff respektiert Berechtigungen, Mandanten-Trennung und Anonymisierung (siehe (c)).
