#!/bin/bash
while [ 1=1 ]
do
	cat $(perl ./kernel-src.pl) | source-highlight --src-lang=c --out-format=esc | perl ./slowcat.pl -b 4000
#	cat $(perl ./kernel-src.pl)
done
