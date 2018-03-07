#!/bin/bash
# Function to output diagnose for java package
function diagnose_java () {
	#java commnad line
	if [[ `command -v java` ]]; then
		command="OK";
	else command="MISSING";
	fi;
	#java directory
	if [[ -d $(dirname $(readlink -f $(which javac))) ]]; then
		directory="OK";
	else directory="MISSING";
	fi;
	#java environment variable
	if [[ -z '$JAVA_HOME' ]]; then
		variable="OK";
	else variable="MISSING";
	fi;
	#add result of diagnosis in the global output array;
	output_arr=("${output_arr[@]}" "java-command-$command");
	output_arr=("${output_arr[@]}" "java-directory-$directory");
	output_arr=("${output_arr[@]}" "java-variable-$variable");
	#add package to the list as diagnosed
	diagnosed+=(java);
	#reset used variables to avoid errors with other packages
	reset command directory variable;
}
