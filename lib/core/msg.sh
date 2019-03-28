#!/usr/bin/env bash

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" && exit 1

# Usage:
#
# print_err "error message"
# print_warn "warn message"
# print_ok "ok message"

function print_err() {
  check_args_len 1 ${#}
  echo -e "${PREFIX_ERR}${FONT_RESET} ${1}" >&2
}

function print_warn() {
  check_args_len 1 ${#}
  echo -e "${PREFIX_WARN}${FONT_RESET} ${1}"
}

function print_ok() {
  check_args_len 1 ${#}
  echo -e "${PREFIX_OK}${FONT_RESET} ${1}"
}

function press_a_key() {
  echo -e "\n${FONT_WARN}press a key to continue ...${FONT_RESET}"
  read -n1
  clear
}
