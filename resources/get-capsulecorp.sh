#! /usr/bin/env bash

case $1 in
  "deps")
    doas apt install vagrant ansible ruby
  ;;
  "capsulecorp")
    git clone https://github.com/R3dy/capsulecorp-pentest.git capsulecorp
  ;;
esac
