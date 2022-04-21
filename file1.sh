
VARIABLE_NAME="Value"
SERVER_NAME=$(hostname)


echo "Running on ${SERVER_NAME}"
echo "My variable is ${VARIABLE_NAM}E"
sleep 1
echo "$$"

FILE=~/git/training/bash_training/file1.sh

if [ -e "$FILE" ]
then
	echo "$FILE exists"
elif [ -e "~/git/training/bash_training/file1.sh" ]
then
	echo "file1.sh exists"
fi

for element in 1 2 3 4 5 6 7 8 9
do
	echo "Element: $element"
done

echo "script name: $0"
echo "first argument: $1"

ls /not/here
echo "$?"

HOST="google.com"
ping -c 1 $HOST
RETURN_CODE=$?
if [ "$RETURN_CODE" -eq "0" ]
then
	echo "$HOST reachable"
else
	echo "$HOST unreachable"
fi

HOST2="goosogle.com"

ping -c 1 $HOST2 || echo "$HOST2 unreachable"

uptime



