#! /usr/bin/env bash

TOOLS=$HOME/tools/local/bin

if [[ ! -d $TOOLS ]]
then
  echo "could not find install directory: $TOOLS"
  exit 1
fi

case $1 in
  "linux")
    echo "installing linux specific tools"
    cp sys/linux* $TOOLS
  ;;
  "macos")
    echo "installing MacOS specific tools"
    cp sys/macos* $TOOLS
  ;;
  "openbsd")
    echo "installing OpenBSD specific tools"
    cp sys/openbsd* $TOOLS
  ;;
  *)
    echo "please give linux or macos or openbsd as the host system"
  ;;
esac

echo "installing system agnostic tools"
cp bin/* $TOOLS

echo "installation complete."
exit 0
