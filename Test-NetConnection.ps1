# This script checks to see if a network port is open to a specific address.
# Add this to Config Manager's Scripts and it will prompt for a Hostname/IP and Port when running.
# Results are a one line output for easy reporting back in Config Manager. 
# You can just run this script on its own, but the intention is to be ran from Config Manager in bulk.

# Set parameters for the address and port to check.
Param(
[Parameter(Mandatory=$True)]
[string]$Address,
[Parameter(Mandatory=$True)]
[string]$Port
)

# Runs the command to test the connection
[void]($Results = Test-NetConnection -ComputerName $Address -Port $Port)

Write-Host "Port Open:" $Results.TcpTestSucceeded
