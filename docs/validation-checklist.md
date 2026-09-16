# Validation checklist

> **Status: Demonstration template.** This checklist has not been executed against the Falcon Projects tenant. Empty boxes mean “not evidenced,” not “failed.” A completed copy should be added only after a controlled validation run.

## Identity and access

- [ ] Users can complete multifactor authentication.
- [ ] Administrative access is restricted to approved roles.
- [ ] Emergency-access accounts are excluded only where justified and are monitored.
- [ ] Conditional Access policies have been reviewed in report-only mode.
- [ ] Expected users can access Microsoft 365 from compliant devices.
- [ ] Access is blocked or challenged in the intended risk scenarios.

## Intune

- [ ] Pilot devices appear in Intune with the correct ownership and primary user.
- [ ] Configuration profiles report successful application.
- [ ] Required applications install successfully.
- [ ] Update rings are assigned to the intended deployment groups.
- [ ] Compliance status reflects the agreed requirements.
- [ ] Non-compliant devices receive the intended notification or remediation action.

## Defender for Endpoint

- [ ] Devices appear in the Defender portal after onboarding.
- [ ] Real-time protection, cloud protection, and tamper protection are enabled as designed.
- [ ] Firewall profiles are active.
- [ ] Endpoint detection and response sensor health is confirmed.
- [ ] A controlled test alert reaches the incident queue.
- [ ] Investigation and response actions are available to the correct roles.

## Handover

- [ ] Deployment groups and exclusions are documented.
- [ ] Policy owners and change-control procedures are recorded.
- [ ] Alert triage and escalation responsibilities are assigned.
- [ ] Rollback and account-recovery procedures have been tested.
- [ ] No credentials, tenant exports, or confidential information are stored in the repository.
