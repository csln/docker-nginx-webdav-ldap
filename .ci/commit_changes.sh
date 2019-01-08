#!/bin/bash
set -e

realpath() { python -c "import os,sys; print(os.path.realpath(sys.argv[1]))" "$1"; }

WORKDIR=$(dirname $(realpath $0))
COMMIT_FILES="stable/alpine/Dockerfile mainline/alpine/Dockerfile"

if git diff --exit-code -- $COMMIT_FILES && [ -z "${TRAVIS_REPO_SLUG}" ]; then
    git config user.name "travis-ci"
    git config user.email "travis-ci@travis-ci.org"
    git add $COMMIT_FILES
    git commit -m 'Update to new version'
    git push "https://$GITHUB_TOKEN@github.com/$TRAVIS_REPO_SLUG" HEAD:$TRAVIS_BRANCH

    bash ${WORKDIR}/push_images.sh
fi