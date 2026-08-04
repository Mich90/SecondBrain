---
title: SP-02 Review and Approval of Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: SP-02
c5-area: SP
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sp
aliases:
  - SP-02
---

# SP-02 · Review and Approval of Policies and Procedures

> [!info] Kontext
> **Bereich:** Security Policies and Procedures (SP)  
> **Kriterium-ID:** SP-02  
> **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### SP-02.01B — Basic

**Kriterium (EN):**

> Information security policies and procedures are reviewed for adequacy by the cloud service provider's subject matter experts at least annually, and in case of significant changes to the cloud service. The review shall consider at least the following aspects:
>
> 1. Organisational and technical changes in the procedures for providing the cloud service; and
> 2. Legal and regulatory changes in the cloud service provider's environment.

**Deutsche Übersetzung:**

Informationssicherheits-Richtlinien und -Verfahren werden von den Fachexperten des Cloud-Diensteanbieters mindestens jährlich sowie bei wesentlichen Änderungen am Cloud-Dienst auf Angemessenheit überprüft. Die Überprüfung berücksichtigt mindestens:

1. Organisatorische und technische Änderungen der Verfahren zur Erbringung des Cloud-Dienstes;
2. Rechtliche und regulatorische Änderungen im Umfeld des Cloud-Diensteanbieters.

**Zusatzinformation (DE):**

Bei einer ISO 27001-Zertifizierungsprüfung werden die Kontrollen zu diesem Kriterium sehr wahrscheinlich ebenfalls getestet. Bei einem kombinierten Audit (C5 + ISO) kann durch „audit-once-certify-many" Effizienz gewonnen werden. Bei getrennten Audits kann der C5-Prüfer den ISO-Bericht einsehen, statt die Kontrolle erneut zu testen, sofern die vorgelegten Nachweise hinreichend aussagekräftig sind.

---

### SP-02.02B — Basic

**Kriterium (EN):**

> Revised policies and procedures are approved by the appropriate level of management before they become effective and are communicated and made available to internal and external personnel.

**Deutsche Übersetzung:**

Überarbeitete Richtlinien und Verfahren werden vor Inkrafttreten von der geeigneten Managementebene freigegeben, kommuniziert und internem sowie externem Personal zur Verfügung gestellt.

**Zusatzinformation (DE):**

Wesentliche Änderungen umfassen alle Umstände oder Ereignisse, die den Anwendungsbereich, die Wirksamkeit oder die Ziele der Informationssicherheitsleitlinie erheblich beeinflussen. Beispiele:

1. Wesentliche technische oder architektonische Änderungen der Cloud-Plattform (z. B. neue Infrastruktur-Services, Cloud-Migration, neues Service-Angebot);
2. Substantielle Aktualisierungen nationaler oder internationaler Gesetze, Verordnungen oder branchenspezifischer Standards (z. B. NIS-2, DORA, DSGVO), die Informationssicherheits-Pflichten betreffen;
3. Reorganisation oder Merger/Acquisition organisatorischer Einheiten mit Auswirkung auf Führung, Entscheidungsprozesse oder wesentliche Sicherheitsverantwortlichkeiten;
4. Wesentliche Änderungen vertraglicher Anforderungen, Risikobewertungen, operativer Prozesse oder der Bedrohungslage (z. B. neue Threat Intelligence, Supply-Chain-Vorfälle);
5. Wesentliche Sicherheitsvorfälle oder Datenschutzverletzungen, die eine Anpassung der Incident Response erfordern;
6. Einführung oder Abkündigung von Service-Komponenten mit Auswirkung auf Kundendaten oder Trust Boundaries;
7. Änderungen der Zusammensetzung oder Zuständigkeiten der obersten Leitung oder des Steuerungskreises Informationssicherheit.

Für eine effiziente Überprüfung kann der Cloud-Diensteanbieter Art, Anlass und Ergebnis jeder wesentlichen Änderung dokumentieren. Automatisiertes Tracking von Policy-Änderungen und manuelle Prüfung der Inhalte können in den Review-Workflow integriert werden.

Die oberste Leitung ist eine geeignete Managementebene für die Freigabe der Informationssicherheitsleitlinie.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Jährlicher Policy Review-Zyklus** im Q1 mit dokumentiertem Prozess: pro Policy Zuständiger, Review-Datum, Ergebnis (unverändert / überarbeitet / zurückgezogen); Reminder-System (z. B. Jira-Tickets, Confluence-Kalender)
- **Trigger-basierte Ad-hoc-Reviews** bei Ereignissen: neuer Vorfall im Gesundheitssektor (z. B. Ransomware-Welle Kliniken), Änderung KHZG-Anforderungen, neue Sub-Auftragsverarbeiter, Merger; Trigger-Katalog dokumentiert
- **Change-Log pro Policy**: Sichtbare Historie mit Datum, Autor, Kern-Änderung; älter als 3 Jahre versioniert archivieren
- **Approval-Workflow im DMS**: elektronische Freigabe durch CISO für operative Policies, durch Geschäftsführung für Rahmen-Policies; Nachweis via E-Signatur für Audit

## Verwandte Kriterien

- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
- [[SP-03 Exceptions from Existing Policies and Procedures]]
- [[OIS-02 Information Security Policy]]
- [[COM-01 Identification of Applicable Compliance Requirements|COM-01]] *(noch nicht angelegt)*
