#! /bin/bash

# Params
firstArg=$1
secondArg=$2

# echo "${firstArg}"
# echo "${secondArg}"

# Help func
Help(){
echo "-------HELP--------"
echo "-------------------"
echo "Script: $0 | Options: [-c, -d]"
echo "Accepts: 2 args"
echo -n "Arg 1: "
echo "[-c] Count user logins"
echo -n "Arg 2: "
echo "[-d] List disabled accounts"
echo "-------------------"
}

if [[ ! ${#} -eq 1 ]]
then
	Help
	exit;
fi

OptionC()
{
	echo "Option -c"
	# Count user logins
	local userFile="/etc/passwd"
	local username="usr.txt"
	local user="$(cat "${username}")"
	totalLogins="$(cat "${userFile}" | last "${username}" | wc -l)"

	echo "-------------------------------"
	echo "User [${user}] logged in: ${totalLogins} times"
	echo "-------------------------------"
}

OptionD()
{
	echo "Option -d"
	# List disabled accounts
	local passwordFile="/etc/shadow"
	
	echo "-------------------------------"
	echo "Listing all disabled accounts: "
	cat "${passwordFile}" | grep "*"
	echo "-------------------------------"
}

while getopts ":cd" option;
do
	case $option in
	c) # Do opt C
	OptionC
	;;
	d) # Do opt D
	OptionD
	;;
	esac
done

# Main func

