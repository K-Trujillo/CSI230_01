# Intruder bash script
# Access IP address 20 times in a loop
# Disable the output & instead print a counter that informs
# the intruder how many times the website was accessed

function accessIpAddr()
{
	local iteration=20
	for ((i=1; i<=iteration; i++));
        do
	local pingIpAddr="$(curl 192.168.3.135/helloworld.html)"
	local output="Address accessed: ${i} times"
	echo "${output}"
	done
	return 0
}

output="$(accessIpAddr)"

echo "${output}"
