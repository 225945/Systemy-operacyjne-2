#!/usr/bin/env python3
#
# Zadanie T4
# Mateusz Skowronek 225945
# 08.06.2018r. 11:15 TP
#
# prowadzący: mgr inż. Szymon Datko

import re

with open('lipsum.txt', 'r') as file:
	lipsum=file.read()
names = re.findall('([A-Z][a-z]+)', lipsum) #imiona zaczynaja sie z duzej litery
print ("Slowa mogace byc imionami:\n")
print ("\n".join(names))
