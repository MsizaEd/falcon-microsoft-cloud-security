# Conditional Access migration decision

## Current state observed on 12 October 2026

- Security defaults are enabled in Microsoft Entra ID.
- The Conditional Access policy page showed the first-policy setup screen with no configured policies.
- The tenant has an Entra ID Premium P1 entitlement through Business Premium, but only the pilot account's Business Premium assignment was verified.
- A successful Authenticator approval was observed for the pilot account. This does not establish a custom MFA policy deployment.

Security defaults were retained. No Conditional Access policy, exclusion, emergency-access account, or new role was created in this session.

## Proposed first pilot policy

| Field | Proposed value |
| --- | --- |
| Name | Falcon macOS Pilot — MFA and compliant device |
| Included users | Existing licensed IT Support pilot user only; resolve privately in the portal |
| Target resources | All resources |
| Device platforms | macOS only |
| Grant controls | Require MFA and require device marked compliant; require all selected controls |
| Initial state | Report-only |
| Enforcement gate | Validated sign-in reports, intended compliant/non-compliant outcomes, and tested recovery access |

This table is a proposed design, not a saved or enforced policy. A report-only result does not enforce access restrictions.

## Required migration work

1. Confirm licensing for every user benefiting from the replacement policies. The pilot entitlement alone does not establish tenant-wide coverage.
2. Identify and validate emergency-access procedures privately. Creating credentials or granting privileged access requires specific authorization and practitioner participation.
3. Prepare replacement MFA and legacy-authentication protections for the tenant, plus the scoped device-compliance pilot. Inventory existing per-user authentication controls and application dependencies first.
4. Review the complete replacement policy set before disabling security defaults. The change affects the existing identity protection of the organisation, not only the pilot Mac.
5. Obtain explicit approval for the security-defaults transition and any privileged-access changes at action time.
6. Validate expected sign-ins, failures and recovery paths. Enable access enforcement only after those results are reviewed.

## References

- [Microsoft security-defaults guidance](https://learn.microsoft.com/en-us/entra/fundamentals/security-defaults)
- [Conditional Access overview and licensing](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview)
- [Device-based Conditional Access with Intune](https://learn.microsoft.com/en-us/intune/device-security/conditional-access-integration/device-based-policies)

**Status: design prepared; security defaults retained; Conditional Access not deployed.**
