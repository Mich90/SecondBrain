---
title: SSO-02 Risk Assessment of Service Organisations
project: "[[C5 Katalog 2026]]"
c5-id: SSO-02
c5-area: SSO
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sso
aliases:
  - SSO-02
---

# SSO-02 · Risk Assessment of Service Organisations

> [!info] Kontext
> **Bereich:** Control and Monitoring of Service Providers and Suppliers (SSO) · **Kriterium-ID:** SSO-02 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### SSO-02.01B — Basic

**Kriterium (EN):**

> Service organisations of the cloud service provider undergo a risk assessment in accordance with the policies and procedures for the control and monitoring of service organisations prior to contributing to the development or operation of the cloud service.
>
> The risk assessment includes the identification, analysis, evaluation, treatment and documentation of risks with regard to the following aspects:
>
> 1. Protection needs regarding the confidentiality, integrity, availability and authenticity of cloud service customer data, cloud service derived data, cloud service provider data and account data processed, stored or transmitted by the service organisation;
> 2. Impact of a protection breach on the provision of the cloud service;
> 3. The cloud service provider's dependence on the service organisation for the scope, complexity and uniqueness of the provided service, including the consideration of possible alternatives;
> 4. Complementary subservice organisation controls (CSOCs) assumed in the design of cloud service provider's controls to meet the applicable C5 criteria;
> 5. Deviations regarding the design and operation of CSOCs assumed at service organisations considered as subservice organisations and mitigating measures by the cloud service provider to address such deviations;
> 6. The ability of the cloud service provider to diversify sources of supply and limit vendor lock-in;
> 7. Whether service organisations used by the cloud service provider themselves use subcontracted service organisations (subcontractors) that contribute to the development and operation of the cloud service; and
> 8. If service organisations used by the cloud service provider themselves use subcontractors, the types of data processed by the subcontractors.

**Deutsche Übersetzung:**

Service-Organisationen des Cloud-Diensteanbieters unterliegen einer Risikobewertung gemäß den Richtlinien und Verfahren für Kontrolle und Überwachung von Service-Organisationen — bevor sie zur Entwicklung oder zum Betrieb des Cloud-Dienstes beitragen.

Die Risikobewertung umfasst Identifikation, Analyse, Bewertung, Behandlung und Dokumentation von Risiken bezüglich folgender Aspekte:

1. Schutzbedarfe hinsichtlich Vertraulichkeit, Integrität, Verfügbarkeit und Authentizität der von der Service-Organisation verarbeiteten, gespeicherten oder übertragenen Kundendaten, abgeleiteten Daten, Anbieter-Daten und Kontodaten;
2. Auswirkung eines Schutzbedarf-Verstoßes auf die Erbringung des Cloud-Dienstes;
3. Abhängigkeit des Cloud-Diensteanbieters von der Service-Organisation hinsichtlich Umfang, Komplexität und Einzigartigkeit des erbrachten Dienstes — einschließlich Betrachtung möglicher Alternativen;
4. **Complementary Subservice Organisation Controls (CSOCs)**, die im Design der Kontrollen des Cloud-Diensteanbieters zur Erfüllung der anwendbaren C5-Kriterien angenommen werden;
5. Abweichungen bezüglich Design und Betrieb von CSOCs, die an Subservice Organisations angenommen werden, sowie mindernde Maßnahmen des Cloud-Diensteanbieters;
6. Fähigkeit des Cloud-Diensteanbieters, Bezugsquellen zu diversifizieren und Vendor Lock-in zu begrenzen;
7. Ob Service-Organisationen ihrerseits Subunternehmer nutzen, die zur Entwicklung und zum Betrieb des Cloud-Dienstes beitragen;
8. Falls Service-Organisationen Subunternehmer nutzen, die Datentypen, die von diesen Subunternehmern verarbeitet werden.

---

### SSO-02.02B — Basic

**Kriterium (EN):**

> The adequacy of the risk assessment is reviewed regularly, at least annually, by qualified personnel of the cloud service provider during service usage.

**Deutsche Übersetzung:**

Die Angemessenheit der Risikobewertung wird regelmäßig — **mindestens jährlich** — durch qualifiziertes Personal des Cloud-Diensteanbieters während der Dienst-Nutzung überprüft.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Vendor Risk Assessment Framework**: strukturiertes Assessment (z. B. via SIG Lite, CAIQ) mit Fragen zu Datenschutz, Security-Kontrollen, Business Continuity, Financial Stability, Geopolitical Risk (Ursprungsland, Sanktions-Risiken)
- **Dependency-Analyse**: für jeden kritischen Vendor Alternativen dokumentiert (welche 2-3 Alternativen könnten übernehmen?); geschätzte Migrations-Kosten und -Dauer; Vendor Lock-in bewusst gemanagt (z. B. Multi-Cloud-Strategie, Portability der Daten)
- **CSOC-Mapping**: pro Subservice Organisation dokumentiert, welche C5-Kontrollen dort erwartet werden (z. B. „AWS ist verantwortlich für physische RZ-Sicherheit, Netzwerk-Isolation der virtuellen Ressourcen"); Abweichungen führen zu kompensierenden Maßnahmen
- **Jährlicher Review-Zyklus** durch dediziertes Vendor-Risk-Team: aktualisierte Testate einlesen, neue Vorfälle in der Branche berücksichtigen, geopolitische Änderungen einordnen (z. B. Sanktions-Änderungen), Ergebnisse in Vorstand berichten

## Verwandte Kriterien

- [[SSO-01 Policies and Procedures for Controlling and Monitoring Service Organisations]]
- [[SSO-03 Data Processing of Service Organisations]]
- [[SSO-05 Monitoring of Compliance with Requirements]]
- [[SSO-06 Contract Termination Strategy for Service Organisations]]
- [[DEV-02 Outsourcing of the Development]]
- [[OIS-07 Risk Management Policy]]
