#!/bin/bash
set -e

# For some reason, $GITHUB_REF wasn't working before. This is a good alternative.
# REF=$(jq -r ".ref" "$GITHUB_EVENT_PATH")
# echo "Ref from JSON: $REF"

if ! git status > /dev/null 2>&1
then
  echo "## Initializing git repo..."
  git init
fi

REMOTE_TOKEN_URL="https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"
if ! git remote | grep "origin" > /dev/null 2>&1
then 
  echo "### Adding git remote..."
  git remote add origin $REMOTE_TOKEN_URL
  echo "### git fetch..."
  git fetch
fi

git remote set-url --push origin $REMOTE_TOKEN_URL

BRANCH="$GITHUB_HEAD_REF"
echo "### Branch: $BRANCH"
git checkout $BRANCH

echo "JE LANCE PYTHON OULAH"
python3 /request.py

echo "## Running Black Code Formatter"
black $BLACK_ARGS

echo "## Staging changes..."
git add .
echo "## Commiting files..."
git commit -m "Black Automatically Formatted Code" || true
echo "## Pushing to $BRANCH"
git push -u origin $BRANCH