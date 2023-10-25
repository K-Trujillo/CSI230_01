# First powershell script

# Get directory to export to
cd C:\Users\champuser\CSI230_01\week_8
$exportlocation = "C:\Users\champuser\CSI230_01\week_8\log.csv"

# Clear screen
clear

# List available logs
Get-EventLog -List

# Prompt user to select log
$readlog = Read-Host -Prompt "Please select a log"

Get-EventLog -LogName $readlog -Newest 5 | Export-Csv -NoTypeInformation -Path $exportlocation