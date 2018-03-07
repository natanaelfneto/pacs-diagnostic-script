#!/bin/bash
# Function to unset internal variables and avoid script errors
function reset () {
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
		unset this_pkg
}
