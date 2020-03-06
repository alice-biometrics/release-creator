#!/usr/bin/env bash

releaser::create() {
  local -r version="$1"
  local -r description="$2"
  local -r branch="$3"
  local -r draft="$4" == "true"
  local -r prerelease="$5" == "true"

  release_data=$(printf '{"tag_name": "%s","target_commitish": "%s","name": "%s","body": "%s","draft": %s,"prerelease": %s}' "$version" "$branch" "$version" "$description" "$draft" "$prerelease" )

  echo "$release_data"

  github::create_release "$release_data"
}
