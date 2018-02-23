#!/bin/bash

set -e # Exit with nonzero exit code if anything fails

# Save some useful information
TARGET_BRANCH="master"
REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`
OLD='./cv.md'
NEW='./out/cv.md'

# Clone the existing this repo into out/
# Create a new empty branch if gh-pages doesn't exist yet (should only happen on first deply)
git clone $REPO out
cd out
git checkout $TARGET_BRANCH || git checkout --orphan $TARGET_BRANCH
cd ..

# Check if there are any changes that need deploying
if ! cmp --silent $OLD $NEW ; then
  # Clean up existing docs
  rm -rf out/**/* || exit 0
  mv ./cv.pdf ./out/docs/cv-esteban.pdf
  mv ./cv.html ./out/docs/index.html
  cd out

  # Configure the commits to be pushed
  git config user.name "Esteban's Travis CI Bot"
  git config user.email "$COMMIT_AUTHOR_EMAIL"

  git add ./docs/*
  git commit -m "Deploy to «docs»: ${SHA}"
  
  # Get the deploy key by using Travis's stored variables to decrypt travis_cv_id_rsa.enc
  ENCRYPTED_KEY_VAR="encrypted_${ENCRYPTION_LABEL}_key"
  ENCRYPTED_IV_VAR="encrypted_${ENCRYPTION_LABEL}_iv"
  ENCRYPTED_KEY=${!ENCRYPTED_KEY_VAR}
  ENCRYPTED_IV=${!ENCRYPTED_IV_VAR}
  openssl aes-256-cbc -K $ENCRYPTED_KEY -iv $ENCRYPTED_IV -in ../travis_cv_id_rsa.enc -out ../deploy_key -d
  chmod 600 ../deploy_key
  eval `ssh-agent -s`
  ssh-add ../deploy_key

  # Now that we're all set up, we can push.
  git push $SSH_REPO $TARGET_BRANCH
fi
