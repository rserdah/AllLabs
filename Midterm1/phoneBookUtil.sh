#!/bin/bash

#
# phoneBookUtil.sh
# Ramey Serdah - rserdah1@student.gsu.edu
#

# COMMANDS: ADD, READ, DEL, QUIT

echo "Phone Book Util"
echo "COMMANDS: ADD, READ, DEL, QUIT"

q=0
cmnd=""
fullName=""
address=""
record=""

sort -o phoneBook.txt phoneBook.txt

while [[ $q -le 0 ]] ; do
	read cmnd
	case $cmnd in
		"ADD")
			echo "Enter full name"
			read fullName
			echo "Enter address"
			read address
			echo "Enter phone number"
			read phoneNumber
			record="$fullName \t\t$address \t\t$phoneNumber"
			echo -e $record >> phoneBook.txt

			sort -o phoneBook.txt phoneBook.txt
		;;
		
		"READ")
			echo "Enter full name"
			read fullName
			sed -n "/^${fullName}/p" phoneBook.txt
		;;

                "DEL")
			echo "Enter full name"
			read fullName
			sed -i "/^$fullName/d" phoneBook.txt
                ;;

                "QUIT")
			q=1
                ;;

		*)
			echo -n "unrecognized command: "
			echo -n $command
			echo -ne " ; first enter only command followed by return. \n"
			continue
		;;
	esac
done
