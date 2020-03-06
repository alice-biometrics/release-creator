#!/usr/bin/env bash

source "$GITHUB_RELEASER_HOME/src/ensure.sh"
source "$GITHUB_RELEASER_HOME/src/github.sh"
source "$GITHUB_RELEASER_HOME/src/releaser.sh"

main() {
  export GITHUB_TOKEN="$1"
  export GITHUB_API_URI="https://api.github.com"
  export GITHUB_API_HEADER="Accept: application/vnd.github.v3+json"

  ensure::total_args 7 "$@"

  releaser::create "$2" "$3" "$4" "$5" "$6" "$7"

  exit $?
}
