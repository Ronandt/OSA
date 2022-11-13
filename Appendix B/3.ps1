$user = "student"
#Delete account
$host_name = hostname
$target = [ADSI]"WinNT://$host_name"
$deleted_user = $target.Delete("user", $user)
Write-Host "$User deleted"

#Disable

Disable-LocalUser -Name $user
Get-LocalUser -Name $user
