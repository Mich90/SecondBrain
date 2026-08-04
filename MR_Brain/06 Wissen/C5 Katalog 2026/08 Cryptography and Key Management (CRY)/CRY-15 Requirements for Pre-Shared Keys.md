---
title: CRY-15 Requirements for Pre-Shared Keys
project: "[[C5 Katalog 2026]]"
c5-id: CRY-15
c5-area: CRY
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/cry
aliases:
  - CRY-15
---

# CRY-15 · Requirements for Pre-Shared Keys

> [!info] Kontext
> **Bereich:** Cryptography and Key Management (CRY) · **Kriterium-ID:** CRY-15 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### CRY-15.01B — Basic

**Kriterium (EN):**

> If pre-shared keys or wildcard certificates are used, the cloud service provider has documented and implemented dedicated procedures and technical safeguards to ensure their secure use and provisioning.

**Deutsche Übersetzung:**

Wenn **Pre-Shared Keys** oder **Wildcard-Zertifikate** genutzt werden, hat der Cloud-Diensteanbieter dedizierte Verfahren und technische Schutzmaßnahmen zur Sicherstellung ihrer sicheren Nutzung und Bereitstellung dokumentiert und implementiert.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **PSK-Vermeidung wo möglich**: Pre-Shared Keys nur in Ausnahmefällen (z. B. Legacy-Interfaces zu älteren KIS/PVS-Systemen); wenn genutzt, dann via Vault erzeugt/verteilt, hohe Entropie (256+ Bit)
- **PSK-Rotation** mindestens jährlich; Transport bei Provisionierung via out-of-band oder mit ephemeral Session-Encryption (nie im Klartext per E-Mail); dokumentierte Verantwortlichkeiten beim Kunden und beim Anbieter
- **Wildcard-Zertifikate restriktiv**: nur wenn zwingend erforderlich (z. B. für Kunden-Custom-Subdomains); Verwaltung in separatem HSM; kein Wildcard über verschiedene Trust-Level (kein `*.example.com` für Prod + Dev + Test)
- **Compensating Controls**: bei PSK/Wildcard-Nutzung engmaschiges Monitoring auf Missbrauch (Anomalie-Detection bei Nutzung außerhalb definierter Systeme), engere Netzwerk-Segmentierung, häufigere Reviews

## Verwandte Kriterien

- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[CRY-08 Public-Key Certificate Issuance]]
- [[CRY-09 Secure Key Provisioning]]
- [[CRY-10 Secure Storage of Keys]]
- [[OIS-07 Risk Management Policy]]
