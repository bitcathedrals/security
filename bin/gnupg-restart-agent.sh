#! /usr/bin/env bash

if [[ -x systemctl ]]
then
  systemctl --user stop gpg-agent.socket
fi

gpgconf --reload gpg-agent
