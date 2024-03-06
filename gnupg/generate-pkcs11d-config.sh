#! /usr/bin/env bash
log_file=$HOME/.gnupg/pkcs11d.log

echo "log-file $log_file"
echo "verbose"
echo "pin-cache 300"

opensc_driver=/usr/local/lib/opensc-pkcs11.so

if [[ -f $opensc_driver ]]
then
  echo "providers p1"
  echo "provider-p1-library $opensc_driver"
fi
