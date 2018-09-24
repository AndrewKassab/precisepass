# password
  This is a simple password manager that works both natively on linux or on the Windows Subsystem for Linux.
  
BEFORE USING: 
- You must first create an empty password.txt file.
- The scripts must be edited to include the directory path for the password file and the name of the password file.

IF USING WINDOWS SUBSYSTEM FOR LINUX: 
- You must edit the getpass.sh file on line 65 and remove the hash character in order to uncomment the line. 
- You must also remove or comment out line 67 by adding the hash character. 
* This is because on linux we use the Xclip command to copy the lines to the clipboard while Windows uses clip.exe
