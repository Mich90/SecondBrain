---
title: AM-07 Decommissioning of Hardware
project: "[[C5 Katalog 2026]]"
c5-id: AM-07
c5-area: AM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/am
aliases:
  - AM-07
---

# AM-07 · Decommissioning of Hardware

> [!info] Kontext
> **Bereich:** Asset Management (AM) · **Kriterium-ID:** AM-07 · **Unterkriterien:** 4 (2 Basic · 1 Sharpening · 1 Complementing)

> [!note] Gemeinsame Zusatzinformation
> Dieses Kriterium ist **nicht anwendbar** für Hardware-Komponenten, die keine Kundendaten, abgeleiteten Daten, Anbieter-Daten oder Kontodaten speichern (z. B. Monitore, Router, Tastaturen). Datenlöschung bzw. physische Zerstörung kann z. B. gemäß **DIN 66399** oder **BSI IT-Grundschutz-Baustein CON.6** erfolgen.

## Unterkriterien

### AM-07.01B — Basic

**Kriterium (EN):**

> The cloud service provider defines, documents and implements a procedure for the decommissioning of hardware used to operate system components supporting the cloud service production environment under the responsibility of the cloud service provider. As part of this procedure, approval by authorised personnel of the cloud service provider based on the applicable policies is required.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert, dokumentiert und implementiert ein Verfahren zur Außerbetriebnahme von Hardware, die zum Betrieb von Systemkomponenten in der produktiven Cloud-Dienst-Umgebung im Verantwortungsbereich des Cloud-Diensteanbieters genutzt wird. Im Rahmen dieses Verfahrens ist eine Freigabe durch autorisiertes Personal des Cloud-Diensteanbieters auf Basis der geltenden Richtlinien erforderlich.

**Zusatzinformation (DE):**

Das Außerbetriebnahme-Verfahren umfasst typischerweise:

1. Verifikation, dass das Asset nicht mehr für den Betrieb benötigt wird;
2. Bewertung zugehöriger Risiken und Abhängigkeiten;
3. Freigabe durch autorisiertes Personal auf Basis interner Richtlinien;
4. Durchführung sicherer Datenlöschungs- oder Sanitization-Prozesse;
5. Aktualisierung des Asset-Inventars zur Reflexion des Decommissioning-Status;
6. Entsorgung oder Repurposing der Hardware gemäß Umwelt- und Sicherheitsrichtlinien.

---

### AM-07.01AS — Additional (Sharpening)

**Kriterium (EN):**

> The cloud service provider defines, documents and implements a procedure for the decommissioning of hardware used to operate system components supporting the cloud service production, development, test or staging environment under the responsibility of the cloud service provider. As part of this procedure, approval by authorised personnel of the cloud service provider based on the applicable policies is required.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter definiert, dokumentiert und implementiert ein Verfahren zur Außerbetriebnahme von Hardware, die zum Betrieb von Systemkomponenten in der **produktiven, Entwicklungs-, Test- oder Staging-Umgebung** des Cloud-Dienstes im Verantwortungsbereich des Cloud-Diensteanbieters genutzt wird. Freigabe durch autorisiertes Personal erforderlich.

---

### AM-07.02B — Basic

**Kriterium (EN):**

> The decommissioning includes either:
>
> 1. The complete and permanent deletion of all cloud service customer data, cloud service derived data, cloud service provider data and account data; or
> 2. The proper destruction of the media.
>
> Account data needs to be deleted at least in cases where the data is located in the production environment for the operation of system components.

**Deutsche Übersetzung:**

Die Außerbetriebnahme umfasst entweder:

1. Die vollständige und dauerhafte Löschung aller Kundendaten, abgeleiteten Daten, Anbieter-Daten und Kontodaten; oder
2. Die ordnungsgemäße Vernichtung der Datenträger.

Kontodaten müssen mindestens in den Fällen gelöscht werden, in denen die Daten sich in der Produktivumgebung für den Betrieb von Systemkomponenten befinden.

---

### AM-07.01AC — Additional (Complementing)

**Kriterium (EN):**

> The destruction of data on hardware components is carried out in such a manner that data recovery can be reasonably considered to be impossible.

**Deutsche Übersetzung:**

Die Zerstörung von Daten auf Hardware-Komponenten erfolgt in einer Weise, dass eine Datenwiederherstellung nach vernünftigem Ermessen als unmöglich anzusehen ist.

**Zusatzinformation (DE):**

Der Freigabeprozess stellt sicher, dass Entsorgungsaktivitäten, die außerhalb des Standorts durchgeführt werden, den Sicherheits-, Compliance- und Umweltrichtlinien entsprechen. Er umfasst typischerweise:

1. Verifikation von Asset-Eigentum und Nutzungshistorie;
2. Bewertung der Anforderungen an die Datenlöschung;
3. Auswahl genehmigter Entsorgungsdienstleister oder -methoden;
4. Dokumentation von Entsorgungshandlungen und Freigaben;
5. Bestätigung der sicheren Datenlöschung oder -zerstörung.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Decommissioning-Runbook** mit Pflicht-Schritten: Asset markiert „decommissioning" → kryptografische Löschung (Krypto-Erase bei SED-SSDs) oder mehrfaches Überschreiben (mind. DoD 5220.22-M) → CMDB-Update → Vernichtungsprotokoll
- **Zertifikat für Datenträgervernichtung** durch spezialisierten Dienstleister (z. B. Rhenus, ProDatenschutz) nach DIN 66399 Stufe H-6 (bei Patientendaten); Zertifikat mit Seriennummer der Datenträger in CMDB verlinken
- **Kryptografische Löschung** als bevorzugte Methode bei verschlüsselten SSDs: Löschen aller Schlüsselreferenzen im KMS/HSM macht Daten unwiederherstellbar; Nachweis via Audit-Log
- **Sharpening-Erweiterung**: auch Dev-/Test-/Staging-Hardware wird nach gleichem Verfahren dekommissioniert, da diese ggf. Kopien/Snippets von Prod-Daten enthalten kann

## Verwandte Kriterien

- [[AM-05 Policy for the Proper and Secure Use of Assets]]
- [[AM-06 Commissioning of Hardware]]
- [[AM-11 Transfer of Hardware]]
- [[OIS-07 Risk Management Policy]]
- [[CRY-05 Encryption of Data at Rest|CRY-05]] *(noch nicht angelegt)*
- [[OPS-05 Data Backup and Recovery - Deletion of Data|OPS-05]] *(noch nicht angelegt — falls existiert)*
