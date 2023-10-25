# Part 1 - Networking

# Get IPv4 Address from Ethernet Interface
# (Get-NetIPAddress -AddressFamily IPv4 | where InterfaceAlias -ilike "Ethernet[0-9]").IPAddress

# Get IPv4 PrefixLength from Ethernet Interface
# (Get-NetIPAddress -AddressFamily IPv4 | where InterfaceAlias -ilike "Ethernet[0-9]").PrefixLength

# Show me what classes there are of Win32 library that starts with net
# Sort alphabetically
# Get-WmiObject -List | where { $_.Name -ilike "Win32_[n][e][t]*" } | Sort-Object

# Get dhcp server ip
# Hide the table header
Get-CimInstance Win32_Account | Get-Member

# Get dns server ips and display only the first one

# Part 2 - Directory Listings