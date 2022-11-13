#Export policies
secedit /export /cfg c:\secpol.cfg

#Get the content of policies data (work with it) and replace the value. Out file is to create policiise files
(gc C:\secpol.cfg).replace("LockoutBadCount = 0", "LockoutBadCount = 3") | Out-File C:\secpol.cfg

#import modified policies
secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
#rm -force c:\secpol.cfg -confirm:$false
