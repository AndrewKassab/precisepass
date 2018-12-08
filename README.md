# precisepass

  PrecisePass is a secure, offline, and easy to use password manager written in bash that works on the terminal in Linux and the Windows Subsystem for Linux. ( MAC version in the works ) 
  
# BEFORE USING:
- First, clone the repository and move into a proper directory that contains the pass file for your platform.
```
git clone https://github.com/precisemotion/precisepass
cd precisepass
cd linux (or wsl, or mac)
```
- After cloning and changing into the corresponding directory, use the following commands.
 ```
 chmod 500 pass 
 sudo mv pass /usr/local/bin
 ```
 - You should now be good to go! Feel free to delete all other files after copying the script to your PATH. Go ahead and use pass -a to create the password file and begin adding passwords.

# USAGE
- pass : Displays usage when no parameter is passed in
- pass -a (add): Prompts the user to add a new platform to the password file
- pass -g (get) platform: Retreives the password for 'platform' and copys it to the clipboard
- pass -e (edit) platform: Allows the user to edit and change the password for 'platform'
- pass -r (remove) platform: Allows the user to remove 'platform' from the password file

# Normal / Example Output
```
_name_@pc_name:~$ pass -g amazon
[sudo] password for _name_:
Account: Amazon
Is this the correct account? (Y/n): y
Username: myusername@gmail.com
*Password copied to clipboard*
```
# Extra information / Security
On first use, a password file is created in the user's /etc directory. The privileges are automatically set so that it can only be accessed with root / administrative priviledges. Use of the script will also require root, so the script will prompt the user for a password upon use if they are not already within a sudo / root session. The manager works by searching for specific key words in that password file and retrieving the text that follows them.

# Goals / Improvements 
- Finish Mac Version
- Allow user to generate a password when adding passwords 
