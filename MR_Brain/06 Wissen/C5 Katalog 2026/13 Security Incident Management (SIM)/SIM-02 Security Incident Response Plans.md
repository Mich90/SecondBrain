---
title: SIM-02 Security Incident Response Plans
project: "[[C5 Katalog 2026]]"
c5-id: SIM-02
c5-area: SIM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/sim
aliases:
  - SIM-02
---

# SIM-02 · Security Incident Response Plans

> [!info] Kontext
> **Bereich:** Security Incident Management (SIM) · **Kriterium-ID:** SIM-02 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### SIM-02.01B — Basic

**Kriterium (EN):**

> The cloud service provider has documented, approved and communicated one or more security incident response plans. The plans address all stages of incident response, including identification, containment, eradication, recovery, and lessons learned. They are approved by subject matter experts of the cloud service provider and communicated to all relevant stakeholders.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter hat einen oder mehrere **Security Incident Response Plans** dokumentiert, genehmigt und kommuniziert. Die Pläne adressieren alle Phasen der Incident Response — einschließlich **Identifikation, Containment, Eradication, Recovery und Lessons Learned**. Sie werden von Fachexperten des Cloud-Diensteanbieters genehmigt und an alle relevanten Stakeholder kommuniziert.

**Zusatzinformation (DE):**

Relevante Stakeholder im Sinne dieses Kriteriums sind solche, die den Incident Response Plan kennen müssen — z. B. wegen ihrer Beteiligung an der Ausführung oder aufgrund vertraglicher oder regulatorischer Vereinbarungen.

---

### SIM-02.02B — Basic

**Kriterium (EN):**

> The plans are evaluated and updated at least annually or as necessary to reflect changes in the organisational structure or environment.

**Deutsche Übersetzung:**

Die Pläne werden **mindestens jährlich** — oder bei Bedarf — evaluiert und aktualisiert, um Änderungen in der Organisationsstruktur oder Umgebung widerzuspiegeln.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **NIST-SP-800-61-basierter Prozess**: Preparation → Detection & Analysis → Containment, Eradication & Recovery → Post-Incident-Activity; für jeden Schritt konkrete Runbooks; ergänzt um MITRE ATT&CK-Referenzen
- **Playbooks für typische Szenarien**: Ransomware, Datenabfluss von Patientendaten, DDoS auf Kunden-Portal, Insider-Threat, Supply-Chain-Kompromittierung (via Dependency), Cloud-Account-Takeover; jedes Playbook mit Erst-Reaktion, Eskalations-Pfad, Kunden-Kommunikation
- **Jährliche Review-Zyklus**: nach jedem größeren Vorfall (Lessons Learned Feedback), bei Änderung der Infrastruktur (neue Cloud-Region, neue Services), nach Compliance-Änderungen (z. B. NIS2 Anpassungen); dokumentiert im Changelog des Plans
- **Stakeholder-Kommunikation**: Interne Awareness (jährliche Refresher-Trainings, Q1 Table-Top-Übung mit CSIRT + Führung); Extern (AVV enthält Kunden-Kontakt-Prozeduren, Krankenhäuser haben dedizierten Incident-Contact); Behörden (BSI, Datenschutzbehörden gemäß Meldepflichten)

## Verwandte Kriterien

- [[SIM-01 Policy for Security Incident Management]]
- [[SIM-03 Processing of Security Incidents]]
- [[SIM-06 Evaluation and Learning Process]]
- [[OPS-19 Managing Incidents and Crashes - Policies and Procedures]]
- [[BCM-03 Business Continuity Plans - Development, Documentation and Communication|BCM-03]] *(noch nicht angelegt)*
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
