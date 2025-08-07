#!/bin/bash

# Check if a commit message was provided
if [ -z "$1" ]; then
  echo "Usage: $0 \"Your commit message\""
  exit 1
fi

# Get current date in YYYY-MM-DD format
DATE=$(date +%F %H:%M)

# Create commit message
COMMIT_MESSAGE="Update \"$DATE\": $1"

# Add all changes
git add .

# Commit with message
git commit -m "$COMMIT_MESSAGE"

# Push to the current branch
git push
