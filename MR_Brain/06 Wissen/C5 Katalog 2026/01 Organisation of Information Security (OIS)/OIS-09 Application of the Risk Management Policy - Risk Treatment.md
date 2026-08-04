---
title: OIS-09 Application of the Risk Management Policy - Risk Treatment
project: "[[C5 Katalog 2026]]"
c5-id: OIS-09
c5-area: OIS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ois
aliases:
  - OIS-09
---

# OIS-09 · Application of the Risk Management Policy — Risk Treatment

> [!info] Kontext
> **Bereich:** Organisation of Information Security (OIS)  
> **Kriterium-ID:** OIS-09  
> **Unterkriterien:** 7 (7 Basic)

> [!note] Gemeinsame Zusatzinformation (gilt für alle Unterkriterien)
> Dieses Kriterium bezieht sich ausschließlich auf Risiken, die im Verantwortungsbereich des Cloud-Diensteanbieters liegen. Risiken, die dem Cloud-Dienstkunden bei der Nutzung des Cloud-Dienstes entstehen, sind nicht abgedeckt. Beim Outsourcing an Service-Organisationen verbleibt die Verantwortung beim Cloud-Diensteanbieter.
>
> Cloud-Diensteanbieter können etablierte Risikomanagement-Standards nutzen (z. B. **ISO 27005** oder die **ISO 31000-Familie**). Bereits implementierte Risikomanagement-Verfahren dürfen für OIS-09 wiederverwendet werden, um Redundanzen zu reduzieren. Schlanke Dokumentationsformen sind zulässig, wo angemessen. *(Zusatzinformation identisch zu [[OIS-08 Application of the Risk Management Policy - Risk Assessment|OIS-08]].)*

## Unterkriterien

### OIS-09.01B — Basic

**Kriterium (EN):**

> The risk treatment is prioritised corresponding to the level of cybersecurity risks associated with the cloud service.

**Deutsche Übersetzung:**

Die Risikobehandlung wird entsprechend der Höhe der mit dem Cloud-Dienst verbundenen Cybersecurity-Risiken priorisiert.

---

### OIS-09.02B — Basic

**Kriterium (EN):**

> A risk treatment plan according to the risk assessment (cf. OIS-08) is documented and implemented.

**Deutsche Übersetzung:**

Ein Risikobehandlungsplan (Risk Treatment Plan) gemäß der Risikobewertung (vgl. [[OIS-08 Application of the Risk Management Policy - Risk Assessment|OIS-08]]) wird dokumentiert und umgesetzt.

---

### OIS-09.03B — Basic

**Kriterium (EN):**

> Actions defined in the risk treatment plan reduce the risk level to a residual risk that risk owners are able to accept.

**Deutsche Übersetzung:**

Die im Risikobehandlungsplan definierten Maßnahmen reduzieren das Risikoniveau auf ein Restrisiko, das die Risikoeigentümer akzeptieren können.

---

### OIS-09.04B — Basic

**Kriterium (EN):**

> The risk treatment plan, as well as suitably summarised and abstracted versions, is provided to relevant internal parties.

**Deutsche Übersetzung:**

Der Risikobehandlungsplan wird — ebenso wie geeignet zusammengefasste und abstrahierte Fassungen — relevanten internen Parteien bereitgestellt.

---

### OIS-09.05B — Basic

**Kriterium (EN):**

> Based on contractual agreements and relevant legal and regulatory requirements, the cloud service provider determines which relevant external parties are provided with information, specific to the parties' purposes, about the risk treatment plan. The cloud service provider also determines the extent to which this should happen.

**Deutsche Übersetzung:**

Auf Basis vertraglicher Vereinbarungen und relevanter rechtlicher und regulatorischer Anforderungen legt der Cloud-Diensteanbieter fest, welche externen Parteien Informationen zum Risikobehandlungsplan erhalten — spezifisch auf den jeweiligen Zweck abgestimmt. Der Cloud-Diensteanbieter legt zudem fest, in welchem Umfang dies erfolgt.

---

### OIS-09.06B — Basic

**Kriterium (EN):**

> The selected options for risk treatment are reviewed by the risk owners every time the risk assessment is modified. The review considers the criteria for risk acceptance and prioritisation of risk treatment.

**Deutsche Übersetzung:**

Die gewählten Optionen zur Risikobehandlung werden von den Risikoeigentümern bei jeder Änderung der Risikobewertung überprüft. Die Prüfung berücksichtigt die Kriterien für Risikoakzeptanz und die Priorisierung der Risikobehandlung.

---

### OIS-09.07B — Basic

**Kriterium (EN):**

> In case of the cloud service provider sharing risks with the cloud service customers, the cloud service provider maps shared risks to complementary customer controls and describes them in the user documentation (cf. PSS-01).

**Deutsche Übersetzung:**

Falls der Cloud-Diensteanbieter Risiken mit den Cloud-Dienstkunden teilt (Shared Risks), ordnet der Cloud-Diensteanbieter die geteilten Risiken den komplementären Kundenkontrollen (Complementary Customer Controls) zu und beschreibt sie in der Benutzer-Dokumentation (vgl. [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Risk Treatment Plan (RTP)** als versioniertes Dokument im ISMS-Tool führen: pro Risiko konkrete Maßnahmen mit Verantwortlichen, Zieltermin, Restrisiko und Freigabe durch Risikoeigentümer; monatlicher Statustracking im Security-Steuerkreis
- **Behandlungs-Optionen** dokumentieren (Reduce/Transfer/Avoid/Accept): z. B. Ransomware-Risiko → Reduce durch Backup-Strategie + EDR; DSGVO-Bußgeld-Risiko → Transfer durch Cyber-Versicherung; Restrisiko explizit vom Geschäftsführer akzeptiert
- **Externe Kommunikation der Risikobehandlung** über Trust-Portal: Kunden im Gesundheitswesen dürfen Auszug des RTP anfordern (für ihr eigenes Risikomanagement/Audit); Aufsichtsbehörden erhalten spezifische Auszüge bei Meldepflichten
- **Complementary Customer Controls (CCC)** in Kundendokumentation dokumentieren: welche Sicherheitsmaßnahmen muss der Krankenhaus-Kunde selbst ergreifen (z. B. Passwort-Policy der eigenen Nutzer, MFA-Enrollment, Anti-Malware auf Endgeräten der Ärzte)? Nur so ist die Gesamtsicherheit gewährleistet

## Verwandte Kriterien

- [[OIS-07 Risk Management Policy]]
- [[OIS-08 Application of the Risk Management Policy - Risk Assessment]]
- [[OIS-04 Segregation of Duties]] (Mitigating measures für SoD-Konflikte)
- [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]] *(noch nicht angelegt)*
- [[OIS-03 Interfaces and Dependencies]] (Shared Responsibility Model)
