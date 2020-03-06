github::create_release() {
  local -r release_data=$1
  local -r repo=$2

  curl -sSL \
  -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "$GITHUB_API_HEADER" \
  --data "$release_data" \
   "$GITHUB_API_URI/repos/$repo/releases"
}
