#! /usr/bin/env bash

for host in "cracker.local" "hades.local" "redbox.local"
do
  echo "upgrade host: $host"
  ssh $host "doas apt upgrade"
done
