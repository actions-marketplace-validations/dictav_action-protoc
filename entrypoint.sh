#!/bin/bash

cd "${GITHUB_WORKSPACE}/${INPUT_WORKDIR}" || exit 1

set -e

if [ -n "$INPUT_MAKE" ];
then
  test -n "$1" && { echo "$0 (make): illegal option $1"; exit 1; }

  make $INPUT_MAKE
  exit 0
fi

if [ -n "$INPUT_BASH" ];
then
  test -n "$1" && { echo "$0 (bash): illegal option $1"; exit 1; }

  bash $INPUT_BASH
  exit 0
fi

protoc $@
