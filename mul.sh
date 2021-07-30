#!/bin/bash

in_dir=$1
out_dir=$2


for my_file in $(ls $1)
do
#	echo $my_file
	echo -e $($1/$my_file) > "$2/$my_file.txt"
	echo "$2/$file.txt"
#	echo "$2/$my_file.txt"
#		rm $my_file

done
