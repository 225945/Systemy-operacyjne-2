#!/bin/bash
#
# Zadanie 41
# Mateusz Skowronek 225945
# 09.03.2018r. 11:15 TP
#
# prowadzący: mgr inż. Szymon Datko

if [ -d $1 ]; then
	find $1 -type d -empty -mtime +30
fi
