#!/usr/bin/env bash

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

# usage: check_args_len REQUIRED parameter
#
# example: check_args_len 2 ${#} - check inside a function if at least 2 parameter are given

function check_args_len() {
  if [[ ${#} -lt 2 ]]; then
    err "missing parameter: usage ${0}"
    exit 1
  fi

  if [[ ${2} -lt ${1} ]]; then
    err "missing parameter(s) (required: ${1} | given: ${2})"
    exit 1
  fi

  if [[ ${CONFIG_DEBUG} == true ]]; then
    echo -e "${PREFIX_OK}${FONT_RESET} PARAMETER: (required: ${1} | given: ${2})"
  fi
}
