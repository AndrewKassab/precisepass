#!/bin/bash

# check OS type
if [ "$OSTYPE" == "linux-gnu" ]; then
  # WSL or Linux
  if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    # WSL 
    echo "Installing..."
    sudo install wsl/pass /usr/local/bin
    echo "Setting up bash-completion..."
    sudo install wsl/pass-completion /etc/bash_completion.d
  else 
    # linux
    echo "Installing..."
    sudo install linux/pass /usr/local/bin
    echo "Setting up bash-completion..."
    sudo install linux/pass-completion /etc/bash_completion.d
  fi
else
  # mac
  echo "Invalid OS type, exiting..."
  exit -1
fi

echo "Done. Run 'pass -a' to begin adding passwords or 'pass' to display usage."
