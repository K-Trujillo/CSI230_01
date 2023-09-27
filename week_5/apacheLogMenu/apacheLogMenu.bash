# Apache Log Menu

# Part 1 - Functions

# List IPs
accessFile="$(var/log/apache2/access.log)"
logIpFile="$(logIp.txt)"
i=1
ipAddress=0
blacklistFile="$(blacklisted.txt)"

touch logIpFile
function accessAndReadIps()
{
	if [[-f "${accessFIle}"]]
	then
		while read -r line
		do
			local line=logIpFile
			echo "${ipAddress}" >> logIpFile
			# If there are duplicate IP addresses, write number of how many times they show up
			if [["${line}"=="${ipAddress}"]]
			then
				echo "${i} ${ipAddress}" >> logIpFile
				#
		done
}

# Visitors
function getVistitors()
{

}

function displayVisitors()
{

}

# Bad Clients
function getBadClients()
{

}

function blockBadClients()
{

}

# Block Rules
function resetBlockRules()
{

}

# Histogram
function showVisitHistogram()
{

}



# Part 2- Menu

# Create menu with list of options
# Menu goes from 1-7, with everything up to 6 running
# 7 terminates the program
# If any other option is provided, prompt an error

# 1 - Number of Visitors
# 2 - Display of Visitors
# 3 - Show Bad Visits
# 4 - Block Bad Visits
# 5 - Reset Block Rules
# 6 - Show Vist Histogram
# 7 - Exit

function displayMenu()
{

}
