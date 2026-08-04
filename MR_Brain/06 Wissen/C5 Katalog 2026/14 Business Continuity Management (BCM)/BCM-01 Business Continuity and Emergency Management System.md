---
title: BCM-01 Business Continuity and Emergency Management System
project: "[[C5 Katalog 2026]]"
c5-id: BCM-01
c5-area: BCM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/bcm
aliases:
  - BCM-01
---

# BCM-01 · Business Continuity and Emergency Management System

> [!info] Kontext
> **Bereich:** Business Continuity Management (BCM) · **Kriterium-ID:** BCM-01 · **Unterkriterien:** 4 (4 Basic)

## Unterkriterien

### BCM-01.01B — Basic

**Kriterium (EN):**

> The cloud service provider operates a business continuity and emergency management system in accordance with ISO 22301 and/or BSI 200-4.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter betreibt ein Business-Continuity- und Notfallmanagement-System gemäß **ISO 22301** und/oder **BSI 200-4**.

**Zusatzinformation (DE):**

Das Basiskriterium kann (aber muss nicht) durch eine Zertifizierung des BCM gemäß ISO/IEC 22301 erfüllt werden.

---

### BCM-01.02B — Basic

**Kriterium (EN):**

> Policies and procedures for the cloud service's business continuity management, including strategy and guidelines, business impact analyses, and business continuity plans, are documented, communicated, and made available in accordance with SP-01 regarding the following aspects:
>
> 1. Goals of the BCM;
> 2. Roles and responsibilities, management commitment;
> 3. Scoping of the BCM, identifying relevant business processes;
> 4. Interfaces, in particular to Incident Management;
> 5. Communication with relevant entities and competent authorities;
> 6. Methodology;
> 7. Consideration of Risk;
> 8. Business Impact Analysis (BIA);
> 9. Business Continuity Plan (BCP);
> 10. Resource Planning (usually part of the BCP);
> 11. Testing of Business Continuity Plans and regular updates to BCM documentation; and
> 12. Continuous improvement of the Business Continuity Management.

**Deutsche Übersetzung:**

Richtlinien und Verfahren für das Business Continuity Management des Cloud-Dienstes — einschließlich Strategie und Leitlinien, Business Impact Analysen und Business Continuity Plans — sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt bezüglich:

1. Ziele des BCM;
2. Rollen und Verantwortlichkeiten, Management-Commitment;
3. Scoping des BCM, Identifikation relevanter Geschäftsprozesse;
4. Schnittstellen — insbesondere zum Incident Management;
5. Kommunikation mit relevanten Stellen und zuständigen Behörden;
6. Methodik;
7. Berücksichtigung von Risiken;
8. **Business Impact Analysis (BIA)**;
9. **Business Continuity Plan (BCP)**;
10. Ressourcenplanung (i. d. R. Teil des BCP);
11. Test von BCPs und regelmäßige Updates der BCM-Dokumentation;
12. Kontinuierliche Verbesserung des Business Continuity Managements.

**Zusatzinformation (DE):**

BCM kann in das **Enterprise Risk Management (ERM)** integriert werden, um Effizienz zu gewinnen und Management-Silos zu überwinden.

---

### BCM-01.03B — Basic

**Kriterium (EN):**

> The top management (or a member of the top management) of the cloud service provider is named as the process owner of business continuity and emergency management and is responsible for establishing the process within the company as well as ensuring compliance with the guidelines. They ensure that sufficient resources are made available for an effective process.

**Deutsche Übersetzung:**

Die **oberste Leitung** (oder ein Mitglied der obersten Leitung) des Cloud-Diensteanbieters wird als Prozessverantwortlicher für Business Continuity und Notfallmanagement benannt und ist verantwortlich für die Etablierung des Prozesses im Unternehmen sowie die Sicherstellung der Einhaltung der Leitlinien. Sie stellt sicher, dass ausreichende Ressourcen für einen effektiven Prozess bereitgestellt werden.

**Zusatzinformation (DE):**

Die Verantwortung der obersten Leitung kann an eine andere Person delegiert werden, sofern diese den Umfang, die Verantwortlichkeiten und Fähigkeiten hat, die Cloud-Service-weite Business-Continuity-Strategie und -Aktivitäten in gleicher Weise wie die oberste Leitung zu beeinflussen.

---

### BCM-01.04B — Basic

**Kriterium (EN):**

> People in management and other relevant leadership positions demonstrate leadership and commitment to this issue by encouraging personnel to actively contribute to the effectiveness of continuity and emergency management.

**Deutsche Übersetzung:**

Personen in Management- und anderen relevanten Führungspositionen zeigen Führung und Engagement zu diesem Thema, indem sie Personal ermutigen, aktiv zur Wirksamkeit des Continuity- und Notfallmanagements beizutragen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **BCM nach ISO 22301** implementiert, mit optionaler Zertifizierung (starkes Vertrauens-Signal für Krankenhaus-Kunden); alternativ oder ergänzend BSI 200-4 (BCMS für kritische Infrastrukturen; besonders relevant bei KRITIS-Kunden)
- **BCM-Policy** dokumentiert alle 12 Aspekte inkl. Schnittstellen zu SIM/OPS/OIS; jährlicher Review durch BCM-Beauftragten; Freigabe durch Geschäftsführung; interne Wiki mit versionierten Dokumenten
- **Executive Sponsorship**: CEO oder COO als BCM-Process-Owner benannt; Budget-Verantwortung explizit; quartalsweise Statusreport im Executive Committee; BCM-Metriken in Management-KPIs (RTO/RPO-Erreichung)
- **Kultur-Signale**: BCM-Themen in All-Hands-Meetings, Anerkennung von Test-Teilnahme, Weiterbildung für BCM-Rollen budgetiert; Notfallübungen sind nicht „nice-to-have" sondern Pflichtveranstaltung mit Managementpräsenz

## Verwandte Kriterien

- [[BCM-02 Business Impact Analysis]]
- [[BCM-03 Business Continuity Plans]]
- [[BCM-04 Testing Business Continuity]]
- [[OIS-01 Information Security Management System (ISMS)]]
- [[OIS-02 Segregation of Duties]]
- [[OIS-07 Risk Management Policy]]
- [[SIM-01 Policy for Security Incident Management]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
