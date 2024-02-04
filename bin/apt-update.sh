#! /usr/bin/env bash

for host in "cracker.local" "hades.local" "redbox.local"
do
  echo "update host: $host"
  ssh $host "doas apt update"
done
