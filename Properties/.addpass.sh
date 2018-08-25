#/bin/bash

# Directory containing passwords
PASSWORDS=~/Documents/Lastonestanding/Properties
#File containing passwords
FILE=.savefiles.txt
# Access Password

if [ "$#" -gt 0 ]; then
  echo 'Usage: addpass'
  exit 1
fi

cd $PASSWORDS

# Platform 
echo -n 'Enter platform name: '
read PLATFORM
while [ -z "$PLATFORM" ]; do
  echo 'Blank entry, try again'
  echo -n 'Enter platform name: '
  read PLATFORM
done

# User / Account name
echo -n 'Enter user name: '
read ACCOUNT
while [ -z $ACCOUNT ]; do
  echo 'Blank entry, try again'
  echo -n 'Enter user name: '
  read ACCOUNT
done

# Password
echo -n 'Enter password: '
read PASS
while [ -z $PASS ]; do
  echo 'Blank entry, try again'
  echo -n 'Enter password: '
  read PLATFORM
done

echo ''

echo "Account: $PLATFORM"
echo "Username: $ACCOUNT"
echo "Password: $PASS"

echo ''
echo -n 'Add entry? (y/N):'
read RESPONSE

# If the user responds yes
if [ ! -z "$RESPONSE" ] &&  ([ $RESPONSE == "y" ] || [ $RESPONSE == "Y" ]); then
  echo '' >> $FILE
  echo "Account: $PLATFORM" >> $FILE
  echo "Username: $ACCOUNT" >> $FILE
  echo "Password: $PASS" >> $FILE
  echo 'Account and password successfully added'
# If the user responds no
else 
  echo 'Entry canceled'
  exit 1
fi


