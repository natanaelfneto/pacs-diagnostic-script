#!/bin/bash
# Function to output diagnose for java package
function diagnose_java () {
	this_pkg="java";
	#java commnad line
	if [[ `command -v java` ]]; then
		command="OK";
	else
		command="MISSING";
	fi;
	#java directory
	if [[ -d $(dirname $(readlink -f $(which javac))) ]]; then
		directory="OK";
	else
		directory="MISSING";
	fi;
	#java installed
	if which java > /dev/null 2>&1; then
		installed="OK";
	else
		installed="MISSING";
	fi
	#java service
	service="NOT APPLY";
	#add result of diagnosis in the global output array;
	output_arr=("${output_arr[@]}" "$this_pkg-command-$command");
	output_arr=("${output_arr[@]}" "$this_pkg-directory-$directory");
	output_arr=("${output_arr[@]}" "$this_pkg-installed-$installed");
	output_arr=("${output_arr[@]}" "$this_pkg-service-$service");
	#add package to the list as diagnosed
	diagnosed=("${diagnosed[@]}" "$this_pkg");
	#reset used variables to avoid errors with other packages
	reset command directory installed service this_pkg;
}
