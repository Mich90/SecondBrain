---
title: PSS-06 Session Management
project: "[[C5 Katalog 2026]]"
c5-id: PSS-06
c5-area: PSS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/pss
aliases:
  - PSS-06
---

# PSS-06 · Session Management

> [!info] Kontext
> **Bereich:** Product Safety and Security (PSS) · **Kriterium-ID:** PSS-06 · **Unterkriterien:** 2 (2 Basic)

## Unterkriterien

### PSS-06.01B — Basic

**Kriterium (EN):**

> To protect confidentiality, availability, integrity and authenticity during interactions with the cloud service, a suitable session management system is used that corresponds to the established rules of technology and is protected against known attacks.

**Deutsche Übersetzung:**

Zum Schutz von Vertraulichkeit, Verfügbarkeit, Integrität und Authentizität während Interaktionen mit dem Cloud-Dienst wird ein geeignetes **Session-Management-System** verwendet, das den anerkannten Regeln der Technik entspricht und gegen bekannte Angriffe geschützt ist.

**Zusatzinformation (DE):**

Bekannte Angriffe umfassen Manipulation, Fälschung, Session-Übernahme, Denial-of-Service-Angriffe, Enveloping, Replay- und Null-Cipher-Angriffe.

---

### PSS-06.02B — Basic

**Kriterium (EN):**

> Mechanisms are implemented that invalidate a session after it has been detected as inactive. The inactivity can be detected by time measurement. In this case, the time interval can be configured by the cloud service provider or - if technically possible - by the cloud service customer.

**Deutsche Übersetzung:**

Es sind Mechanismen implementiert, die eine Session ungültig machen, nachdem sie als inaktiv erkannt wurde. Die Inaktivität kann durch Zeitmessung erkannt werden. In diesem Fall kann das Zeitintervall vom Cloud-Diensteanbieter oder — sofern technisch möglich — vom Cloud-Dienstkunden konfiguriert werden.

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Sichere Session-Tokens**: cryptographisch signierte JWTs oder Server-Side-Sessions mit CSPRNG-generierten IDs; HttpOnly + Secure + SameSite=Strict Cookies; Anti-CSRF-Tokens für State-Changing-Operations
- **Session-Timeouts**: Standard-Timeout 15 Minuten Inaktivität für Krankenhaus-User (Arbeitsplätze in offenen Bereichen), 60 Minuten für Admin-Nutzer via Client-Zertifikat; Absolute-Session-Length 8 Stunden; sliding-window mit Warning 2 Min vor Timeout
- **Angriffs-Schutz**: Session-Fixation prevented (neue ID nach Login), Session-Regeneration nach Privilege-Escalation, Concurrent-Session-Limit konfigurierbar, Detection von impossible-travel (Login Berlin + 5 Min später Login São Paulo → Logout beide Sessions + Alert)
- **Kunden-Konfiguration**: Krankenhaus-IT kann Timeout-Werte pro Rolle einstellen (Notaufnahme: 30 Min inaktiv, damit lifesaving-Zugriff bleibt; Abrechnung: 5 Min); im Portal einstellbar; Default sicher

## Verwandte Kriterien

- [[PSS-05 Authentication Mechanisms]]
- [[PSS-07 Confidentiality of Authentication Information]]
- [[IAM-08 Authentication Mechanisms]]
- [[CRY-01 Policy for the Use of Cryptographic Mechanisms]]
- [[COS-04 Cryptographic Protection of Communications]]
