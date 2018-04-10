#!/bin/bash
#
# Zadanie 89
# Mateusz Skowronek 225945
# 09.03.2018r. 11:15 TP
#
# prowadzący: mgr inż. Szymon Datko

lsof | awk '{ if($3 != "SIZE/OFF") { size += $7 } } END { print "Całkowity rozmiar wszystkich otwartych plików w systemie:", size/1048576, "megabajtów" }'
