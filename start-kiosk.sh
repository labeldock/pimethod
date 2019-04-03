#!/usr/bin/env bash
.$PWD/scripts/startx.sh

if [ -z "${SSH_TTY}" ]; then
  xinit $PWD/scripts/startkiosk.sh $1
fi
