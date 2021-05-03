## Event Logging ##

# Print a list of available eventlogs
Get-EventLog -List

# Set up a new event log ( name it however you like )
New-EventLog -LogName "LoggingLumberjack" -Source "eventlogging.ps1"

# Limit the eventlog size and retention days
Limit-EventLog -LogName "LoggingLumberjack" -RetentionDays 1 -MaximumSize 64KB -OverflowAction OverwriteOlder

# Write 100 logs to it
for ($i=0; $i -ne 100; $i++) {
    Write-EventLog -LogName "LoggingLumberjack" -Source "eventlogging.ps1" -EventId 418 -Message "Heave ho!"
}
# Print the list of available eventlogs again
Get-EventLog -List

# Export the event log to a file
Get-EventLog LoggingLumberjack | Export-Csv C:\Users\DSU\Documents\LoggingLumberjack.csv

# Clear the event log
Clear-EventLog "LoggingLumberjack"
