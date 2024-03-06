#! /usr/bin/env bash

function setup_pinentry {
  if command -v pinentry-mac >/dev/null 2>&1
  then
    path=`which pinentry-mac`
    echo "pinentry-program $path"
    return
  fi

  if command -v pinentry-gnome3 >/dev/null 2>&1
  then
    path=`which pinentry-gnome3`
    echo "pinentry-program $path"
    return
  fi

  if command -v pinentry-curses >/dev/null 2&1
  then
    path=`which pinentry-curses`
    echo "pinentry-program $path"
    return
  fi

  echo >/dev/stderr "WARNING: pinentry-program not found!"
}

setup_pinentry


