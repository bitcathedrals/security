#! /usr/bin/env bash

systemctl --user stop gpg-agent.socket
gpgconf --reload gpg-agent
