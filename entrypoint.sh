#!/bin/sh
set -o errexit

git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com"

sh -c "gh-pages $*"
