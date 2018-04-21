#
# Zadanie P3
# Mateusz Skowronek 225945
# 09.03.2018r. 11:15 TP
#
# prowadzący: mgr inż. Szymon Datko

import sys
import os

src = sys.argv[1]
dst = sys.argv[2]
files = os.listdir(src)
files2 = os.listdir(dst)

for filename in files:
	if not os.path.isfile(os.path.join(dst,filename)):
		os.rename(os.path.join(src, filename), os.path.join(dst, filename))

