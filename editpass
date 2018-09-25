#!/bin/bash

# Directory containing passwords
PASSWORDS=
# File containing passwords
FILE=
# Access Password
MASTERPASS=""

if [ "$#" == 0 ] || [ $# -gt 1 ]; then
  echo 'Usage: editpass [platform-name]'
  exit 1
fi

cd $PASSWORDS

OUTPUT=`cat $FILE | grep -i $1`

TEST=`echo $OUTPUT | cut -c1-7`

if [ "$TEST" != "Account" ]; then
  echo 'Invalid Platform / Account'
  exit 1
fi

echo -n 'Enter Master Password: '
read -s INPUT
echo ''

if [ $INPUT != $MASTERPASS ]; then
  echo 'Invalid Password'
  exit 1
fi

# Search for the account ignoring case
OUTPUT=`grep -i $1 $FILE`

echo $OUTPUT
echo -n "Is this the correct account? (y/N): "
read RESPONSE

# Include line number
OUTPUT=`grep -inr $1 $FILE`

# If the user responds no
if [ -z "$RESPONSE" ] || ([ $RESPONSE != "y" ] && [ $RESPONSE != "Y" ]); then
  echo 'Use more specific account name.'
  exit 1
fi

unset RESPONSE

# While the user responds no
while [ -z "$RESPONSE" ] || ([ $RESPONSE != "y" ] && [ $RESPONSE != "Y" ]); do
  echo -n 'Enter new password: '
  read NEWPASS
  echo -n "Is this correct?: $NEWPASS (y/N): "
  read RESPONSE
done

# Linenumber set to account line
LINENUMBER=`echo ${OUTPUT%%:*}` 

# Line changed to line containing password
LINENUMBER=$((LINENUMBER+2))

# Replaces line at LINENUMBER
sed -i "${LINENUMBER}s/.*/Password: ${NEWPASS}/" $FILE

echo 'Password successfully changed'



