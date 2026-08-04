---
title: DEV-03 Policies for Changes to System Components
project: "[[C5 Katalog 2026]]"
c5-id: DEV-03
c5-area: DEV
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/dev
aliases:
  - DEV-03
---

# DEV-03 · Policies for Changes to System Components

> [!info] Kontext
> **Bereich:** Procurement, Development and Modification (DEV) · **Kriterium-ID:** DEV-03 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### DEV-03.01B — Basic

**Kriterium (EN):**

> Policies and procedures with procedures and technical safeguards for change management of system components of the cloud service are documented, communicated and provided according to SP-01 with regard to the following aspects:
>
> 1. Criteria for risk assessment, categorisation and prioritisation of changes and related requirements for the type and scope of testing to be performed, and necessary approvals for the development/implementation of the change and releases for deployment in the production environment by authorised personnel or system components;
> 2. Requirements for the performance and documentation of tests;
> 3. Requirements for segregation of duties during development, testing and release of changes;
> 4. Requirements for the proper information of cloud service customers about the type and scope of the change as well as the resulting obligations to cooperate in accordance with the contractual agreements;
> 5. Requirements for the documentation of changes in system, operational and user documentation;
> 6. Requirements for the implementation and documentation of emergency changes such that - as far as reasonably possible - they comply with the same level of security as normal changes;
> 7. Requirements for the handling of unexpected effects of those changes, including corrective actions;
> 8. Requirements for the increased testing for the development of security features that implement technical mechanisms and safeguards; and
> 9. Requirements for managing exceptions, including emergency changes, to ensure related risks are appropriately mitigated.

**Deutsche Übersetzung:**

Richtlinien und Verfahren mit Verfahren und technischen Schutzmaßnahmen für das **Change Management** von Systemkomponenten des Cloud-Dienstes sind gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] dokumentiert, kommuniziert und bereitgestellt und beschreiben:

1. Kriterien für Risikobewertung, Kategorisierung und Priorisierung von Änderungen sowie zugehörige Anforderungen an Art und Umfang der durchzuführenden Tests und notwendige Freigaben für Entwicklung/Umsetzung sowie Releases für Deployment in die Produktivumgebung durch autorisiertes Personal oder Systemkomponenten;
2. Anforderungen an die Durchführung und Dokumentation von Tests;
3. Anforderungen an die **Segregation of Duties** während Entwicklung, Test und Release;
4. Anforderungen an die ordnungsgemäße Information der Cloud-Dienstkunden über Art und Umfang der Änderung sowie die daraus resultierenden Mitwirkungspflichten;
5. Anforderungen an die Dokumentation von Änderungen in System-, Betriebs- und Nutzerdokumentation;
6. Anforderungen an die Umsetzung und Dokumentation von **Emergency Changes**, sodass diese — soweit vernünftigerweise möglich — dem gleichen Sicherheitsniveau wie normale Änderungen entsprechen;
7. Anforderungen an den Umgang mit unerwarteten Effekten dieser Änderungen einschließlich Korrekturmaßnahmen;
8. Anforderungen an verstärkte Tests für die Entwicklung von Sicherheitsfunktionen, die technische Mechanismen und Schutzmaßnahmen implementieren;
9. Anforderungen an das Management von Ausnahmen — einschließlich Emergency Changes —, um sicherzustellen, dass zugehörige Risiken angemessen gemindert werden.

**Zusatzinformation (DE):**

Änderungen im Sinne des Basiskriteriums sind solche, die zu Änderungen der Konfiguration, Funktionalität oder Sicherheit von Systemkomponenten des Cloud-Dienstes in der Produktivumgebung führen können. Dies umfasst Änderungen an der Infrastruktur sowie am Quellcode. Wenn einzelne Änderungen in einem neuen Release, Update, Patch oder vergleichbarem Software-Objekt zum Zweck der Software-Bereitstellung kombiniert werden, gilt dieses Software-Objekt als Änderung im Sinne des Basiskriteriums.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Change-Kategorien**: Standard (vorab genehmigt, geringes Risiko, per Runbook), Normal (via CAB-Approval, Test-Nachweis), Emergency (verkürzter Prozess mit Post-Approval + Post-Mortem); klare Kriterien pro Kategorie
- **SoD via Pull-Request**: Developer schreibt Code → Reviewer prüft (nicht derselbe Autor) → Security-Bot prüft (SAST, SCA, Secret-Scan) → Merge nach 2-Personen-Freigabe → Automatische Pipeline deployed in Test → Manuelle Freigabe für Prod (Release Manager, unabhängig von Autor)
- **Kunden-Change-Notification** je Impact: Breaking Changes 90 Tage vorab (Krankenhaus-IT muss integrieren), Non-Breaking mit Feature-Änderung 30 Tage, Bugfixes im Changelog; kein Änderung am Umgang mit Patientendaten ohne explizite Notification
- **Emergency Change** dokumentierter Prozess: CISO-Approval + Manager-Approval während des Vorfalls; verkürzte Tests (nur die kritischen); ausführliche Post-Mortem binnen 48h, Nachpflege der Standard-Change-Dokumentation; jährliches Review der Emergency-Change-Rate

## Verwandte Kriterien

- [[DEV-01 Policies for the Development/Procurement of System Components]]
- [[DEV-06 Risk Assessment, Categorisation and Prioritisation of Changes]]
- [[DEV-07 Testing Changes]]
- [[DEV-08 Logging of Changes]]
- [[DEV-09 Version Control]]
- [[DEV-10 Approvals for Provision in the Production Environment]]
- [[DEV-15 Exceptions to the Change Management Process]]
- [[OPS-27 Managing Vulnerabilities - Patch Management Policies and Procedures]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
