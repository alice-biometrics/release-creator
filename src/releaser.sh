#!/usr/bin/env bash

releaser::create() {
  local -r version="$1"
  local -r description="$2"
  local -r repo="$3"
  local -r branch="$4"
  local -r draft="$5"
  local -r prerelease="$6"

  release_data=$(printf '{"tag_name": "%s","target_commitish": "%s","name": "%s","body": "%s","draft": %s,"prerelease": %s}' "$version" "$branch" "$version" "$description" "$draft" "$prerelease" )

  echo "$release_data"
  
  if [ "$repo" == "this" ]; then
    repo=$GITHUB_REPOSITORY
  fi
  
  echo "$repo"

  github::create_release "$release_data" "$repo"
}
