#!/bin/bash
# Configuration file with basic variables o be use across internal functions
## Setting PACS_CONFIG directory variable
PACSD_CONFIG="$(dirname "$0")";
# Setting HELP
PACSD_HELP="usage: pacs [options] [args]
example: [pacs -h] will return this message.
obs: only one option will be accepted.\n
 -h \t\tbrings pacs command help output to the console.\n
 -i [option]\tcalls script to install/reinstall a LAIS/PACS environment
\t\tmissing package and sets all its configurations.\n
 -d [option]\truns a diagnore script for specific package or all
\t\tof packages for a LAIS/PACS environment.";
##
declare -a PACSD_PARAMS=("command" "directory" "variable")
## Setting VERSION variable
PACSD_VERSION="0.0.1";
PACSD_WELCOME="**welcome message**";
