#!/bin/bash
#
# calc.sh
# Ramey Serdah - rserdah1@student.gsu.edu
#

clr=0
echo "Calc - clear by typing 'clear'"

while [[ $clr -le 0  ]] ; do
	echo "Enter a number (x)"
	read x

	if [ "$x" = "clear" ] ; then
		continue
	fi

	echo "Enter an operator (+, -, *, /, %)"
	read op

	if [ "$op" = "clear" ] ; then
		continue
	fi

	echo "Enter a number (y)"
	read y

	if [ "$y" = "clear" ] ; then
		continue
	fi

	case "$op" in
		"+")
			echo -n "$x + $y = "
			expr $x + $y
		;;

		"-")
			echo -n "$x - $y = "
			expr $x - $y
		;;

		"*")
			echo -n "$x * $y = "
		        expr $x \* $y
		;;

		"/")
		        echo -n "$x / $y = "
			echo "$x / $y" | bc -l
		;;

		"%")
		        echo -n "$x % $y = "
		        expr $x % $y
		;;
	esac

clr=1

done
