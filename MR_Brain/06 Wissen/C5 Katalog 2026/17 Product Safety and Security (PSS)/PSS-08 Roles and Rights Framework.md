---
title: PSS-08 Roles and Rights Framework
project: "[[C5 Katalog 2026]]"
c5-id: PSS-08
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-08
---

# PSS-08 · Roles and Rights Framework

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-08 · **Unterkriterien:** 4 (4 Basic)

## Unterkriterien

### PSS-08.01B — Basic

**Kriterium (EN):**

> The cloud service provided comprises a roles and rights framework for users of the cloud service customer. This framework allows users to manage their own access rights. It describes access rights and roles for the functions provided by the cloud service. Cloud service customers can configure relevant access control parameters themselves.

**Deutsche Übersetzung:**

Der bereitgestellte Cloud-Dienst umfasst ein **Rollen- und Rechte-Framework** für Nutzer des Cloud-Dienstkunden. Dieses Framework erlaubt Nutzern, ihre eigenen Zugriffsrechte zu verwalten. Es beschreibt Zugriffsrechte und Rollen für die vom Cloud-Dienst bereitgestellten Funktionen. Cloud-Dienstkunden können relevante Access-Control-Parameter selbst konfigurieren.

**Zusatzinformation (DE):**

Bei IaaS würde ein Rollen- und Rechte-Framework u. a. Zugriffsrechte und Rollen für folgende Funktionen des Cloud-Dienstes beschreiben: Administration der Zustände virtueller Maschinen (Start, Pause, Stop) sowie deren Migration oder Monitoring; Management verfügbarer Images; Konfiguration virtueller Netzwerke; Volume-Management etc.

---

### PSS-08.02B — Basic

**Kriterium (EN):**

> The access rights and roles are suitable for enabling users of the cloud service customer to manage access authorisations and permissions in accordance with the principle of least-privilege and how it is necessary for the performance of tasks ('need-to-know-principle') and to implement the principle of functional separation between operational and controlling functions ('segregation of duties').

**Deutsche Übersetzung:**

Die Zugriffsrechte und Rollen sind geeignet, um es Nutzern des Cloud-Dienstkunden zu ermöglichen, Zugriffs-Autorisierungen und -Berechtigungen gemäß dem **Least-Privilege-Prinzip** und wie es zur Aufgabenwahrnehmung erforderlich ist (**Need-to-Know-Prinzip**) zu verwalten, sowie das Prinzip der funktionalen Trennung zwischen operativen und kontrollierenden Funktionen (**Segregation of Duties**) umzusetzen.

---

### PSS-08.03B — Basic

**Kriterium (EN):**

> The cloud service provided is equipped with a functionality to help cloud service customers review user access rights under their responsibility.

**Deutsche Übersetzung:**

Der bereitgestellte Cloud-Dienst ist mit einer Funktionalität ausgestattet, die Cloud-Dienstkunden dabei unterstützt, Nutzer-Zugriffsrechte in ihrem Verantwortungsbereich zu überprüfen.

**Zusatzinformation (DE):**

Diese Funktionalität kann z. B. das Abrufen einer Liste aller vom Cloud-Dienstkunden aktivierten Rollen und Zugriffe sowie deren letzter Änderung umfassen.

---

### PSS-08.04B — Basic

**Kriterium (EN):**

> In case the cloud service includes the management of customer identities, for a given customer identity, the cloud service provided is equipped with a functionality to provide the list of access rights currently granted to that identity according to the contractual terms.

**Deutsche Übersetzung:**

Falls der Cloud-Dienst das Management von Kunden-Identitäten umfasst, ist der bereitgestellte Cloud-Dienst mit einer Funktionalität ausgestattet, die für eine gegebene Kunden-Identität die Liste der derzeit gemäß den vertraglichen Bedingungen gewährten Zugriffsrechte bereitstellt.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Standardrollen im Healthcare-Kontext**: Arzt (Lesen/Schreiben Patientendaten der zugewiesenen Station), Facharzt (erweiterter Zugriff auf konsiliar-relevante Fälle), Pflege (Vitalzeichen, Medikations-Doku), MTA (Diagnostik-Ergebnisse), Kodiererin (nur abrechnungsrelevante Daten), Admin (Konfiguration, keine Patientendaten); anpassbar pro Krankenhaus
- **Fein-granulare Berechtigung**: Rollen aggregieren Einzel-Berechtigungen (Read-Patient-Data, Write-Prescription, Approve-Discharge); Kunde kann eigene Rollen definieren (z. B. Krankenhaus-spezifische Rolle „Sozialdienst"); Berechtigungs-Ebene: Station, Fachabteilung, Klinik
- **Access-Review-Report**: pro Nutzer aktueller Berechtigungs-Snapshot, letzte Änderung mit wer/wann; „inactive users" (kein Login > 90 Tage) hervorgehoben; Bulk-Deaktivierung möglich; Jahres-Compliance-Report als PDF-Download
- **Identity-Detail-View**: für jeden Kunden-Nutzer transparente Übersicht aller aktuellen Berechtigungen (auch die durch Gruppen-Zugehörigkeit vererbten); Historie über die letzten 12 Monate; wichtig für internes Audit + DSGVO-Auskunft (Art. 15)

## Verwandte Kriterien

- [[PSS-05 Authentication Mechanisms]]
- [[PSS-09 Authorisation Mechanisms]]
- [[IAM-02 Segregation of Duties (Access-Rights)]]
- [[IAM-03 Provision and Modification of Access Rights]]
- [[IAM-04 Regular Review of Access Rights]]
- [[IAM-05 Privileged Access Rights]]
- [[OIS-02 Segregation of Duties]]
