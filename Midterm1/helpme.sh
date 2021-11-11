#!/bin/bash

#
# helpme.sh
# Ramey Serdah - rserdah1@student.gsu.edu
#

database="mandatabase.txt"

echo "Search for a command manual"

read command
command=$(echo "$command" | tr a-z A-Z) # Translate given command to uppercase letters

if [ -n "$(sed -n "/^$command(1)/,/$command(1)$/p" "$database" | more)" ] # If there is a string in the format of command(1) ... command(1) then the given command is in the database, so print it
then
sed -n "/^$command(1)/,/$command(1)$/p" "$database" | more
else
echo "Sorry, I cannot help you."
fi

