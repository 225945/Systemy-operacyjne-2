#!/bin/bash
#
# Zadanie 24
# Mateusz Skowronek 225945
# 09.03.2018r. 11:15 TP
#
# prowadzący: mgr inż. Szymon Datko



if [[ $# -ne 1 ]]; then
        echo "Niepoprawna liczba argumentów (wymagany 1). "
        echo "Użycie: nazwa skryptu katalog_z_dowiązaniami"
        exit 1

fi

if [[ ! -d $1 ]]; then
        echo "$1 nie jest katalogiem!"
        exit 1
fi

PLIKI=`ls $1`
for plik in $PLIKI
do

	if [[ -L $1/$plik ]]; then
		echo "Nazwa dowiązania symbolicznego: "$plik " -- Ścieżka wskazywana przez to dowiązanie: " 
		readlink -f $1/$plik
	fi

done
