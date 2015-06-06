#!/bin/bash
#
# Pengo Project
#
# Copyright (c) 2015 Penlook Development Team
#
# --------------------------------------------------------------------
#
# This program is free software: you can redistribute it and/or
# modify it under the terms of the GNU Affero General Public License
# as published by the Free Software Foundation, either version 3
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public
# License along with this program.
# If not, see <http://www.gnu.org/licenses/>.
#
# --------------------------------------------------------------------
#
# Authors:
#     Loi Nguyen       <loint@penlook.com>

pkill pendev
service nginx stop

ROOT_INCLUDE=`readlink -e ../../../../`
ROOT_LOCAL=`readlink -e ./`
ROOT_RAM=$ROOT_LOCAL/tmp

# Update changed files to ram disk
cp -ru $ROOT_INCLUDE/inc/* $ROOT_RAM/inc
cp -ru $ROOT_INCLUDE/src/* $ROOT_RAM/src
cp -ru $ROOT_LOCAL/main/* $ROOT_RAM/main
cp -ru $ROOT_LOCAL/Makefile $ROOT_RAM/Makefile

cd $ROOT_RAM
make debug
$ROOT_RAM/pendev &
sleep 0.1