#!/bin/sh

echo 'Potential Misspellings:'
for f in bylaws.md ; do
	echo $f ; aspell list < $f | sort | uniq -c
done

echo ''

echo 'Non-ASCII characters:'
pcregrep --color='auto' -n "[\x80-\xFF]" bylaws.md
