#! /bin/bash

# Deliverable 1
# Report on Access Log
# Obtain Apache2 logs and merge them together in working directory
logFileDir="/var/log/apache2/"

listLogs=$(ls "${logFileDir}" | grep "access.log" | grep -v "gz" | grep -v "other_vhosts")

# Refresh
:> accesslogs.txt

for i in ${listLogs}
do
	cat "${logFileDir}${i}" >> accesslogs.txt
done

# Print out merged logs
echo "Deliverable 1"
echo "-------------"
cat accesslogs.txt
echo "-------------"


# Deliverable 2
# Create HTML page from your txt file that includes the following headers and tables
# IP, Time, Requested Page, UserAgent
htmlPage="access.html"

echo "<html>" > "${htmlPage}"
echo "<body>" > "${htmlPage}"
echo "<table>" > "${htmlPage}"
echo "<tr>" > "${htmlPage}"
echo "<td> IP </td>" > "${htmlPage}"
echo "<td> Time </td>" > "${htmlPage}"
echo "<td> Requested Page </td>" > "${htmlPage}"
echo "<td> User Agent </td>" > "${htmlPage}"
# Table loop

# End loop
echo "</table>" > "${htmlPage}"
echo "</body>" > "${htmlPage}"
echo "<html>" > "${htmlPage}"

