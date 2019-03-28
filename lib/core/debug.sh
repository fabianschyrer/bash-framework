#!/usr/bin/env bash

[[ ! ${CONFIG_LOADED}  ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

# print the shell running this process
function print_shell() {
  local DEBUG_SHELL=$(ps -hp $$ | grep -v PID | awk '{ print $4 }')
  echo "SHELL: ${DEBUG_SHELL}"
}

# print arguments (useful for testing / debugging)
function print_args() {
  echo -e "\n${FONT_OK}ARGUMENTS OVERVIEW${FONT_RESET}\n"

  echo -e "\t${FONT_OK}\${*}${FONT_RESET}:\t${*}\n"
  echo -e "\t${FONT_OK}\${#}${FONT_RESET}:\t${#}\n"
  echo -e "\t${FONT_OK}\${$}${FONT_RESET}:\t${$}\n"
  echo -e "\t${FONT_OK}\${?}${FONT_RESET}:\t${?}\n"
  echo -e "\t${FONT_OK}\${-}${FONT_RESET}:\t${-}\n"
  echo -e "\t${FONT_OK}\${$}${FONT_RESET}:\t${$}\n"
  echo -e "\t${FONT_OK}\${!}${FONT_RESET}:\t${!}\n"
  echo -e "\t${FONT_OK}\${0}${FONT_RESET}:\t${0}\n"
  echo -e "\t${FONT_OK}\${_}${FONT_RESET}:\t${_}\n"

  echo -e "${FONT_RESET}\nexecuted as: \"${0} ${*}\" with PID: ${$} as $(whoami)\n"
}
