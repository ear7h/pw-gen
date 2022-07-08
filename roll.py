#!/usr/bin/env python
from secrets import randbelow
from sys import argv

for n in range(int(argv[1])):
    print("".join([str(randbelow(6) + 1) for x in range(5)]))
