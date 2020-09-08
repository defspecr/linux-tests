#!/bin/bash

if test -e result 
then 
	rm -f result
fi
awk '/([0-9]{1,3}\.){3}[0-9]{1,3}/{print $1}' proxy/logs/access.log | sort -n | uniq >> result
