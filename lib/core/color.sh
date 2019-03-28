#!/usr/bin/env bash

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

# optional parameter: [ nice ]
function print_colors() {
  for bg in {40..47} {100..107} 49; do
	for fg in {30..37} {90..97} 39; do
		for x in 0 1 2 4 5 7; do
      if [ "${1}" == "nice" ]; then
        local val="❤"
      else
        local val='\\033['"${x};${bg};${fg}m"
      fi
      echo -en "\033[${x};${bg};${fg}m " ${val} "\033[0m"
		done
		echo
	done
done

unset fg bg
}
