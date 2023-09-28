# /bin/bash
# This is a program that returns my own IP address

p=$(ip addr | grep "inet" | grep -v "inet6" | grep "brd")

echo "${p}" | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\/[0-9]{1,2}"
