GITHUB_TOKEN=$1
version="v2.0.0"
description="New version"
repo="alice-biometrics/github-releaser"
branch="master"
draft="false"
prerelease="false"


docker build --no-cache -t github-releaser.

docker run github-releaser:latest \
	"$GITHUB_TOKEN" \
	"$version" \
	"$description" \
	"$repo" \
	"$branch" \
	"$draft" \
	"$prerelease"


