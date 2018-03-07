#!/bin/bash
# Function to select which package user wants a diagnosis output
function diagnose () {
	if [[ ! "${supported_packages[@]}" = ${1} ]]; then
		printf "${UNSUPPORTED_PACKAGE}";
		help;
		exit;
	else
		case "${1}"	in
			all)
			diagnose_java;
			diagnose_nginx;
			diagnose_postgresql;;

			# dcm4chee)
			# diagnose_;;

			java)
			diagnose_java;;

			nginx)
			diagnose_nginx;;
			#
			# opentd)
			# diagnose_opentd;;
			#
			postgres)
			diagnose_postgresql;;
			#
			postgresql)
			diagnose_postgresql;;

			*)
			printf "${UNSUPPORTED_PACKAGE}";;
		esac
		# output script (will e updated to function in future version)
		declare -a params=(${PACSD_PARAMS[@]});
		echo "runnig diagnostic for packages: [ ${diagnosed[@]} ]"
		for pkg in ${diagnosed[@]}; do
			printf '\ndiagnostic for %s package:\n\n' "$pkg";
			for p in ${!params[@]}; do
				local status="${output_arr[$p]/$pkg-${params[$p]}-/}";
				if [[ "${output_arr[$p]}" = $pkg* ]]; then
				  printf "\t%s %s status:\t[ %s ]\n" "$pkg" "${params[$p]}" "$status";
				fi
			done
		done
	fi
}
