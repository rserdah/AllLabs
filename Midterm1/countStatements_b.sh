#!/bin/bash

#
# countStatements.sh
# Ramey Serdah - rserdah1@student.gsu.edu
#

text="$(sed 's/\n/" "/' myexamfile.txt)"

words=1
statements=0
letters=0

echo
echo -e "Statement \tWords \tLetters"

for (( i=0; i<${#text}; i++ )) ; do 
if [ "${text:$i:1}" = " " ] ; then
	words=$(expr $words + 1)
elif [ "${text:$i:1}" = "." ] ; then 
	statements=$(expr $statements + 1 )
	echo -e "$statements \t\t$words \t$letters"
	words=0
	letters=0
else
	letters=$(expr $letters + 1)
fi
done

