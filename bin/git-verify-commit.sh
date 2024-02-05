#! /usr/bin/env bash

HASH=$1

exec git verify-commit $HASH
