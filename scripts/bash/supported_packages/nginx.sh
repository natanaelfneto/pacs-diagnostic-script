#!/bin/bash
# Function to output diagnose for nginx package
function diagnose_nginx () {
	this_pkg="nginx";
	#nginx commnad line
	if [[ `command -v nginx` ]]; then
		command="OK";
	else
		command="MISSING";
	fi;
	#nginx directory
	if [[ -d $(dirname $(readlink -f $(which nginx))) ]]; then
		directory="OK";
	else
		directory="MISSING";
	fi;
	#nginx installed
	if which nginx > /dev/null 2>&1; then
		installed="OK";
	else
		installed="MISSING";
	fi
	#nginx service
	if [[ `service nginx status | grep "active (running)"` ]]; then
		service="ACTIVE";
	else
		if [[ `/sbin/service nginx status | grep "active (running)"` ]]; then
			service="ACTIVE";
		else
			service="INACTIVE";
		fi;
	fi;
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
