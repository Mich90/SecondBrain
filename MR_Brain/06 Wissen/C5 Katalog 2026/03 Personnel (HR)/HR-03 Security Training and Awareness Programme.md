---
title: HR-03 Security Training and Awareness Programme
project: "[[C5 Katalog 2026]]"
c5-id: HR-03
c5-area: HR
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/hr
aliases:
  - HR-03
---

# HR-03 · Security Training and Awareness Programme

> [!info] Kontext
> **Bereich:** Personnel (HR)  
> **Kriterium-ID:** HR-03  
> **Unterkriterien:** 9 (4 Basic · 1 Sharpening · 4 Complementing)

## Unterkriterien

### HR-03.01B — Basic

**Kriterium (EN):**

> The cloud service provider operates a target group-oriented security awareness and training programme.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter betreibt ein zielgruppenorientiertes Security-Awareness- und Trainingsprogramm.

**Zusatzinformation (DE):**

Die Zielgruppen können anhand von Job-Funktion, Position und der damit verbundenen Risikoklassifizierung definiert werden. Zielgruppen dienen der Vereinfachung und Systematisierung des Trainings- und Awareness-Programms.

---

### HR-03.02B — Basic

**Kriterium (EN):**

> All internal and external personnel of the cloud service provider undergoes a role-based training programme regularly and when changing job function, taking into consideration at least the risk classification and technical responsibilities of their position.

**Deutsche Übersetzung:**

Alle internen und externen Mitarbeitenden des Cloud-Diensteanbieters durchlaufen ein rollenbasiertes Trainingsprogramm regelmäßig sowie bei Änderung der Funktion, wobei mindestens die Risikoklassifizierung und die technischen Verantwortlichkeiten der Position berücksichtigt werden.

---

### HR-03.02AS — Additional (Sharpening)

**Kriterium (EN):**

> All internal and external personnel of the cloud service provider undergoes a role-based training programme at least annually and when changing job function, taking into consideration at least the risk classification and technical responsibilities of their position.

**Deutsche Übersetzung:**

Alle internen und externen Mitarbeitenden des Cloud-Diensteanbieters durchlaufen ein rollenbasiertes Trainingsprogramm **mindestens jährlich** sowie bei Änderung der Funktion, wobei mindestens die Risikoklassifizierung und die technischen Verantwortlichkeiten der Position berücksichtigt werden.

---

### HR-03.03B — Basic

**Kriterium (EN):**

> The programme is regularly updated based on changes to policies and procedures and the current threat situation and includes the following aspects insofar as they are applicable to each personnel's role:
>
> 1. Handling system components used to provide the cloud service in the production environment in accordance with applicable policies and procedures;
> 2. Handling cloud service customer data, cloud service derived data, cloud service provider data and account data in accordance with applicable policies and procedures and applicable legal and regulatory requirements;
> 3. Information about the current threat situation;
> 4. Correct behaviour in the event of security incidents;
> 5. Security best practices; and
> 6. Secure development.

**Deutsche Übersetzung:**

Das Programm wird regelmäßig aktualisiert basierend auf Änderungen an Richtlinien und Verfahren sowie an der aktuellen Bedrohungslage. Es umfasst folgende Aspekte, soweit für die jeweilige Rolle relevant:

1. Umgang mit produktiv genutzten Systemkomponenten gemäß Richtlinien und Verfahren;
2. Umgang mit Kundendaten, abgeleiteten Daten, Anbieter-Daten und Kontodaten gemäß Richtlinien, Verfahren sowie rechtlichen und regulatorischen Anforderungen;
3. Informationen zur aktuellen Bedrohungslage;
4. Korrektes Verhalten bei Sicherheitsvorfällen;
5. Security Best Practices;
6. Sichere Softwareentwicklung.

---

### HR-03.04B — Basic

**Kriterium (EN):**

> The learning outcomes achieved through the awareness and training programme are measured and evaluated.

**Deutsche Übersetzung:**

Die durch das Awareness- und Trainingsprogramm erzielten Lernergebnisse werden gemessen und ausgewertet.

---

### HR-03.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider monitors the completion of the security awareness and training programme.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter überwacht den Abschluss des Security-Awareness- und Trainingsprogramms.

---

### HR-03.02AC — Additional (Complementing)

**Kriterium (EN):**

> Timely and appropriate remediation measures address any deviations identified during monitoring.

**Deutsche Übersetzung:**

Zeitnahe und angemessene Behebungsmaßnahmen adressieren im Monitoring festgestellte Abweichungen.

---

### HR-03.03AC — Additional (Complementing)

**Kriterium (EN):**

> The learning outcomes achieved through the awareness and training programme are measured and evaluated in a target group-oriented manner.

**Deutsche Übersetzung:**

Die durch das Awareness- und Trainingsprogramm erzielten Lernergebnisse werden zielgruppenorientiert gemessen und ausgewertet.

**Zusatzinformation (DE):**

Die zielgruppenorientierte Messung und Auswertung erfordert nicht die Einzelbewertung jedes Mitarbeitenden. Auswertungen können auf aggregierter Ebene erfolgen, mit Fokus auf die Gesamtwirksamkeit des Trainings für bestimmte Zielgruppen. So können Trends und Verbesserungspotenziale identifiziert werden, während Datenschutzanforderungen der Mitarbeitenden gewahrt bleiben.

---

### HR-03.04AC — Additional (Complementing)

**Kriterium (EN):**

> The measurements cover quantitative and qualitative aspects.

**Deutsche Übersetzung:**

Die Messungen decken quantitative und qualitative Aspekte ab.

---

### HR-03.05AC — Additional (Complementing)

**Kriterium (EN):**

> The results are used to improve the awareness and training programme.

**Deutsche Übersetzung:**

Die Ergebnisse werden zur Verbesserung des Awareness- und Trainingsprogramms genutzt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **LMS mit rollenbasierten Trainingspfaden**: Basis-Awareness für alle (DSGVO, Phishing, Passwort, Meldeprozess); Aufbaumodule für Entwickler (Secure Coding, OWASP Top 10 im Healthcare-Kontext), für Ops (privilegierte Zugriffe, Just-in-Time-Access), für Support (Datenzugriff auf Kundeninstanz-Ebene)
- **Simulierte Phishing-Kampagnen** quartalsweise mit realistischen Krankenhaus-Kontexten (z. B. gefälschte E-Mail „KHZG-Antrag", „BSI-Warnung Ransomware"); Nachschulung für Klick-Betroffene
- **Threat-Briefing-Update** monatlich per Newsletter: aktuelle Ransomware-Trends im Gesundheitssektor, MITRE ATT&CK-Techniken, Zero-Day-Warnungen in DICOM/HL7-Komponenten
- **KPIs & Reporting**: Abschluss-Quote, Test-Score-Verteilung, Phishing-Klickrate pro Zielgruppe; monatliches Reporting an CISO; jährliche Anpassung des Curriculums basierend auf Ergebnissen und Vorfällen

## Verwandte Kriterien

- [[HR-01 Verification of Qualification and Trustworthiness]]
- [[HR-02 Employment Terms and Conditions]]
- [[OIS-05 Threat Intelligence]]
- [[SIM-01 Policy for Security Incident Management|SIM-01]] *(noch nicht angelegt)*
- [[DEV-08 Testing System Components|DEV-08]] *(noch nicht angelegt)*
