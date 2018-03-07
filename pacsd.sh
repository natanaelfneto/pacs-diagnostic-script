#!/bin/bash

#Setting basic directories for easy imports
## Setting PACSD_HOME directory variable
PACSD_HOME="$(dirname "$0")";
## Setting PACSD_BASH directory variable
PACSD_BASH="$PACSD_HOME/scripts/bash";
## Setting PACSD_BASH directory variable
PACSD_PKGS="$PACSD_HOME/scripts/bash/supported_packages";

# Import function scripts for bash runtime
## Import configuration parameters
. "$PACSD_BASH/config.sh"
## Import configuration parameters
. "$PACSD_BASH/diagnose.sh"
## Import function to manage diagnosis for desire package based on the user input
. "$PACSD_BASH/help.sh"
## Import function to output help message
. "$PACSD_BASH/help.sh"
## Import function to unset internal variables and avoid script errors
. "$PACSD_BASH/reset.sh"
## Import function to output pacs command version
. "$PACSD_BASH/version.sh"

## Import for the supported packages
{
	. "$PACSD_PKGS/java.sh";
}

## Function to be called before pacsd main script with pre run steps
function pre_run () {
	# output variable with all diagnosed packages names
	declare -a diagnosed;
	# output variable with all diagnosed packages outputs
	declare -a output_arr;
	# : before means it passes without arguments
	# : after means it accepts arguments
	while getopts d:hv option; do
		case "${option}" in
			d)
			FUNCTION="diagnose";
			ARG=${OPTARG};;

			h)
			FUNCTION='help';;

			v)
			FUNCTION='version';;
		esac
	done
}

## Function to be called after a pre run script with pacsd command main steps
function main {
	if [[ $1 ]]; then eval $1 $2; else echo -e "\nError:\tEmpty function called.\n"; fi;
}
#check if its the first run of this file
if [[ -d $(dirname $HOME/bin/pacs-diagnostic-script/__init__) ]]; then
	pre_run $@;
	main $FUNCTION $ARG;
else
	export PATH=$PATH":$HOME/bin/pacs-diagnostic-script";
	chmod +x $HOME/bin/pacs-diagnostic-script/;
	alias pacsd='sh $HOME/bin/pacs-diagnostic-script/pacs.sh';
	touch $HOME/bin/pacs-diagnostic-script/__init__;
	wellcome;
fi
