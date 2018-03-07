#!/bin/bash
# Function to output diagnose for postgresql package
function diagnose_postgresql () {
	this_pkg="postgresql";
	#postgresql commnad line
	if [[ `command -v postgres` ]]; then
		command="OK";
	else
		command="MISSING";
	fi;
	#postgresql directory
	if [[ -f /usr/bin/postgres ]]; then
		directory="OK";
	else
		directory="MISSING";
	fi;
	#postgresql installed
	if which postgres > /dev/null 2>&1; then
		installed="OK";
	else
		installed="MISSING";
	fi
	#postgresql service
	if [[ `service postgresql status | grep "active (running)"` ]]; then
		service="ACTIVE";
	else
		if [[ `/sbin/service postgresql status | grep "active (running)"` ]]; then
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
