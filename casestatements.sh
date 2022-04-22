#!/bin/bash

read -p "Enter y or n: " ANSWER
case "$ANSWER" in
	[yY][eE][sS])
		echo "you answered yes"
		;;
	[nN]|[nN][oO])
		echo "You answered no"
		;;
	*)
		echo "Invalid answer"
		;;
esac

logger "my Message"
logger -p local0.info "my Message local0"
logger -s -p local0.info "my Mesage local0 2"


