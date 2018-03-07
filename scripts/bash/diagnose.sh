#!/bin/bash
# Function to select which package user wants a diagnosis output
function diagnose () {
	case "${1}"	in
		all)
		diagnose_java;
		diagnose_nginx;;

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
		# postgres)
		# diagnose_postgres;;
		#
		# postgresql)
		# diagnose_postgresql;;

		*)
		printf '\nError:\tThe package named "%s" is not supported by pacsd-diagnostic module\n' "$1";;
	esac
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
}
