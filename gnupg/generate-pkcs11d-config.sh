#! /usr/bin/env bash
log_file=$HOME/.gnupg/pkcs11d.log

echo "log-file $log_file"
echo "verbose"
echo "pin-cache 300"

echo "providers p1"

function find_driver {
  opensc_driver=/usr/local/lib/opensc-pkcs11.so

  if [[ -f $opensc_driver ]]
  then
    echo "provider-p1-library $opensc_driver"
    return
  fi

  opensc_driver=/usr/lib/x86_64-linux-gnu/pkcs11/opensc-pkcs11.so

  if [[ -f $opensc_driver ]]
  then
    echo "provider-p1-library $opensc_driver"
    return
  fi

  echo "ERROR! could not find p1 driver"
  exit 1
}

find_driver

