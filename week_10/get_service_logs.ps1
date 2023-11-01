# List all services running
# Provide a prompt that allows the user to select if they want to view all services
# runnning, or stopped services
# Provide an option to quit the program

# Service Types
$services = @("All", "Stopped", "Running")

# List registered services
function list_all_services() 
{
    cls
    $listServices = Get-Service | Sort-Object status
    $listServices | Out-Host

    $arrServices = @()

    foreach ($tempServices in $listServices)
    {
        $arrServices += $tempServices
    }

    # $arrServices[0]
}
# list_all_services

# Functions for listing services
function list_stopped_services()
{
    cls
    $listServices = Get-Service | Where-Object {$_.Status -eq $services[1]}
    $listServices | Out-Host

    $arrServices = @()

    foreach ($tempServices in $listServices)
    {
        $arrServices += $tempServices
    }

    # $arrServices[0]
}

function list_running_services()
{
    $listServices = Get-Service | Where-Object {$_.Status -eq $services[2]}
    $listServices | Out-Host

    $arrServices = @()

    foreach ($tempServices in $listServices)
    {
        $arrServices += $tempServices
    }

    # $arrServices[0]
}

# Prompt user
function prompt_services()
{
    cls
    "Services: " + $services[2..0]
    $readServices = Read-Host -Prompt "Please enter the type of service you wish to list, or enter 'q' to exit the program. Services: "

    view_services -searchServices $readServices
}

# 1. Check that user-specified only 'all', 'stopped' or 'running' as a value
# 2. Send the user back to the prompt if they entered an invalid value
# Quit Program
function view_services()
{
    Param([string]$searchServices)

    cls
    if ($searchServices -match "^[qQ]$")
    {
        "Terminating script..."
        break
    }

    if ($searchServices -eq $services[0])
    {
        list_all_services
    }

    if ($searchServices -eq $services[1])
    {
        list_stopped_services
    }

    if ($searchServices -eq $services[2])
    {
        list_running_services
    }

    Read-Host -Prompt "Press enter when you are done"

    # Go back
    prompt_services
}

prompt_services