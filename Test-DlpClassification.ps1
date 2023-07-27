Function Test-DlpClassification {
    <#
    .SYNOPSIS
        This is a basic overview of what the script is used for..
     
     
    .NOTES
        Name: Get-Escalation
        Author: pacronan
        Version: 1.0
        DateCreated: 2023-Jul-27
     
     
    .EXAMPLE
        Get-Something -UserPrincipalName "username@thesysadminchannel.com"
     
     
    .LINK
    #>
     
        [CmdletBinding()]
        param (
            [string]$policyRuleId,
            [string]$machineId,
            [string]$SHA1,
            [string]$SITs,#TODO this should be a list of the sits i am leaving it as a singlular string for testing
            [bool]$encryptionStatus,
            [string]$Label,
            [string]$UPN
        )
    
        # Your logic for processing the parameters and fetching data goes here
        # For demonstration purposes, let's just output the provided parameters
        Write-Output "policyRuleId: $policyRuleId"
        Write-Output "machineId: $machineId"
        Write-Output "SHA1: $SHA1"
        Write-Output "SITs: $SITs"
        Write-Output "encryptionStatus: $encryptionStatus"
        Write-Output "Labels: $Labels"
        Write-Output "UPN: $UPN"
    }
    
    # Example usage of the function:
    # Troubleshoot-Dlp -policyRuleId "123456" -machineId "ABC123" -SHA1 "A1B2C3" -SITs 5 -encryptionStatus $true -Labels @("Label1", "Label2") -UPN "user@example.com"
    
