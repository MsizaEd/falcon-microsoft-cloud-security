# Active-device rollout status

Observed 12 October 2026 in Microsoft Entra. This is a readiness assessment, not evidence that additional devices were enrolled.

## Scope and findings

“Active” means a directory Activity date on or after 12 September 2026. Directory activity does not prove that a device is currently online. The inventory was sorted by Activity descending, and the observed rows extended beyond the cutoff.

| Platform / record | Records in scope | Observed MDM state |
|---|---:|---|
| Windows | 16 | None |
| Android | 1 | None |
| Current macOS pilot | 1 | Microsoft Intune |
| Older macOS record | 1 | Microsoft Intune; duplicate reconciliation pending |

The older Mac directory record is not counted as a confirmed second physical Mac. The 17 Windows/Android records represent the next enrolment candidates. Entra registration alone does not establish Intune management. Their owner display names map to 15 distinct directory owners; the actual account assignments and shared-device arrangements still need verification.

The IT Support user already has Business Premium and is the first additional-device candidate. Other owners require an Intune-capable licence review. The tenant previously showed 24 unassigned Business Premium seats; available capacity does not mean that users have been licensed.

## Next deployment steps

1. Confirm device ownership, actual user accounts and access to each candidate.
2. Check licensing, platform restrictions, device limits and Windows automatic-enrolment scope. Configuration pages failed to load during the follow-up; these checks remain pending.
3. Enrol the accessible Windows pilot through Microsoft Company Portal using its licensed work account. Preserve its current account connection and data; do not reset, wipe or change join type as a shortcut.
4. Verify the new Intune record, recent check-in, primary user, ownership, detailed compliance results, configuration deployment and Defender reporting before expanding.
5. Check Managed Google Play readiness before Android Enterprise enrolment. Choose the enrolment method after confirming ownership; corporate methods that require a reset need separate authorisation.

Several Windows records report older OS builds. Confirm edition, servicing eligibility and required updates on the devices before claiming a supported security baseline.

No additional Windows or Android device has been enrolled by this assessment. The device names, owner roster, account identifiers and enrolment materials remain private and are not published in this repository.

## Microsoft guidance

- [Windows enrolment deployment guide](https://learn.microsoft.com/en-us/intune/intune-service/fundamentals/deployment-guide-enrollment-windows)
- [Android deployment guide](https://learn.microsoft.com/en-us/mem/intune/fundamentals/deployment-guide-platform-android)
- [Verified macOS pilot status](macos-pilot-status.md)
