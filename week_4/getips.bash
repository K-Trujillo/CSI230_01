# Create a bash script that would list IP addresses
# that are recorded in this file: access.log
# Update your script to count the IP addresses and
# only print unique entries

accessFile="/var/log/apache2/access.log"
dateAndTime=$(date +"%d/%b/%Y")

# echo "${dateAndTime}"

#function accessAndReadIps()
#{
       cat "${accessFile}" | grep "${dateAndTime}" | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | sort | uniq -c
      #  cat "${accessFile}"
#}

#accessAndReadIps()
