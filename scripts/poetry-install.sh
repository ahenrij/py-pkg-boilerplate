#! /usr/bin/env bash

INSTALL_DEV=false

while getopts 'd' opt; do
    case $opt in
        d) INSTALL_DEV=true ;;
        *) echo 'Error in command line parsing' >&2
            exit 1
    esac
done

if "$INSTALL_DEV"; then
    echo 'Installing poetry all'
    poetry install --no-root
else
    echo 'Installing poetry no dev'
    poetry install --no-root --no-dev
fi
