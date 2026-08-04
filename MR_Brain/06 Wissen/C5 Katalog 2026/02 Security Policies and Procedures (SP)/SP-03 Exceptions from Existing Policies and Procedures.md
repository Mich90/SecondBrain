---
title: SP-03 Exceptions from Existing Policies and Procedures
project: "[[C5 Katalog 2026]]"
c5-id: SP-03
c5-area: SP
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sp
aliases:
  - SP-03
---

# SP-03 · Exceptions from Existing Policies and Procedures

> [!info] Kontext
> **Bereich:** Security Policies and Procedures (SP)  
> **Kriterium-ID:** SP-03  
> **Unterkriterien:** 8 (5 Basic · 3 Complementing)

> [!note] Gemeinsame Zusatzinformation (gilt für alle Unterkriterien)
> Ausnahmen im Sinne des Kriteriums können organisatorische oder technische Ursachen haben, z. B.:
> 1. Eine Organisationseinheit soll von den vorgesehenen Prozessen abweichen, um Anforderungen eines Cloud-Dienstkunden zu erfüllen;
> 2. Einer Systemkomponente fehlen technische Eigenschaften, um sie gemäß den anwendbaren Anforderungen zu konfigurieren.
>
> **Complementary Customer Criteria:** Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie vom Cloud-Diensteanbieter Informationen zu Ausnahmen von Informationssicherheits-Richtlinien und -Verfahren erhalten, um die damit verbundenen Risiken für ihre eigene Informationssicherheit zu bewerten und angemessen zu steuern.

## Unterkriterien

### SP-03.01B — Basic

**Kriterium (EN):**

> All exceptions to policies and procedures for information security are maintained in a list, including also the controls associated with the exceptions.

**Deutsche Übersetzung:**

Alle Ausnahmen von Richtlinien und Verfahren zur Informationssicherheit werden in einer Liste geführt, einschließlich der mit den Ausnahmen verbundenen Kontrollen.

---

### SP-03.02B — Basic

**Kriterium (EN):**

> Exceptions to the policies and procedures for information security as well as respective controls go through risk management procedures in accordance with OIS-07, including approval of these exceptions and acceptance of the associated risks by the risk owners.

**Deutsche Übersetzung:**

Ausnahmen von den Informationssicherheits-Richtlinien und -Verfahren sowie die zugehörigen Kontrollen durchlaufen die Risikomanagement-Verfahren gemäß [[OIS-07 Risk Management Policy|OIS-07]], einschließlich Freigabe der Ausnahmen und Akzeptanz der damit verbundenen Risiken durch die Risikoeigentümer.

---

### SP-03.03B — Basic

**Kriterium (EN):**

> The risk management procedures in accordance with OIS-07, also take into account the aggregated risk from a combination of single exceptions.

**Deutsche Übersetzung:**

Die Risikomanagement-Verfahren gemäß [[OIS-07 Risk Management Policy|OIS-07]] berücksichtigen auch das aggregierte Risiko aus der Kombination einzelner Ausnahmen.

---

### SP-03.04B — Basic

**Kriterium (EN):**

> The approvals of exceptions are documented, with a defined validity and reviewed for appropriateness at least annually by the risk owners or by the top management. This review also takes into account the aggregated risk from a combination of single exceptions.

**Deutsche Übersetzung:**

Die Freigaben von Ausnahmen sind dokumentiert, mit definierter Gültigkeitsdauer, und werden mindestens jährlich von den Risikoeigentümern oder der obersten Leitung auf Angemessenheit überprüft. Diese Prüfung berücksichtigt auch das aggregierte Risiko aus der Kombination einzelner Ausnahmen.

---

### SP-03.05B — Basic

**Kriterium (EN):**

> Exceptions in information security policies and procedures that would result in a deviation (cf. 3.4.12) from any applicable C5 criterion within the scope of an assurance engagement (cf. 3.4.1) are not permitted.

**Deutsche Übersetzung:**

Ausnahmen in Informationssicherheits-Richtlinien und -Verfahren, die zu einer Abweichung (vgl. Abschnitt 3.4.12 des Katalogs) von einem anwendbaren C5-Kriterium im Prüfumfang (vgl. Abschnitt 3.4.1) führen würden, sind **nicht zulässig**.

**Zusatzinformation (DE, spezifisch):**

Dieses Kriterium adressiert Richtlinien und Verfahren und verlangt, dass auf dieser Ebene keine kodifizierten Abweichungen von anwendbaren C5-Kriterien zulässig sind.

---

### SP-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> The exceptions to policies or procedures are approved by the appropriate level of management.

**Deutsche Übersetzung:**

Die Ausnahmen von Richtlinien oder Verfahren werden von der geeigneten Managementebene freigegeben.

**Zusatzinformation (DE, spezifisch):**

Die geeignete Managementebene für die Freigabe ist in den meisten Fällen entweder die Ebene, die die Richtlinien oder Verfahren freigegeben hat, oder die Ebene, an die diese Aufgabe delegiert ist.

---

### SP-03.02AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider monitors the list of exceptions to prevent the expiration of approved exceptions and ensure the up-to-dateness of all reviews and approvals.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter überwacht die Liste der Ausnahmen, um das Auslaufen genehmigter Ausnahmen zu verhindern und die Aktualität aller Reviews und Freigaben sicherzustellen.

---

### SP-03.03AC — Additional (Complementing)

**Kriterium (EN):**

> Any exceptions for which deviations were identified during monitoring are addressed through timely and appropriate remediation measures.

**Deutsche Übersetzung:**

Ausnahmen, bei denen im Rahmen des Monitorings Abweichungen identifiziert wurden, werden durch zeitnahe und angemessene Behebungsmaßnahmen adressiert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zentrales Ausnahmen-Register** (z. B. in Jira, Confluence oder ISMS-Tool) mit Feldern: Ausnahme-ID, betroffene Policy, Grund, Kompensierende Kontrolle, Risikobewertung, Risk Owner, Genehmiger, Gültigkeitsdauer (max. 12 Monate), Review-Datum
- **Verpflichtender Risk-Assessment-Schritt**: keine Ausnahme ohne dokumentierte Risikobewertung nach [[OIS-07 Risk Management Policy|OIS-07]]; bei Ausnahmen mit Bezug zu Patientendaten Freigabe durch Data Protection Officer (DPO) zwingend
- **Automatisches Auslauf-Monitoring**: 30 Tage vor Ablauf E-Mail an Risk Owner + Genehmiger; bei fehlender Erneuerung automatische Eskalation an CISO; nicht verlängerte Ausnahmen werden aus dem Register archiviert
- **Aggregations-Review** halbjährlich: Security-Team analysiert das Register auf Cluster-Effekte (z. B. mehrere kleine Ausnahmen im gleichen Bereich, die zusammen ein signifikantes Risiko ergeben); Bericht an CISO

## Verwandte Kriterien

- [[OIS-07 Risk Management Policy]]
- [[OIS-08 Application of the Risk Management Policy - Risk Assessment]]
- [[OIS-09 Application of the Risk Management Policy - Risk Treatment]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
- [[COM-03 Internal Audits|COM-03]] *(noch nicht angelegt)*
