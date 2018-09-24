# password

DESCRIPTION:
  This is a simple password manager that works both natively on linux or on the Windows Subsystem for Linux.
  
BEFORE USING: 
- You must first create an empty password.txt file.
- The scripts must be edited to include the directory path for the password file and the name of the password file.
- Change the MASTERPASS variable in getpass.sh and editpass.sh to a custom password that allows access to the rest.

IF USING WINDOWS SUBSYSTEM FOR LINUX: 
- You must edit the getpass.sh file on line 65 and remove the hash character in order to uncomment the line. 
- You must also remove or comment out line 67 by adding the hash character. 
* This is because on linux we use the Xclip command to copy the lines to the clipboard while Windows uses clip.exe

ALIAS' CREATION:
- Edit the .bashrc or .bash_aliases file and add the following:
- alias getpass='bash ~/"directory_containing_scripts"/getpass.sh'
- alias editpass='bash ~/"directory_containing_scripts/editpass.sh'
- alias addpass='bash ~/"directory_containing_scripts"/addpass.sh'

USAGE / MANUAL:
- addpass: type addpass and you will be prompted for the name of the platform, username, and password being added.
- getpass: getpass "platform_name" , will return the password for the platform parameter you include, E.G, getpass bank.
- editpass: editpass "platform_name", allows you to change the password for the platform parameter, E.G, editpass bank.
