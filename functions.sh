#!/bin/bash

function file_count() {
	cd $1
	ls | wc -l
}
if [ -d $1 ]
then
	VAR=$(file_count)
	echo "Quantity of files in current directory $VAR"
else
	echo "Not correct directory $1"
fi

