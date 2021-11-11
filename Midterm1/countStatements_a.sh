#!/bin/bash

#
# countStatements.sh
# Ramey Serdah - rserdah1@student.gsu.edu
#

text="$(sed 's/\n/" "/' myexamfile.txt)"
#text="asdkjhasdklhaslkd asjdhkjahsdkjhasd. kjahsdkjhakdhaksd. kajhsdkhasdkjhaskdhaksj dka sdaksjhd kajshdkajd ajd adjahsdk gjhasdgfkj hgadkjhfg as. asdklhasldk."

grep -o "\." <<< "$text" | wc -l

