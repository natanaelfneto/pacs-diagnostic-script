#!/bin/bash
# Function to select which package user wants a diagnosis output
function diagnose () {
	case "${1}"	in
		all)
		diagnose_java;;

		# dcm4chee)
		# diagnose_;;

		java)
		diagnose_java;;

		# nginx)
		# diagnose_nginx;;
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
		for pkg in ${diagnosed[@]}; do
			printf 'diagnostic for %s package:\n\n' "$pkg";
			printf '%s %s' "${params[0]}" #"${output_arr[$pkg,${params[0]}]}";
			# printf '\t>%s status:\t%s\n' "${params[1]}" "${output_arr[$pkg,${params[1]}]}";
			# printf '\t>%s status:\t%s\n' "${params[2]}" "${output_arr[$pkg,${params[2]}]}";
		done
}
