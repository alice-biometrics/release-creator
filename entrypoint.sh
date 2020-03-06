#!/usr/bin/env bash
set -euo pipefail

GITHUB_RELEASER_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

if [ "$GITHUB_RELEASER_HOME" == "/" ]; then
  GITHUB_RELEASER_HOME=""
fi

export GITHUB_RELEASER_HOME

bash --version

source "$GITHUB_RELEASER_HOME/src/main.sh"

main "$@"

exit $?
