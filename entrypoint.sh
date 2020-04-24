#!/usr/bin/env bash

set -xe

goreportcard-cli -t $1
curl -X POST -F "repo=github.com/$GITHUB_REPOSITORY" https://goreportcard.com/checks
