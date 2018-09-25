#!/bin/bash

#Directory Containing Passwords
PASSWORDS=
#File Containing Passwords
FILE=
#Access Password
MASTERPASS=""

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

echo $OUTPUT
echo -n "Is this the correct account? (Y/n): "
read RESPONSE

# If the user responds no
if [ ! -z "$RESPONSE" ] && ([ $RESPONSE != "y" ] && [ $RESPONSE != "Y" ]); then
  echo 'Use more specific account name.'
  exit 1
fi

# Ignore case, add line number
OUTPUT=`grep -inr $1 $FILE`

# Remove and store just the line number
LINENUMBER=`echo ${OUTPUT%%:*}` 

# Change line number to the line with user name rather than the platform
LINENUMBER=$((LINENUMBER+1))

# Prints out username
echo `cat $FILE | head -n $LINENUMBER | tail -n 1` 

# Change line number to the line with password rather than the username
LINENUMBER=$((LINENUMBER+1))

# Prints out password
echo `cat $FILE | head -n $LINENUMBER | tail -n 1` 

# Copys password to the clipboard
# WINDOWS SUBSYSTEM VERSION
# echo `cat $FILE | head -n $LINENUMBER | tail -n 1 | cut -c11-27` | clip.exe
# LINUX VERSION
echo `cat $FILE | head -n $LINENUMBER | tail -n 1 | cut -c11-27` | xclip -sel clip

echo *Password copied to clipboard*

