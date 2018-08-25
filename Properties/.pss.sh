#!/bin/bash

#Directory Containing Passwords
PASSWORDS=~/Documents/Lastonestanding/Properties
#File Containing Passwords
FILE=.savefiles.txt
#Access Password
MASTERPASS="r@cjjm%8"

if [ "$#" -gt 1 ] || [ "$#" == 0 ]; then
	echo 'Usage: getpass [platform-name]'
	exit 1
fi

cd $PASSWORDS

OUTPUT=`cat $FILE | grep -i $1`

TEST=`echo $OUTPUT | cut -c1-7`

if [ "$TEST" != "Account" ]; then
	echo 'Invalid Platform / Account'
	exit 1
fi

echo -n 'Enter Password: '
read -s INPUT
echo ''

if [ $INPUT != $MASTERPASS ]; then
	echo 'Invalid Password'
	exit 1
fi

# Ignore case, add line number
OUTPUT=`grep -inr $1 $FILE`

# Remove and store just the line number
LINENUMBER=`echo ${OUTPUT%%:*}` 

# Change line number to the line with password rather than the platform
LINENUMBER=$((LINENUMBER+2))

OUTPUT=`cat $FILE | head -n $LINENUMBER | tail -n 1 | cut -c11-27`

echo $OUTPUT | xclip -sel clip

echo *Password copied to clipboard*

