GITHUB_TOKEN=$1
version="inherit"
description="inherit"
repo="alice-biometrics/github-releaser"
branch="master"
draft="false"
prerelease="false"

docker build --no-cache -t github-releaser .

docker run github-releaser:latest \
	"$GITHUB_TOKEN" \
	"$version" \
	"$description" \
	"$repo" \
	"$branch" \
	"$draft" \
	"$prerelease"


