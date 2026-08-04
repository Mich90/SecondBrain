---
title: CRY-02 Cryptographic Change Management
project: "[[C5 Katalog 2026]]"
c5-id: CRY-02
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-02
---

# CRY-02 · Cryptographic Change Management

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-02 · **Unterkriterien:** 3 (3 Basic)

> [!note] Complementary Customer Criteria (für alle Unterkriterien)
> Cloud-Dienstkunden stellen durch geeignete Kontrollen sicher, dass sie sich — bei Benachrichtigung über Änderungen an kryptographischen Systemen durch den Cloud-Diensteanbieter — aktiv an einer umfassenden Bewertung der möglichen Auswirkungen auf ihre Nutzung des Cloud-Dienstes beteiligen.

## Unterkriterien

### CRY-02.01B — Basic

**Kriterium (EN):**

> When implementing changes to cryptographic systems, the cloud service provider performs an evaluation of their potential impact in accordance with DEV-06. This process includes an analysis of the cloud infrastructure of the cloud service, as well as an analysis of potential disruptions to cloud service customer-managed workloads and the evaluation of residual risks, cost implications, and integration benefits. The cloud service provider informs cloud service customers of these downstream effects to prevent unforeseen failures within the cloud service customer's specific cryptographic implementations.

**Deutsche Übersetzung:**

Bei der Umsetzung von Änderungen an kryptographischen Systemen führt der Cloud-Diensteanbieter eine Bewertung der potenziellen Auswirkungen gemäß [[DEV-06 Testing System Components|DEV-06]] *(noch nicht angelegt)* durch. Dieser Prozess umfasst eine Analyse der Cloud-Infrastruktur des Cloud-Dienstes sowie eine Analyse potenzieller Störungen von kunden-verwalteten Workloads und die Bewertung von Restrisiken, Kostenimplikationen und Integrationsvorteilen. Der Cloud-Diensteanbieter informiert Cloud-Dienstkunden über diese Downstream-Effekte, um unvorhergesehene Fehler in den kryptographischen Implementierungen des Kunden zu vermeiden.

---

### CRY-02.02B — Basic

**Kriterium (EN):**

> All changes and adjustments to cryptographic systems are documented and traceable.

**Deutsche Übersetzung:**

Alle Änderungen und Anpassungen an kryptographischen Systemen sind dokumentiert und nachvollziehbar.

---

### CRY-02.03B — Basic

**Kriterium (EN):**

> The personnel responsible for cryptographic systems is regularly trained and informed about respective changes.

**Deutsche Übersetzung:**

Das für kryptographische Systeme verantwortliche Personal wird regelmäßig geschult und über entsprechende Änderungen informiert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Crypto-Change-Prozess** mit CAB-Approval: jede Änderung (Algorithmus-Austausch, Schlüssellängen-Anpassung, Rotation-Policy-Änderung) durchläuft Impact-Analyse; für breaking changes Kunden-Notification 90 Tage vorab, für backward-compatible Changes 30 Tage
- **Change-Log für Crypto**: separates Register aller Änderungen mit Datum, Betroffenen Systemen, Migrationspfad, Fallback-Plan; jährlich für Audit-Zwecke reviewbar; bei Krankenhaus-Auditor-Anfragen abrufbar
- **Crypto-Personnel-Training**: Krypto-Verantwortliche halbjährliche Schulungen (neue Standards, Angriffe wie SLOTH/LOGJAM/Kyber-Angriffe); Certification (CISSP, offensive-security zertifiziert); Teilnahme an BSI-Konferenzen
- **Downstream-Impact-Kommunikation**: Kunde wird informiert, dass TLS 1.0/1.1 zu Datum X abgeschaltet wird — mit Migrationsanleitung für ältere KIS/PVS-Systeme; Test-Endpoint für Kunden-Validierung

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-03 Review of Cryptography Practices]]
- [[HR-03 Security Training and Awareness Programme]]
- [[DEV-03 Policies for Changes to System Components|DEV-03]] *(noch nicht angelegt)*
- [[DEV-06 Testing System Components|DEV-06]] *(noch nicht angelegt)*
