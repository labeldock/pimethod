#!/usr/bin/env bash
if [ -z "${SSH_TTY}" ]; then
  xinit ~/$PWD/startkiosk.sh
fi