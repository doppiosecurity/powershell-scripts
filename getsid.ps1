function Get-CurrentUserSID {
[CmdletBinding()]
param(
)

Add-Type -AssemblyName System.DirectoryServices.AccountManagement
return ([System.DirectoryServices.AccountManagement.UserPrincipal]::Current).SID.Value
  
}