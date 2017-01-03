#!/usr/bin/env sh
set -e
PAGER="less --quit-if-one-screen --raw-control-chars"
COLORATOR=colordiff
if test ! -t 1 ; then
  PAGER=cat
  COLORATOR=cat
fi
exec ${@} | ${COLORATOR} | ${PAGER}
