---
title: HR-05 Responsibilities in the Event of Termination or Change of Employment
project: "[[C5 Katalog 2026]]"
c5-id: HR-05
c5-area: HR
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/hr
aliases:
  - HR-05
---

# HR-05 · Responsibilities in the Event of Termination or Change of Employment

> [!info] Kontext
> **Bereich:** Personnel (HR)  
> **Kriterium-ID:** HR-05  
> **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### HR-05.01B — Basic

**Kriterium (EN):**

> Internal and external personnel has been informed about which responsibilities, arising from employment terms and conditions relating to information security, will remain in place when the employment is terminated or changed and for how long.

**Deutsche Übersetzung:**

Internes und externes Personal wurde darüber informiert, welche Pflichten aus den Beschäftigungsbedingungen im Zusammenhang mit Informationssicherheit auch nach Beendigung oder Änderung des Beschäftigungsverhältnisses bestehen bleiben und wie lange.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Nachvertragliche Verschwiegenheitsklausel** im Arbeitsvertrag: mindestens 5 Jahre nach Vertragsende bei Gesundheitsdaten-Zugriff (nach § 203 StGB gilt die Verschwiegenheitspflicht faktisch unbegrenzt)
- **Exit-Interview mit Security-Checkliste**: Rückgabe aller Assets (Laptop, Yubikey, Ausweis), Entzug aller Berechtigungen (IAM-Ticket automatisch am Kündigungstag), Erinnerung an fortbestehende Verpflichtungen, Übergabe von Dokumentation
- **Formale Belehrung schriftlich** über nachvertragliche Pflichten (Verschwiegenheit, Wettbewerbsverbot bei bestimmten Rollen, Herausgabepflicht bei Anfragen); mit Unterschrift bestätigt in Personalakte
- **IAM-Automatismus**: Kündigungsdatum im HR-System triggert automatische Deaktivierung aller Accounts + Widerruf aller Zertifikate + Entzug MFA-Tokens; Verifikation durch Line-Manager binnen 24h

## Verwandte Kriterien

- [[HR-02 Employment Terms and Conditions]]
- [[HR-06 Non-disclosure Agreements]]
- [[IAM-04 Withdrawal of Access Authorisations for Internal and External Personnel|IAM-04]] *(noch nicht angelegt)*
- [[AM-06 Return of Assets|AM-06]] *(noch nicht angelegt)*
