---
title: Datenschutz & Rechtliche Vorgaben
project: "[[CGM Health BI]]"
bereich: sicherheit
status: entwurf
tags:
  - pflichtenheft
  - datenschutz
  - legal
  - dsgvo
  - compliance
---

# Datenschutz & Rechtliche Vorgaben

## Pseudonymisierung / Anonymisierung

Personenbezogene Daten (v. a. Personal-/Patientendaten) können in Analysen **pseudonymisiert oder anonymisiert** dargestellt werden, sodass Auswertungen ohne unnötigen Personenbezug möglich sind.

## Gesundheitsdaten (DSGVO Art. 9)

Der Umgang mit Gesundheitsdaten (**besondere Kategorie nach DSGVO Art. 9**) erfüllt die rechtlichen Vorgaben – inkl. Rechtsgrundlage, Einwilligung und Zweckbindung.

## C5-Zertifizierung bei Cloud-Betrieb

Bei Cloud-Betrieb muss eine **C5-Zertifizierung** möglich sein – vor allem dann, wenn die Cloud durch den Anbieter selbst bereitgestellt wird (z. B. Qlik-Cloud).

> [!important] Voraussetzung
> Ohne C5-Nachweis dürfen im deutschen Gesundheitswesen keine Gesundheitsdaten in der Cloud verarbeitet werden; die C5-Fähigkeit ist damit **Voraussetzung für jeden Cloud-/SaaS-Einsatz** mit Patienten-/Gesundheitsdaten. (Vgl. [[Betrieb, Performance & Compliance#Compliance & Zertifizierung]].)

## EU-/DE-Hosting

Cloud-/SaaS-Betrieb und Datenhaltung erfolgen **innerhalb der EU, bestenfalls in Deutschland**. Gründe:

- **(a) Datenschutz** – Gesundheitsdaten (DSGVO Art. 9) unterliegen EU-Recht; ein Drittlandtransfer (v. a. USA) ist zu vermeiden, um Rechtsunsicherheiten (**Schrems II**) und zusätzliche Garantien zu umgehen.
- **(b) C5-Zertifizierung** – der deutsche BSI-C5-Standard und die Erwartung von Klinik-IT/Datenschutzbeauftragten setzen faktisch EU-/DE-Rechenzentren voraus.
- **(c) KI-Nutzung** – für KI-Funktionen werden KI-Modelle/-Dienste in der EU genutzt bzw. gehostet; keine unkontrollierte Übermittlung sensibler Daten an Modelle außerhalb der EU. Dies gilt auch für vor-/nachgelagerte Verarbeitung (Sub-Dienstleister, Support-Zugriffe). Siehe [[KI-Anforderungen & Governance]].
