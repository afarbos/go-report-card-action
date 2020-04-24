#!/usr/bin/env bash

set -xe

goreportcard-cli -t $THRESHOLD
curl -X POST -F "repo=github.com/$GITHUB_REPOSITORY" https://goreportcard.com/checks
