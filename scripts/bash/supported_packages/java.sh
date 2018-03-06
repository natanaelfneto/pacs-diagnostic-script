#!/bin/bash
# Function to output diagnose for java package
function diagnose_java () {
	declare -a output_java=();
	#java commnad line
	if [[ `command -v java` ]]; then command="OK"; else command="MISSING"; fi;
	#java directory
	if [[ '-d $(dirname $(readlink -f $(which javac)))' ]]; then directory="OK"; else directory="MISSING"; fi;
	#java environment variable
	if [[ '-z $JAVA_HOME' ]]; then variable="OK"; else variable="MISSING"; fi;
	output_arr[java,command]=$command;
	output_arr[java,directory]=$directory;
	output_arr[java,variable]=$variable;
	diagnosed+=(java);
	reset command directory variable;
}
