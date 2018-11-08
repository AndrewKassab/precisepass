# precisepass

  This is a simple password manager that works both natively on Linux or on the Windows Subsystem for Linux.
  This password manager can easily retrieve your passwords and copy them to your clipboard.
  
# Project Details

  This project was created as a way for me to get more familiar with bash scripting and linux commands in 
  general. I already keep my passwords in a hidden file as backuo and had the idea of creating a tool 
  to retrieve them and just expanded upon that.

# What I learned:

  - Logic of scripting in bash (if-statements, etc.)
  - Using linux variables
  - Basic commands in linux
  - Passing in parameters to a script
  - Turning scripts into commands in the linux environment 
  - Adapting the script to work on different platforms
  
# Goals
  
  - Eliminate need for several scripts, instead use modifiers -g (get) -a (add) -e (edit)
  - Add encription to passwords 
  
# BEFORE USING: 
- You must first create an empty password.txt file.
- The scripts must be edited to include the directory path for the password file and the name of the password file.
- Change the MASTERPASS variable in getpass.sh and editpass.sh to a custom password that allows access to the rest.
- Move all 3 scripts into /usr/bin or an appropriate PATH. 

IF USING WINDOWS SUBSYSTEM FOR LINUX: 
- You must edit the getpass.sh file on line 65 and remove the hash character in order to uncomment the line. 
- You must also remove or comment out line 67 by adding the hash character. 
* This is because on linux we use the Xclip command to copy the lines to the clipboard while Windows uses clip.exe

# USAGE / MANUAL:
- addpass: type addpass and you will be prompted for the name of the platform, username, and password being added.
- getpass: getpass "platform_name" , will return the password for the platform parameter you include, E.G, getpass bank.
- editpass: editpass "platform_name", allows you to change the password for the platform parameter, E.G, editpass bank.
