#!/bin/bash
# Function to select which package user wants a diagnosis output
function diagnose () {
	declare -a params=(${PACSD_PARAMS[@]});
	echo "runnig diagnostic for packages: [ ${diagnosed[@]} ]"
	function global_output () {
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
	if [[ ! "${PACSD_PKGS_ARR[@]}" = *${1}* ]]; then
		printf "${UNSUPPORTED_PACKAGE}";
		help;
		exit;
	else
		case "${1}"	in
			# all)
			# diagnose_java; global_output;
			# diagnose_nginx; global_output
			# diagnose_postgresql; global_output;;

			# dcm4chee)
			# diagnose_;;

			java)
			diagnose_java; global_output;;

			nginx)
			diagnose_nginx; global_output;;
			#
			# opentd)
			# diagnose_opentd;;
			#
			postgres)
			diagnose_postgresql; global_output;;
			#
			postgresql)
			diagnose_postgresql; global_output;;

			*)
			printf "${UNSUPPORTED_PACKAGE}";;
		esac
	fi
}
