#!/bin/bash
# Function to unset internal variables and avoid script errors
function reset () {
	if [[ "${@}" ]]; then
		unset FILE1;
		for FILE1 in "${@}"; do
			unset $FILE1
		done
	else
		unset ARG;
		unset command;
		unset diagnose;
		unset directory;
		unset FILE1;
		unset FUNCTION;
		unset help;
		unset run;
		unset missing;
		unset status;
		unset variable;
	fi
}
