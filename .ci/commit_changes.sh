#!/bin/bash
set -e

COMMIT_FILES="stable/alpine/Dockerfile mainline/alpine/Dockerfile"

if git diff --exit-code -- $COMMIT_FILES && [ -z "${TRAVIS_REPO_SLUG}" ]; then
    echo "Nothing to commit."
    exit 1
fi

git config user.name "travis-ci"
git config user.email "travis-ci@travis-ci.org"
git add $COMMIT_FILES
git commit -m 'Update to new version'
git push "https://$GITHUB_TOKEN@github.com/$TRAVIS_REPO_SLUG" HEAD:$TRAVIS_BRANCH
