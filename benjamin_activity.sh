#!/bin/bash
read -p "Enter a directory name: " dir
#create files named submission 1 and 2
f1="submission1.txt"
f2="submission2.txt"
#create conditional statements if the directory already exist
if [ -d "$dir" ]; then 
	echo "create the two files"
	touch $dir/{$f1,$f2}
#Create conditional statements if directory does not exist
elif [ ! -d "$dir" ]; then
	echo "create the directory name by the user "
	mkdir $dir
	touch $dir/{$f1,$f2}
	echo "two files created"
#If none of the conditions are met print and error statement
else 
	echo "Invalid name: Find error"
fi
