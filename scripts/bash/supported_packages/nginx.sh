#!/bin/bash
# Function to output diagnose for java package
function diagnose_nginx () {
	#nginx installed
	if which nginx > /dev/null 2>&1; then
		installed="OK";
	else
		installed="MISSING";
	fi
	#nginx service
	if [[ -d $(dirname $(readlink -f $(which javac))) ]]; then
		service="ACTIVE";
	else
		service="INACTIVE";
	fi;
	#add result of diagnosis in the global output array;
	output_arr=("${output_arr[@]}" "nginx-installed-$installed");
	output_arr=("${output_arr[@]}" "nginx-service-$service");
	#add package to the list as diagnosed
	diagnosed+=(nginx);
	#reset used variables to avoid errors with other packages
	reset installed service;
}
