#!/bin/bash

in_dir=$1
out_dir=$2
help_mesg="Please enter IN and OUT directories!\nFor example: multi_decode.sh ~/wav_files ~/out_files"

case "$1" in
-h | --help | help) echo -e $help_mesg ;;
esac


if [ -z $1 ] || [ -z $2 ]
then
	echo -e $help_mesg
	exit

fi

for my_file in $(ls $1)
do
	if [ -f $my_file ]
	then
#		$(pwd)/decode.sh $1/ > "$2/$my_file.txt"
#		rm $file
	fi

done
