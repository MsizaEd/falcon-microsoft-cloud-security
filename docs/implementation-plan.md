# Implementation plan

## Phase 1: Discovery and readiness

- Confirm licensing and platform prerequisites.
- Inventory supported devices, operating-system versions, ownership, and business-critical applications.
- Identify administrative roles, user groups, pilot users, and exclusions.
- Record the current identity, endpoint, and security posture.
- Agree on rollback, support, and escalation procedures.

## Phase 2: Microsoft Entra ID foundation

- Review users, groups, administrative roles, and stale accounts.
- Create groups for pilot and production deployment rings.
- Enable multifactor authentication using an agreed migration approach.
- Configure Conditional Access policies in report-only mode first.
- Protect emergency-access accounts and test account-recovery procedures.

## Phase 3: Intune enrolment and configuration

- Configure enrolment restrictions and device categories where required.
- Enrol pilot Windows devices.
- Apply configuration profiles, security baselines, update rings, and application assignments.
- Define compliance rules and remediation grace periods.
- Review conflicts, deployment errors, and user impact before expansion.

## Phase 4: Defender for Endpoint

- Confirm connectivity and supported onboarding method.
- Onboard the pilot device group.
- Validate antivirus, firewall, endpoint detection and response, and attack-surface-reduction settings.
- Confirm alerts, device timeline data, investigation actions, and security recommendations.
- Document triage and incident-response ownership.

## Phase 5: Access enforcement

- Review report-only Conditional Access results.
- Resolve unexpected blocks and define justified exclusions.
- Enable policies in controlled stages.
- Monitor sign-in logs, device compliance, and support tickets.

## Phase 6: Production rollout and handover

- Expand deployment by device or user ring.
- Track enrolment, compliance, endpoint risk, application deployment, and update status.
- Complete technical acceptance tests.
- Hand over operating procedures, known issues, support contacts, and rollback guidance.
