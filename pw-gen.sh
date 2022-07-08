#!/usr/bin/env sh

if [ ! -e eff_large_wordlist.txt ]; then
	curl -O https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt
fi

for n in $(./roll.py 6); do
	grep $n eff_large_wordlist.txt | cut -f 2
done
