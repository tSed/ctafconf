#!/bin/sh
##
## Author(s):
##  - Cedric GESTES <ctaf42@gmail.com>
##
## Copyright (C) 2010 Cedric GESTES
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
##

#alias available only in sh mode
echo bingbing

sz-find-env()
{
  cur_dir=$(pwd)/fake
  while true; do
    cur_dir=$(dirname ${cur_dir})
    if [ -f "${cur_dir}/.env" ]; then
      echo "${cur_dir}/.env"
      return;
    fi
    if [ "${cur_dir}" = "/" ] || [ -z "${cur_dir}" ] ; then
      break
    fi
  done
  return 1
}


alias_set sz 'sz-find-env >/dev/null && source $(sz-find-env)'
