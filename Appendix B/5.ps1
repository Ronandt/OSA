#Export policies
secedit /export /cfg c:\secpol.cfg

#Get the content of policies data (work with it) and replace the value. Out file is to create policiise files
(gc C:\secpol.cfg).replace("PasswordComplexity = 0", "PasswordComplexity = 1").replace("MinimumPasswordLength = 0", "MinimumPasswordLength = 8").replace("MinimumPasswordAge = 0", "MinimumPasswordAge = 1").replace("MaximumPasswordAge = -1", "MaximumPasswordAge = 90") | Out-File C:\secpol.cfg

#import modified policies
secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
#rm -force c:\secpol.cfg -confirm:$false
