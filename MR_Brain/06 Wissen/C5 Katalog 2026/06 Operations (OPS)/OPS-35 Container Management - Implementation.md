---
title: OPS-35 Container Management - Implementation
project: "[[C5 Katalog 2026]]"
c5-id: OPS-35
c5-area: OPS
c5-type: Kriterium
c5-version: "2026 v1.0.1"
status: unbewertet
tags:
  - c5
  - c5/kriterium
  - c5/ops
aliases:
  - OPS-35
---

# OPS-35 · Container Management — Implementation

> [!info] Kontext
> **Bereich:** Operations (OPS) · **Kriterium-ID:** OPS-35 · **Unterkriterien:** 1 (1 Basic)

## Unterkriterien

### OPS-35.01B — Basic

**Kriterium (EN):**

> The cloud service provider designs, implements and maintains technical and organisational measures for the planning and management of containers along their life cycle according to the container management policies and procedures (cf. OPS-34).

**Deutsche Übersetzung:**

Der Cloud-Diensteanbieter konzipiert, implementiert und pflegt technische und organisatorische Maßnahmen zur Planung und Verwaltung von Containern entlang ihres Lebenszyklus gemäß den Container-Management-Richtlinien und -Verfahren (vgl. [[OPS-34 Container Management - Policies and Procedures|OPS-34]]).

## Umsetzungsbeispiele

Bezogen auf einen Cloud-Service, der Gesundheitsdaten verarbeitet:

- **Kubernetes-Cluster** in Managed-Service (AKS, EKS, GKE) mit Multi-Tenant-Isolierung (Namespaces + NetworkPolicies + PodSecurityStandards Restricted); RBAC für Service Accounts; Automatic Node-Patching aktiviert
- **CI/CD-Pipeline** (GitHub Actions, GitLab CI, ArgoCD): Base-Image → Dockerfile-Build → Trivy-Scan → SBOM-Generation → Cosign-Sign → Push zu Registry → GitOps-Deploy in Cluster mit Signature-Verification via Sigstore Policy Controller
- **Runtime-Security-Stack** in Produktion: Falco für Behavioral Detection, Sysdig oder Prisma Cloud für Compliance, Cilium für eBPF-basierte NetworkPolicies mit L7-Filterung; alle Alarme in SIEM konsolidiert
- **Continuous Cluster Hardening**: kube-bench + kube-hunter regelmäßig ausführen; CIS-Kubernetes-Benchmark als Ziel; Drift-Detection mit ArgoCD; automatische Remediation via GitOps

## Verwandte Kriterien

- [[OPS-34 Container Management - Policies and Procedures]]
- [[OPS-05 Protection Against Malware - Implementation]]
- [[OPS-26 Managing Vulnerabilities, Incidents and Crashes - System Hardening]]
- [[OPS-30 Separation of Datasets - Policies and Procedures]]
- [[OPS-31 Separation of Datasets - Implementation]]
