---
title: OPS-33 Confidential Computing - Remote Attestation
project: "[[C5 Katalog 2026]]"
c5-id: OPS-33
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-33
---

# OPS-33 · Confidential Computing — Remote Attestation

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-33 · **Unterkriterien:** 5 (3 Basic · 2 Complementing)

## Unterkriterien

### OPS-33.01B — Basic

**Kriterium (EN):**

> If the cloud service comprises capabilities for confidential computing, the cloud service provider offers remote attestation functionalities for data in-use protection.

**Deutsche Übersetzung:**

Wenn der Cloud-Dienst Confidential-Computing-Fähigkeiten umfasst, bietet der Cloud-Diensteanbieter **Remote-Attestation-Funktionalitäten** für den Schutz von Daten in Use.

---

### OPS-33.02B — Basic

**Kriterium (EN):**

> Remote attestation functionalities are based on cryptographic means rooted in trusted hard- and software.

**Deutsche Übersetzung:**

Remote-Attestation-Funktionalitäten basieren auf kryptographischen Mitteln, die in vertrauenswürdiger Hard- und Software verankert sind.

---

### OPS-33.03B — Basic

**Kriterium (EN):**

> Remote attestation functionalities comprise an interface that allows the customer to verify the integrity of the remote attestation.

**Deutsche Übersetzung:**

Remote-Attestation-Funktionalitäten umfassen eine Schnittstelle, die dem Kunden die Verifikation der Integrität der Remote Attestation ermöglicht.

**Zusatzinformation (DE):**

Die Attestation-Schnittstelle ermöglicht Kunden, Attestation-Evidence sicher aus der Confidential-Computing-Umgebung abzurufen. Die Verifikation kann durch den Kunden selbst oder durch vertrauenswürdige Drittparteien erfolgen.

---

### OPS-33.01AC — Additional (Complementing)

**Kriterium (EN):**

> The cloud service provider clearly defines, documents and communicates the available attestation levels.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert, dokumentiert und kommuniziert die verfügbaren Attestation-Levels klar.

**Zusatzinformation (DE):**

Remote Attestation kann an verschiedenen Orten und mit verschiedenen Vertrauensstufen durchgeführt werden:

1. Cloud-Dienstkunden rufen Evidence aus TEEs ab und führen die Verifikation in einer von ihnen vollständig vertrauten Umgebung durch. Dieses Szenario gilt allgemein als sehr starke Attestation;
2. Cloud-Diensteanbieter rufen Evidence aus TEEs ab, führen die Verifikation in von ihnen kontrollierten Verifikationsdiensten durch;
3. Weitere Modelle mit Drittparteien.

---

### OPS-33.02AC — Additional (Complementing)

**Kriterium (EN):**

> The information is part of the guidelines and recommendations for the secure use of the cloud service provided (cf. PSS-01).

**Deutsche Übersetzung:**

Die Informationen sind Bestandteil der Leitlinien und Empfehlungen für die sichere Nutzung des bereitgestellten Cloud-Dienstes (vgl. [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Attestation-API** stellt Kunden signierte Attestation-Reports zur Verfügung: TEE-Identität, Code-Hash, Timestamp, Nonce; kryptographische Signatur mit Hardware-Root-of-Trust (Intel-DCAP, AMD-SNP)
- **Kunden-verifizierbare Attestation**: Krankenhaus-IT kann eigenständig prüfen, dass der Code, der Patientendaten verarbeitet, exakt dem geprüften Release entspricht; Vertrauens-Aufbau über neutrale Verifikation (z. B. via Intel Provisioning Certification Service)
- **Attestation-Level dokumentiert**: „Level 1" (Anbieter-Verifikation, Grundvertrauen), „Level 2" (Kunden-Verifikation via Standard-Tools, mittleres Vertrauen), „Level 3" (Third-Party-Verifikation z. B. TÜV, höchstes Vertrauen)
- **Attestation im PSS-Dokumentation**: für Kunden nachvollziehbar dokumentiert wie Verifikation funktioniert, welche Tools/Bibliotheken nutzbar sind, wo Anleitungen liegen; Support-Kanal für Verifikationsfragen

## Verwandte Kriterien

- [[OPS-32 Confidential Computing - Policies and Procedures]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms|CRY-01]] *(noch nicht angelegt)*
- [[PSS-01 Guidelines and Recommendations for Cloud Service Customers|PSS-01]] *(noch nicht angelegt)*
- [[PSS-11 System Hardening|PSS-11]] *(noch nicht angelegt)*
