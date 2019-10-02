#!/bin/sh
set -e

ls .

sh -c "black $*"
