#!/bin/bash

GIT_PROJECT_PATH="$HOME/Documents/Dev/Own/obsidian"

git -C $GIT_PROJECT_PATH checkout main
git -C $GIT_PROJECT_PATH add --all

# piping to xargs trims the string
HAS_CHANGES=$(git -C $GIT_PROJECT_PATH diff --staged | xargs)

if [ $HAS_CHANGES ]
then
  COMMIT_TIME=$(date "+%Y-%m-%d %H:%M:%S")
  git -C $GIT_PROJECT_PATH commit -m "Update at $COMMIT_TIME"
  git -C $GIT_PROJECT_PATH push --set-upstream origin main
fi

notify-send "Changes to Obsidian vaults backed up to GitHub" $GIT_PROJECT_PATH
