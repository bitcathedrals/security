#! /usr/bin/env bash

for host in "cracker.local" "hades.local" "redbox.local"
do
  echo "host: $host"
  ssh $host "doas apt-get clean"
done
