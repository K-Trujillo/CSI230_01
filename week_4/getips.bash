# Create a bash script that would list IP addresses
# that are recorded in this file: access.log
# Update your script to count the IP addresses and
# only print unique entries

accessFile = "$(var/log/apache2/access.log)"

function accessAndReadIps()
{
	if [[-f "${accessFile}"]]
	then
        	while -r line
        	do
                	# Read and get ips here
        	done
}
