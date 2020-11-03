#!/bin/bash

env

cd "${GITHUB_WORKSPACE}/${WORKING_DIRECTORY}" || exit 1

set -e

if [ -n "$MAKE_TASK" ];
then
  test -z "$1" || echo "$0 (make): illegal option $1"
  make $MAKE
  exit 0
fi

if [ -n "$BASH_FILE" ];
then
  test -z "$1" || echo "$0 (bash): illegal option $1"
  bash $BASH_FILE
  exit 0
fi

protoc $@
