#!/bin/bash
# Configuration file with basic variables o be use across internal functions
## Setting PACS_CONFIG directory variable
PACSD_CONFIG="$(dirname "$0")";
# Setting HELP
PACSD_HELP="usage: pacs [ options ] [ arg ]
example: [ pacs -h ] will return this message.
obs: only one option will be accepted.\n
 -d [ arg ]\truns a diagnose script for specific package or all
\t\tof packages for a LAIS/PACS environment.\n
 -h\t\tbrings pacsd help message output to the console.\n
 -v\t\tbrings pacsd version output to the console.";
##
declare -a PACSD_PARAMS=("command" "directory" "variable" "installed" "service")
## Setting VERSION variable
PACSD_VERSION="0.0.1";
PACSD_WELCOME="**welcome message**";
