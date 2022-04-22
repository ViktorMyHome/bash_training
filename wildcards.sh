#!/bin/bash

ls *sh
ls ????????
ls f[unc]*.sh
ls *[[:digit:]]*


if [ -d $1 ]
then
	rm -r $1
fi
if [ ! -d $1 ]
then
	mkdir $1
	for FILE in *.sh
	do
		echo "copying file $FILE"
		cp $FILE $1
	done
fi

VAR2="hello"
if [ "$VAR"="hello" ]
then
	echo "true"
fi

case "$VAR2" in 
	"hello_")
		echo "hello_"
		;;
	"hello")
		echo "hello"
		;;
esac

