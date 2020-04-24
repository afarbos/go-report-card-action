#!/usr/bin/env sh

set -xe

goreportcard-cli -v -t $1
curl -X POST -F "repo=github.com/$GITHUB_REPOSITORY" https://goreportcard.com/checks
