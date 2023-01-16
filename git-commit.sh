#!/bin/bash

GIT_PROJECT_PATH="$HOME/Documents/Dev/Own/obsidian"

git -C $GIT_PROJECT_PATH checkout main
git -C $GIT_PROJECT_PATH add --all
git -C $GIT_PROJECT_PATH diff --staged --quiet

# Exit code is 0 (no changes) or 1 (yes changes)
if [ $? == 1 ]
then
  COMMIT_TIME=$(date "+%Y-%m-%d %H:%M:%S")
  git -C $GIT_PROJECT_PATH commit -m "Update at $COMMIT_TIME"
  git -C $GIT_PROJECT_PATH push --set-upstream origin main
  notify-send "Changes to Obsidian vaults backed up to GitHub" $GIT_PROJECT_PATH
else
  notify-send "No changes to Obsidian vaults found"
fi

