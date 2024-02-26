#!/bin/bash

# loop through files in /etc directory

for  item in /etc/*;
do
# check if the folder is file or directory
if [ -f "$item" ] || [ -d "$item" ];
then
	# print the name of item
	echo -n "$item:"
	
	# "ls -ld " to retrieve the permissions of each file and directory in the /etc directory.
	# by default awk print every line of data from the specified file.$1 taking the first part of each line.
	 
	ls -ld "$item" | awk '{print $1}' 
fi
done
