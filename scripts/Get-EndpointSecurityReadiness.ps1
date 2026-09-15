<#
.SYNOPSIS
Creates a read-only endpoint security readiness report for a Windows device.

.DESCRIPTION
Collects basic operating-system, Microsoft Defender Antivirus, firewall, BitLocker,
and Entra join information. The script does not change device configuration and
does not transmit data. Review the generated report before sharing it.

.PARAMETER OutputPath
The JSON file to create. The default is EndpointSecurityReadiness.json in the
current directory.
#>

[CmdletBinding()]
param(
    [Parameter()]
    [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'EndpointSecurityReadiness.json')
)

$ErrorActionPreference = 'Stop'

function Get-SafeValue {
    param(
        [Parameter(Mandatory)]
        [scriptblock]$Operation
    )

    try {
        & $Operation
    }
    catch {
        "Unavailable: $($_.Exception.Message)"
    }
}

$computerInfo = Get-SafeValue { Get-ComputerInfo }
$defenderStatus = Get-SafeValue { Get-MpComputerStatus }
$firewallProfiles = Get-SafeValue {
    Get-NetFirewallProfile | Select-Object Name, Enabled, DefaultInboundAction, DefaultOutboundAction
}
$bitLocker = Get-SafeValue {
    Get-BitLockerVolume | Select-Object MountPoint, VolumeStatus, ProtectionStatus, EncryptionMethod
}
$joinStatus = Get-SafeValue { dsregcmd.exe /status }

$report = [ordered]@{
    GeneratedAtUtc = (Get-Date).ToUniversalTime().ToString('o')
    Device = [ordered]@{
        WindowsProductName = $computerInfo.WindowsProductName
        WindowsVersion = $computerInfo.WindowsVersion
        OsBuildNumber = $computerInfo.OsBuildNumber
    }
    Defender = [ordered]@{
        AntivirusEnabled = $defenderStatus.AntivirusEnabled
        RealTimeProtectionEnabled = $defenderStatus.RealTimeProtectionEnabled
        BehaviorMonitorEnabled = $defenderStatus.BehaviorMonitorEnabled
        IoavProtectionEnabled = $defenderStatus.IoavProtectionEnabled
        AntivirusSignatureLastUpdated = $defenderStatus.AntivirusSignatureLastUpdated
    }
    Firewall = $firewallProfiles
    BitLocker = $bitLocker
    EntraJoinStatus = $joinStatus
}

$report | ConvertTo-Json -Depth 6 | Set-Content -Path $OutputPath -Encoding utf8
Write-Output "Readiness report created: $OutputPath"
