# macOS security pilot — 12 October 2026

## Verified outcome

A single Mac was onboarded to Falcon's Defender for Business service and enrolled in Microsoft Intune using the existing licensed IT Support account. Validation was performed on macOS, not Windows. This record publishes aggregate observations only; device names, serial numbers, account addresses, tenant and device identifiers, raw logs, and onboarding material are excluded.

| Check | Observed outcome | Boundary |
| --- | --- | --- |
| Business Premium inventory | 25 licences, one assigned, 24 available | Does not prove licensing for the whole estate |
| Apple MDM push certificate | Active; expires 16 September 2027 | Renewal remains an operational responsibility |
| Local MDM enrolment | Yes, user approved; Microsoft management server | Manual enrolment, not Automated Device Enrollment |
| Fresh Intune device record | Matches installed profile; macOS 26.7 (25G229); personal ownership | One pilot Mac only |
| Fresh cloud check-in | 12 October 2026, 13:53 Africa/Johannesburg | Replaces historical September evidence |
| Intune overall status | Compliant | Detailed pilot-policy results still require review |
| Company Portal | Identifies current device; In compliance | Current observation after registration recovery |
| Pilot group | Direct membership in Falcon-macOS-Pilot | Existing pilot scope, not an estate-wide rollout |
| Defender version | 101.26072.0017 | Installed version at validation |
| Defender health | Healthy, licensed; no health issues | Local service result |
| Tenant connection | Active organisation matches downloaded onboarding package | Identifiers omitted |
| Protection permissions | Full Disk Access and both security/network extensions enabled | Local permissions verified |
| Real-time protection | Enabled | Local setting verified |
| Service connectivity | Every tested service endpoint returned OK | Connectivity test completed |
| Antivirus test | Virus:DOS/EICAR_Test_File detected and quarantined; test file removed | Harmless EICAR test, not real malware or an EDR test |

See the [sanitised validation record](../samples/DefenderMac.validation.json).

## Enrolment troubleshooting case

The starting Intune record had last checked in on 20 September, while this Mac had no installed management profile. Company Portal checked that historical record, returned an error, and disabled fresh enrolment. The record was matched against local hardware privately before any deletion was proposed.

With explicit practitioner approval, the stale cloud record was deleted. Company Portal recognised the Mac as unmanaged and offered setup. A management profile was installed, but its identifier did not match the current Company Portal enrolment request. The app timed out with “Management profile not found,” despite macOS reporting local MDM enrolment. Installing a replacement directly failed because macOS already had an MDM profile.

With explicit approval, the mismatched local profile was removed. A fresh Microsoft-signed profile was downloaded from the active Company Portal session and installed. Its certificate/device identifier matched both Company Portal's current lookup and the fresh Intune device record. Company Portal then stalled on a post-enrolment registration operation; restarting the app and restoring the authenticated session completed the status view. The current device is now identified as In compliance, with a fresh cloud check-in.

The old cloud record and mismatched local profile were removed only after separate confirmations. Local administrator credentials were entered by the practitioner, never collected in chat. No Mac reset or wipe was performed.

## Defender deployment and validation

The installation package came from the signed-in Defender portal. macOS trust services verified the Microsoft Corporation developer signature and Apple notarization. The practitioner reviewed licence terms and authenticated locally for installation.

Full Disk Access and both Microsoft Defender system extensions were enabled. The portal's macOS local-script onboarding package was extracted into a private folder outside this repository. The practitioner ran it with local administrator privileges. The script writes Defender onboarding configuration; it does not enrol the Mac in Intune.

Post-onboarding health checks returned healthy and licensed, with real-time protection and Full Disk Access enabled. The active Defender organisation matched the downloaded package. All service connectivity checks passed. Microsoft's documented EICAR antivirus test generated a quarantined detection and the test file was removed by protection.

## Outstanding validation

- The detailed Intune report initially showed only the default compliance policy with an error. A sync was requested. Verify the named pilot policy and any configuration profiles before claiming their settings are successfully enforced.
- Defender device inventory redirects to the unfinished Business setup wizard. The selected-Windows-device route has no eligible devices. No automatic all-Windows onboarding or extra security roles were enabled to bypass that gate. Defender cloud inventory and alert delivery remain unverified.
- Run and validate an EDR-specific detection test separately from the antivirus test.
- Security defaults are verified enabled, and no Conditional Access policies were configured. The [migration design](conditional-access-migration.md) is prepared; licence scope, recovery access and the replacement protections must be reviewed before transitioning. Successful Authenticator approval is evidence of one MFA sign-in, not proof of a tenant-wide MFA policy rollout.
- Complete handover and decide the licensed scope of any broader rollout.

## Microsoft references

- [Business Premium security FAQ](https://learn.microsoft.com/en-us/microsoft-365/admin/security-and-compliance/m365bp-security-faq)
- [Enrol a Mac with Company Portal](https://learn.microsoft.com/en-us/intune/user-help/enrollment/enroll-company-portal-macos)
- [Defender for Business device onboarding](https://learn.microsoft.com/en-us/defender-business/mdb-onboard-devices)
- [Defender macOS prerequisites](https://learn.microsoft.com/en-us/defender-endpoint/microsoft-defender-endpoint-mac-prerequisites)
- [Antivirus detection validation](https://learn.microsoft.com/en-us/defender-endpoint/validate-antimalware)

**Status: Defender local protection and fresh Intune enrolment verified; detailed policy, Defender cloud and Conditional Access validation pending.**

The final detailed-policy recheck was blocked by a blank Intune administration page after navigation and reload. The earlier detailed default-policy error is retained as unresolved; the general Compliant label does not establish successful application of the named pilot policy.
