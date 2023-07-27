Function Test-DlpClassification {
    <#
    .SYNOPSIS
        This is a basic overview of what the script is used for..
     
     
    .NOTES
        Name: Test-DlpClassification
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
        if ($policyRuleId -eq "6abb5bf8-7ae6-4f97-9c9a-9fcb60c0f230:6b2c3c43-f1fd-4949-97e8-f93e3c3a91e4"){
            Write-Host "The default Policy is asscociated with this file this may indicate a classification issue"

            if ($Label -eq "") {
                # Code to be executed if $Label is empty
                Write-Host "DLP did not find any Label associated with this file"
                if ($SITs -eq "") {
                    # Code to be executed if $SITs is empty
                    Write-Host "DLP did not find any SITs associated with this file."
                    
                }
                else {
                    # Code to be executed if $SITs is not empty
                    Write-Host "The following SITs $SITs were found in the file please confirm they are a condition for the expected policy."
                }
            }
            else {
                # Code to be executed if $Label is not empty
                Write-Host "The Label $Label is associated with this file please validate it is associated with the expected Policy."
            }
        }
        else {

        }

    
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
    #Test-DlpClassification -policyRuleId "6abb5bf8-7ae6-4f97-9c9a-9fcb60c0f230:6b2c3c43-f1fd-4949-97e8-f93e3c3a91e4" -machineId "ABC123" -SHA1 "A1B2C3" -SITs "ssn" -encryptionStatus $false -Label "Label1" -UPN "user@example.com"
    
