#!/bin/sh

black --check .
OK=$?

if [ $OK -ne 0 ]
then
  black --diff .
fi

exit $OK
