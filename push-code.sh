#!/bin/bash

# Add all changes to the staging area
git add .

# Prompt for commit message
read -p "Enter commit message: " commit_message

# Commit changes
git commit -m "$commit_message"

# Push changes to the remote repository
git push

# Push changes to the remote repository
git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)