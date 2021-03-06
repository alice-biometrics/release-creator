#!/usr/bin/env bash

ensure::env_variable_exist() {
  if [[ -z "${1}" ]]; then
    echoerr "The env variable $1 is required."
    exit 1
  fi
}

ensure::total_args() {
  local -r received_args=$(echo "$# - 1" | bc)
  local -r expected_args=$1

  if ((received_args != expected_args)); then
    echo "Illegal number of parameters, $expected_args expected but $received_args found"
    echo "$@"
    exit 1
  fi
}
