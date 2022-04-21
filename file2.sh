#!/bin/bash

function hello(){
	for NAME in $@
	do
		echo "Hello $NAME"
	done
	now

}

function now(){
	echo "it is $(date +%r)"
}


function backup_file () {
	if [ -f $1 ]
	then
		local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
		echo "Backing up $1 to ${BACK}"
		cp $1 $BACK
	fi
}


backup_file /etc/hosts
if [ $? -eq 0 ]
then
	echo "Backup succeeded"
else
	echo "Backup failed"
	exit 1
fi




hello Jason Dan
