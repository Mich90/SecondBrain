---
title: IAM-01 Policy for Identities and Access Rights
project: "[[C5 Katalog 2026]]"
c5-id: IAM-01
c5-area: IAM
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/iam
aliases:
  - IAM-01
---

# IAM-01 · Policy for Identities and Access Rights

> [!info] Kontext
> **Bereich:** Identity and Access Management (IAM) · **Kriterium-ID:** IAM-01 · **Unterkriterien:** 4 (3 Basic · 1 Complementing)

## Unterkriterien

### IAM-01.01B — Basic

**Kriterium (EN):**

> The cloud service provider documents, communicates and makes available according to SP-01:
>
> 1. An authorisation framework based on role-based access control and the business and security requirements of the cloud service provider; and
> 2. A policy for managing identities and access rights for internal and external personnel of the cloud service provider and system components that have a role in automated authorisation processes of the cloud service provider.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter dokumentiert, kommuniziert und stellt gemäß [[SP-01 Documentation, Communication and Provision of Policies and Procedures|SP-01]] bereit:

1. Ein Autorisierungs-Framework basierend auf **rollenbasierter Zugriffskontrolle (RBAC)** und den Geschäfts- und Sicherheitsanforderungen des Cloud-Diensteanbieters;
2. Eine Richtlinie für das Management von Identitäten und Zugriffsrechten für internes und externes Personal sowie für Systemkomponenten, die eine Rolle in automatisierten Autorisierungsprozessen spielen.

**Zusatzinformation (DE):**

Externes Personal umfasst Freelancer, Zeitarbeiter, Lieferanten und Dienstleister mit Zugriff auf Systemkomponenten. Anforderungen an die physische Zugangskontrolle sind in [[PS-04 Physical Site Access Control|PS-04]] näher spezifiziert.

---

### IAM-01.02B — Basic

**Kriterium (EN):**

> For the purpose of the business and security requirements these documents address at least the following aspects:
>
> 1. Aspects that are relevant for making access control decisions;
> 2. Assignment of unique usernames;
> 3. Granting and modifying identities and access rights based on the 'least-privilege-principle' and the 'need-to-know-principle';
> 4. Application of a role-based mechanism for assigning access rights;
> 5. Definition of the supported identity and role-based access types, including an assignment of access control parameters and roles to be considered for each type;
> 6. Segregation of duties between operational and monitoring functions ('Segregation of Duties');
> 7. Assigning and monitoring privileged access rights;
> 8. Approval by authorised individual(s) or system(s) for granting or modifying identities and access rights before cloud service customer data, cloud service derived data and cloud service provider data can be accessed;
> 9. Regular review of assigned identities and access rights;
> 10. Blocking and removing identities or limiting access in the event of inactivity;
> 11. Specific measures for managing identities whose use is restriced to emergency recovery and similar scenarios;
> 12. Time-based or event-driven removal or adjustment of access rights in the event of changes to job responsibility;
> 13. Multi-factor authentication for users with privileged access;
> 14. Remote access and access across geographic boundaries;
> 15. Requirements for approving and documenting the management of identities and access rights; and
> 16. Measures to be taken upon the detection of a potential identity compromise, such as disabling and removing the affected identities.

**Deutsche Übersetzung:**

Für die Geschäfts- und Sicherheitsanforderungen adressieren diese Dokumente mindestens folgende Aspekte:

1. Aspekte, die für Access-Control-Entscheidungen relevant sind;
2. Vergabe eindeutiger Benutzernamen;
3. Vergabe und Änderung von Identitäten und Zugriffsrechten basierend auf **least privilege** und **need to know**;
4. Anwendung eines rollenbasierten Mechanismus zur Vergabe von Zugriffsrechten;
5. Definition der unterstützten Identitäts- und rollenbasierten Zugriffsarten, einschließlich einer Zuordnung von Access-Control-Parametern und zu berücksichtigenden Rollen pro Typ;
6. **Segregation of Duties** zwischen operativen und überwachenden Funktionen;
7. Vergabe und Überwachung privilegierter Zugriffsrechte;
8. Genehmigung durch autorisierte Personen oder Systeme vor Zugriff auf Kunden-, abgeleitete oder Anbieter-Daten;
9. Regelmäßige Überprüfung zugewiesener Identitäten und Zugriffsrechte;
10. Sperren und Entfernen von Identitäten oder Einschränken von Zugriffen bei Inaktivität;
11. Spezifische Maßnahmen zur Verwaltung von Identitäten, deren Nutzung auf Emergency-Recovery und ähnliche Szenarien beschränkt ist;
12. Zeitgebundene oder ereignisgesteuerte Entfernung/Anpassung von Zugriffsrechten bei Änderung der Aufgabenverantwortung;
13. **MFA** für Nutzer mit privilegiertem Zugriff;
14. Remote-Zugriff und Zugriffe über geografische Grenzen hinweg;
15. Anforderungen an Genehmigung und Dokumentation des Managements;
16. Maßnahmen bei Erkennung einer möglichen Identitäts-Kompromittierung (z. B. Deaktivierung und Entfernung).

---

### IAM-01.03B — Basic

**Kriterium (EN):**

> The cloud service provider is capable of producing a list of the currently granted cloud-based access rights for each identity under its responsibility.

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter ist in der Lage, für jede Identität in seinem Verantwortungsbereich eine Liste der aktuell gewährten Cloud-basierten Zugriffsrechte zu erstellen.

---

### IAM-01.01AC — Additional (Complementing)

**Kriterium (EN):**

> Access logs are reviewed at least every month in order to detect attempts of unauthorised access or suspicious access patterns.

**Deutsche Übersetzung:**

Zugriffslogs werden mindestens monatlich überprüft, um unautorisierte Zugriffsversuche oder verdächtige Zugriffsmuster zu erkennen.

**Zusatzinformation (DE):**

Ein Review kann manuell oder automatisiert erfolgen. Bei monatlichen Reviews können verdächtige Verhaltensweisen wie Zugriffs-Fehler über einen längeren Zeitraum (z. B. einmal täglich) oder aufeinanderfolgende Logins aus verschiedenen Ländern auffallen, die ein SIEM, das nur Echtzeit-Login-Versuche analysiert, möglicherweise übersieht.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Zentrales IAM-System** (z. B. Keycloak, Okta, Entra ID) mit RBAC + optional ABAC: Rollen wie „Klinik-Admin", „Arzt", „Pflegekraft", „Support-L1-Anbieterseite", „Support-L2-Anbieterseite" mit granularer Rechtezuweisung; SoD zwischen Ops und Audit
- **JML-Prozess** (Joiner-Mover-Leaver) automatisiert: HR-System als Source of Truth → SCIM → IAM-System → Downstream-Systeme; sofortige Rechte-Anpassung bei Rollenwechsel; Deprovisioning binnen 24 h nach Kündigung
- **IAM-Reports on-demand**: pro Person Aufstellung aller Cloud-Zugriffsrechte über alle Systeme; wichtig für DSGVO-Auskunftsersuchen, KRITIS-Audits, § 630f BGB-Nachweise
- **Access-Log-Review** mit UEBA-Unterstützung: monatliche Auswertung von Auffälligkeiten (Login außerhalb Landes-IP, Login zu ungewöhnlichen Zeiten, ungewöhnliche Datenmengen abgerufen); Findings an CISO

## Verwandte Kriterien

- [[IAM-02 Granting and Change of Identities and Access Rights]]
- [[IAM-03 Risk-Based Procedure for Locking and Withdrawal of Identities]]
- [[IAM-04 Withdrawal or Adjustment of Access Rights as the Task Area Changes]]
- [[IAM-05 Regular Review of Access Rights]]
- [[IAM-06 Privileged Access Rights]]
- [[IAM-08 Authentication Mechanisms]]
- [[PS-04 Physical Site Access Control]]
- [[SP-01 Documentation, Communication and Provision of Policies and Procedures]]
