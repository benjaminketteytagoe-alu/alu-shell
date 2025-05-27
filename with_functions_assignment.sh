#!/bin/bash
#create a script with functions
#creating a directory with a function
with_functions(){
	dir="dir_name"
	config_file="config.txt"
	#let's now check for directory name
	if [ -d "$dir" ]; then
		echo "No directory name created"
#let's create a directory if not not created
	elif [ ! -d "$dir" ]; then
		mkdir -p $dir
		touch "$dir/$config_file"
		echo "file created inside directory"
	else 
		echo "Directory is created and file config is inside it"

	fi
}
with_functions
