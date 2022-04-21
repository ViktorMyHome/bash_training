#!/bin/bash

ls *sh
ls ????????
ls f[unc]*.sh
ls *[[:digit:]]*


if [ -d $1 ]
then
	rm -r $1
else
	mkdir $1
	for FILE in *.sh
	do
		echo "copying files.."
		cp $FILE $1
	done
fi
