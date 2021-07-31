#!/bin/bash

out_dir=$1
help_mesg="Пожалуйста укажите путь к IN и OUT каталогам !\nНапример: ./multi_decode.sh  ~/out_files"

case "$1" in
-h | --help | help) echo -e $help_mesg ;;
esac


if [ -z $1 ]
then
	echo -e $help_mesg
	exit

fi


if ! [ -d $1 ]
then 
	echo "Каталог $2 не существует"
	exit
fi

for my_file in $(ls *.wav)
do
	my_file_no_type=$(echo $my_file | cut -f 1 -d '.')
	echo "$my_file_no_type $my_file" > decoder-test.scp
	echo "$my_file_no_type $my_file_no_type" > decoder-test.utt2spk 
	./decode.sh  &> "$1/$my_file_no_type.txt"

#auto delete wav files
	rm $my_file                     

done
