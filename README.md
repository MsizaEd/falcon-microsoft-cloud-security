# Microsoft Cloud Administration & Endpoint Security Portfolio

A sanitised portfolio case study based on Microsoft cloud administration work for Falcon Projects, together with clearly labelled endpoint-security implementation examples.

> No names, email addresses, tenant identifiers, device serial numbers, credentials, screenshots, or production exports are included.

## Evidence status

| Status | Meaning |
| --- | --- |
| **Verified current state** | Observed in the live Microsoft 365 tenant or its cloud-hosted asset inventory on 16 September 2026 |
| **Completed — practitioner statement** | Work described by the practitioner but not attributable from the available portal history |
| **Demonstration** | Reusable design, checklist, or code example; not evidence that it ran in production |
| **Planned / unverified** | Requires tenant records, licensing, deployment reports, or test output before it can be presented as completed |

## Verified current state

The evidence review confirmed:

- A live Microsoft 365 tenant containing approximately **45 user identities**.
- Approximately **27 Microsoft 365 Business Basic assignments** visible in the tenant.
- A mixture of named, role-based, shared, external, licensed, and unlicensed identities.
- Administrative access to user, licence, product, and service-request views.
- A maintained cloud-hosted inventory linking organisational roles to company-device allocation and asset information.
- Individual Exchange Online and Planner/Project licensing in addition to the main Business Basic estate.

The public figures are deliberately rounded or aggregated. See the [sanitised evidence summary](docs/evidence-summary.md).

## Completed — practitioner statement

The following reflects hands-on responsibilities described by the practitioner. The live tenant confirms the environment exists, but the available views do not provide historical change attribution:

- Microsoft 365 user and licence administration.
- Creation and maintenance of role-based and shared organisational identities.
- Maintenance of an employee and company-device asset inventory.
- Day-to-day access and account support for the Falcon Projects environment.

## Demonstration material

These artefacts demonstrate implementation knowledge; they are not presented as production exports:

- A reference architecture connecting Entra ID, Intune, Defender for Endpoint, compliance, and Conditional Access.
- A phased endpoint-security implementation plan.
- A reusable deployment validation checklist.
- A read-only PowerShell endpoint-readiness script.
- A synthetic example showing the script's intended report structure.

## Planned / not yet verified

The evidence reviewed for this repository did **not** establish:

- Microsoft Intune enrolment or compliance-policy deployment counts.
- Microsoft Defender for Endpoint onboarding, alert, or remediation results.
- Conditional Access or MFA policy implementation results.
- Execution of the readiness script on a Windows endpoint.
- Level 3 support responsibility or advanced PowerShell expertise.

These areas remain portfolio demonstrations until sanitised production evidence or a controlled Windows test is added.

## Solution overview

```mermaid
flowchart LR
    U[Users] --> E[Microsoft Entra ID]
    D[Windows devices] --> I[Microsoft Intune]
    I --> C[Compliance and configuration policies]
    D --> M[Microsoft Defender for Endpoint]
    M --> S[Security alerts and remediation]
    C --> A[Conditional Access]
    E --> A
    A --> R[Approved access to Microsoft 365]
```

The diagram above is a **demonstration architecture**, not an export of the Falcon Projects tenant.

## Repository contents

| Path | Status | Description |
| --- | --- | --- |
| [Evidence summary](docs/evidence-summary.md) | Verified current state | Sanitised scope, observations, and evidence boundaries |
| [Troubleshooting case study](docs/troubleshooting-case-study.md) | Verified portfolio audit | Real evidence mismatch, diagnosis, corrective action, and validation |
| [Architecture](docs/architecture.md) | Demonstration | Logical identity and endpoint-security architecture |
| [Implementation plan](docs/implementation-plan.md) | Demonstration | Phased deployment approach |
| [Validation checklist](docs/validation-checklist.md) | Demonstration | Acceptance template, not a completed test record |
| [Readiness script](scripts/Get-EndpointSecurityReadiness.ps1) | Demonstration | Read-only Windows endpoint readiness report |
| [Synthetic report](samples/EndpointSecurityReadiness.sample.json) | Demonstration | Example schema; not produced by a Windows execution |

## Skills represented

Microsoft 365 administration · Identity lifecycle support · Licence administration · Asset inventory · Microsoft Entra ID concepts · Microsoft Intune concepts · Microsoft Defender for Endpoint concepts · Conditional Access concepts · PowerShell · Technical documentation

## Evidence needed for the next revision

To promote the endpoint-security sections from demonstration to completed work, the repository needs:

1. A sanitised Intune device or policy summary.
2. A sanitised Defender device-onboarding or alert/remediation result.
3. A Conditional Access or MFA result with tenant identifiers removed.
4. A real Windows execution of the readiness script with device-identifying values removed.
5. A completed endpoint troubleshooting case with the issue, diagnosis, change, and validation result.
