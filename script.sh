#!/bin/bash

set -eu -o pipefail


if [[ "$(cat input)" == "$(cat output)" ]]
then
  echo yes
  echo "SANE=yes" >> $GITHUB_ENV
else
  echo no
  echo "SANE=no" >> $GITHUB_ENV
fi
