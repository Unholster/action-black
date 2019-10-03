#!/bin/sh
set -e
DIFF=$(black --diff)

if [[ -z "$DIFF" ]]
then
  exit 0
else
  echo $DIFF
  exit 1
fi
