---
title: SSO-06 Contract Termination Strategy for Service Organisations
project: "[[C5 Katalog 2026]]"
c5-id: SSO-06
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-06
---

# SSO-06 · Contract Termination Strategy for Service Organisations

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-06 · **Unterkriterien:** 2 (2 Basic)

> [!note] Gemeinsame Zusatzinformation
> Eine **sehr hohe Abhängigkeit** kann insbesondere angenommen werden, wenn der bezogene Dienst unverzichtbar für die Erbringung des Cloud-Dienstes ist. Dies ist z. B. der Fall, wenn der Cloud-Diensteanbieter:
> 1. Den Cloud-Dienst aus Rechenzentren erbringt, die von Service-Organisationen betrieben werden;
> 2. Einen SaaS-Dienst erbringt und das IaaS oder PaaS eines anderen Cloud-Diensteanbieters nutzt.
>
> Eine sehr hohe Abhängigkeit kann auch bei anderen kritischen Dienstleistern angenommen werden.

## Unterkriterien

### SSO-06.01B — Basic

**Kriterium (EN):**

> The cloud service provider has defined and documented contract termination or exit strategies for the purchase of services where the risk assessment of the service organisations regarding the scope, complexity and uniqueness of the service provided resulted in a very high dependency (cf. Supplementary Information).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat für den Bezug von Diensten, bei denen die Risikobewertung der Service-Organisation hinsichtlich Umfang, Komplexität und Einzigartigkeit des erbrachten Dienstes zu einer **sehr hohen Abhängigkeit** geführt hat, **Vertragsbeendigungs- oder Exit-Strategien** definiert und dokumentiert.

---

### SSO-06.02B — Basic

**Kriterium (EN):**

> Exit strategies are aligned with operational continuity plans and include the following aspects:
>
> 1. Analysis of the potential costs, impacts, resources and timing of the transition of a purchased service to an alternative service organisation;
> 2. Definition and allocation of roles, responsibilities and sufficient resources to perform the activities for a transition;
> 3. Definition of success criteria for the transition; and
> 4. Definition of indicators for monitoring the performance of services, which should initiate the withdrawal from the service if the results are unacceptable.

**Deutsche Übersetzung:**

Exit-Strategien sind mit Operational-Continuity-Plänen abgestimmt und umfassen:

1. Analyse der potenziellen Kosten, Auswirkungen, Ressourcen und Zeitpunkte des Übergangs eines bezogenen Dienstes zu einer alternativen Service-Organisation;
2. Definition und Zuweisung von Rollen, Verantwortlichkeiten und ausreichenden Ressourcen zur Durchführung der Übergangs-Aktivitäten;
3. Definition von Erfolgskriterien für den Übergang;
4. Definition von Indikatoren zur Überwachung der Dienstleistungs-Performance, die bei unakzeptablen Ergebnissen den Rückzug aus dem Dienst initiieren sollen.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Exit-Plan für Hyperscaler**: dokumentierte Migrations-Strategie von AWS zu Azure oder On-Prem; geschätzte Kosten, Ressourcen, Timeline (typisch 12-24 Monate); Multi-Cloud-Architektur als Vermeidungsstrategie (Kubernetes-basierte Portabilität via IaC)
- **Trigger-Indikatoren**: SLA-Verletzung > 3 Monate in Folge, Sicherheits-Testat entfällt, Preis-Erhöhung > X %, geopolitischer Wechsel (z. B. Sanktionen), rechtliche Änderungen (z. B. CLOUD Act-Auswirkungen); Board-Entscheidung zur Aktivierung des Exit-Plans
- **Datenmigrations-Plan**: technische Prozeduren für Massen-Datenextraktion; strukturierte Formate für Portabilität (kein proprietärer Lock-in); Test-Migrations quartalsweise für kritische Vendoren; Documentation für Migrations-Runbook
- **Interne Ressourcen-Bereitstellung**: dediziertes Migrations-Team mit Skills für beide Umgebungen; Budget-Rücklage („Migration-Fund") für Notfall-Exit; Kunden-Kommunikations-Playbook (Krankenhaus-Kunden müssen über Migration informiert werden)

## Verwandte Kriterien

- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
- [[SSO-02 Risk Assessment of Service Organisations]]
- [[SSO-05 Monitoring of Compliance with Requirements]]
- [[PI-02 Contractual Agreements for the Provision of Data]]
- [[BCM-01 Business Continuity and Emergency Management System|BCM-01]] *(noch nicht angelegt)*
- [[BCM-02 Business Impact Analysis - Policies and Procedures|BCM-02]] *(noch nicht angelegt)*
