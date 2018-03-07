#!/bin/bash
# Configuration file with basic variables o be use across internal functions
## Setting PACSD color scheme
NoColor='\033[0m';
BLUE='\033[0;34m';
GREEN='\033[0;32m';
PURPLE='\033[0;35m';
RED='\033[0;31m';
YELLOW='\033[1;33m';
## Setting General use combination of variables
ERROR="${YELLOW}Error:${NoColor}";
UNSUPPORTED_PACKAGE="\n${ERROR}\t${RED}This package is not supported by pacsd module${NoColor}\n"
## Setting PACS_CONFIG directory variable
PACSD_CONFIG="$(dirname "$0")";
# Setting HELP
PACSD_HELP="${GREEN}usage${NoColor}:\t\tpacs [ ${BLUE}options${NoColor} ] [ ${BLUE}arg${NoColor} ]
${GREEN}example${NoColor}:\t[ pacs -h ] will return this message.
${GREEN}obs${NoColor}:\t\tonly one option will be accepted.\n
 ${YELLOW}-d${NoColor} [ ${BLUE}arg${NoColor} ]\truns a diagnose script for specific package or all
\t\tof packages for a LAIS/PACS environment.\n
 ${YELLOW}-h${NoColor}\t\tbrings pacsd help message output to the console.\n
 ${YELLOW}-v${NoColor}\t\tbrings pacsd version output to the console.";
## Setting PACSD parameters for global output function
declare -a PACSD_PARAMS=(
	"command"
	"directory"
	"installed"
	"service"
	)
## PACSD supported packages variable
declare -a PACSD_PKGS_ARR=(
	# "all"
	"java"
	"nginx"
	"postgres"
	"postgresql"
)
## Setting VERSION variable
PACSD_VERSION="0.0.2";
PACSD_WELCOME="**welcome message**";
