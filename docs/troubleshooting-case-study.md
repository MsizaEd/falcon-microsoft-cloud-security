# Troubleshooting case: reconciling portfolio claims with tenant evidence

## Case type

Evidence and configuration review. This is a real portfolio-validation case, not an endpoint incident.

## Problem

The original repository described Microsoft Intune, Defender for Endpoint, Entra ID, and Conditional Access as a completed deployment. Its supporting files were design templates, the validation checklist was unchecked, and no test output was included. A recruiter could not distinguish executed work from implementation knowledge.

## Investigation

The live Microsoft 365 environment and its cloud-hosted asset inventory were reviewed in read-only mode.

Checks included:

1. Confirming the current identity count and account types.
2. Reviewing user licence assignments and tenant products.
3. Checking for visible Intune and Defender for Endpoint entitlements.
4. Reviewing the Microsoft 365 service-request history.
5. Inspecting the structure of the company asset inventory.
6. Comparing the available evidence with every claim in the repository.

## Diagnosis

- The tenant and its identity/licence administration were real and observable.
- Approximately 45 identities and 27 Business Basic assignments were visible.
- A company-device asset inventory existed.
- The reviewed product list did not show Intune or Defender for Endpoint licensing.
- No endpoint deployment reports, policy results, Defender alerts, or real Windows script output were available.
- The service-request history contained no ticket suitable for a troubleshooting case.

The issue was therefore a **classification problem**: demonstration material had been written in a way that could be interpreted as production evidence.

## Corrective action

- Reclassified every repository artefact as verified current state, practitioner statement, demonstration, or planned/unverified.
- Replaced broad deployment claims with the aggregate facts supported by the live tenant.
- Marked the architecture, implementation plan, checklist, PowerShell script, and sample output as demonstrations.
- Added an explicit evidence boundary and a list of evidence required for the next revision.
- Kept all personal, tenant-specific, device-identifying, and billing information out of GitHub.

No tenant configuration or subscription was changed during this review.

## Validation

The revised repository can now be checked against a direct evidence-to-claim table. Intune, Defender, Conditional Access, Windows testing, Level 3 support, and advanced PowerShell are no longer presented as verified outcomes.

## Remaining action

Add a separate, real endpoint troubleshooting case after a Windows device is tested or a sanitised production incident record is available. That case must include the observed symptom, diagnostic data, change performed, and post-change validation.
