---
title: IAM-04 Withdrawal or Adjustment of Access Rights as the Task Area Changes
project: "[[C5 Katalog 2026]]"
c5-id: IAM-04
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-04
---

# IAM-04 · Withdrawal or Adjustment of Access Rights as the Task Area Changes

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-04 · **Unterkriterien:** 5 (5 Basic)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium gilt für Identitäten, die sich auf einzelne, mehrere oder nicht-menschliche Entitäten beziehen. Änderungen im Aufgabenbereich von internem und externem Personal können durch Änderungen im Arbeitsverhältnis (z. B. Kündigung, Versetzung) oder in Verträgen und Vereinbarungen ausgelöst werden.

## Unterkriterien

### IAM-04.01B — Basic

**Kriterium (EN):**

> Access rights are timely adjusted or revoked if the job responsibilities of the cloud service provider's internal or external personnel or the tasks of system components involved in the cloud service provider's automated authorisation processes change.

**Deutsche Übersetzung:**

Zugriffsrechte werden zeitnah angepasst oder entzogen, wenn sich die Aufgabenverantwortung des internen oder externen Personals des Cloud-Diensteanbieters oder die Aufgaben der Systemkomponenten in automatisierten Autorisierungsprozessen ändern.

---

### IAM-04.02B — Basic

**Kriterium (EN):**

> Privileged access rights are adjusted or revoked within 48 hours after the change taking effect.

**Deutsche Übersetzung:**

Privilegierte Zugriffsrechte werden **innerhalb von 48 Stunden** nach Wirksamwerden der Änderung angepasst oder entzogen.

---

### IAM-04.03B — Basic

**Kriterium (EN):**

> All other access rights are adjusted or revoked within 14 days.

**Deutsche Übersetzung:**

Alle anderen Zugriffsrechte werden **innerhalb von 14 Tagen** angepasst oder entzogen.

---

### IAM-04.04B — Basic

**Kriterium (EN):**

> After revocation, the procedure for granting identities and access rights (cf. IAM-02) is repeated.

**Deutsche Übersetzung:**

Nach dem Widerruf wird das Verfahren zur Vergabe von Identitäten und Zugriffsrechten (vgl. [[IAM-02 Granting and Change of Identities and Access Rights|IAM-02]]) wiederholt.

---

### IAM-04.05B — Basic

**Kriterium (EN):**

> In cases of role changes where temporary access may need to be granted, these access rights are approved, time-limited and documented.

**Deutsche Übersetzung:**

In Fällen von Rollenwechseln, in denen temporärer Zugriff gewährt werden muss, sind diese Zugriffsrechte genehmigt, zeitlich befristet und dokumentiert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **HR-getriggerte Rechte-Anpassung**: Personalabteilung meldet Rollenwechsel im HRIS (z. B. Personio, SAP SuccessFactors) → SCIM-Sync → IAM-System → zurücksetzen alter Rechte und neue Rollenzuweisung nach Approval; 48 h SLA für Privileged
- **Job-Änderung ≠ Kündigung**: bei Versetzung erhält Nutzer neue Rollen; alte Rollen werden nicht kumuliert (kein „Access-Creep"); alte Rechte werden aktiv entzogen und ggf. bei Bedarf mit dokumentierter Begründung reaktiviert
- **Temporäre Rechte-Erweiterungen** (z. B. Projekt-Support): via JIT-Elevation (Just-in-Time) mit definiertem Ablaufdatum, automatischer Widerruf; PAM-Systeme wie CyberArk oder HashiCorp Boundary
- **Off-Boarding-Automation**: bei Kündigung (Last-Day im HRIS) automatisches Deprovisioning aller Zugänge um 23:59 Uhr; Verify-Report an Manager binnen 24 h; forensische Sicherung von E-Mails/Dokumenten laut Compliance-Policy

## Verwandte Kriterien

- [[IAM-01 Policy for Identities and Access Rights]]
- [[IAM-02 Granting and Change of Identities and Access Rights]]
- [[IAM-05 Regular Review of Access Rights]]
- [[IAM-06 Privileged Access Rights]]
- [[HR-05 Termination or Change in Employment]]
