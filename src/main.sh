#!/usr/bin/env bash

source "$GITHUB_RELEASER_HOME/src/ensure.sh"

main() {
  ensure::env_variable_exist "GITHUB_REPOSITORY"
  ensure::env_variable_exist "GITHUB_EVENT_PATH"
  ensure::total_args 6 "$@"

  export GITHUB_TOKEN="$1"

  releaser::create "$2" "$3" "$4" "$5" "$6"

  exit $?
}
