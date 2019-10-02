#!/bin/sh
set -e

ls -r /

sh -c "black $*"
