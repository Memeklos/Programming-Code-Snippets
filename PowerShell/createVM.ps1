# Connect to the server
Connect-VIServer -Server 192.168.1.10 -Protocol https -User root -Password Password1!
Connect-VIServer Server -Credential $myCredentialsObject -Port 1234
Connect-VIServer "Server" -SessionId $sessionId
Connect-VIServer Server
