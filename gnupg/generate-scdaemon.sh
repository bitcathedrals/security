#! /usr/bin/env bash

system=`uname`

# On darwin use builtin ccid driver
if [[ $system != "Darwin" ]]
then
  driver=/usr/lib/pcsc/drivers/serial/libccidtwin.so
  if [[ -f $driver ]]
  then
    echo "pcsc-driver $driver"
  else
    echo >/dev/stderr "WARNING! pcsc driver not found: $driver"
  fi

  echo "disable-ccid"
fi

echo "debug-ccid-driver"
echo "debug-level advanced"
echo "log-file $HOME/.gnupg/scdaemon.log"
echo "reader-port Yubico Yubi"



