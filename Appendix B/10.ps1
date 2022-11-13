$services = "Spooler", "BthAvctpSvc", "bthserv", "MapsBroker", "wisvc"
$services.foreach({
Get-Service "Spooler" | Stop-Service -PassThru | Set-Service -StartupType Disabled
#Passthru is used to return an object if the cmdlet does not
})


Get-Service
