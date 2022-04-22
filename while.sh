#!/bin/bash -v

PS4='+ $BASH_SOURCE : $LINENO :'

INDEX=1
while [ $INDEX -lt 6 ]
do
	echo "INDEX = ${INDEX}"
	set -x
	((INDEX++))
	set +x
done

