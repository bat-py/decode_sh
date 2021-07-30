#!/bin/bash

in_dir=$1
out_dir=$2

for file in $(ls $1/*)
do
	if [ -f $file ]
	then
		./decode.sh "$file" > "$2/$(file).txt"
		rm $file
	fi

done
