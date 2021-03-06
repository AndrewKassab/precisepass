# precisepass (v3.02)

  PrecisePass is a secure, offline, and easy to use password manager written in bash that works on the terminal in Linux and the Windows Subsystem for Linux. ( MAC version in the works ) 
  
# FEATURES 
  - Add, retrieve, edit, and remove passwords quickly and efficiently.
  - Tab auto completion for commands and password retrieval.
  - Copy to clipboard
 
# BEFORE USING:
- First, clone and move into the repository.
```
git clone https://github.com/andrewkassab/precisepass
cd precisepass
```
- Now, run the install script.
```
 sudo ./install.sh
```
 - You should now be good to go! Feel free to delete all other files after 
 running the installation. Go ahead and use pass -a to create the password 
 file and begin adding passwords.

# USAGE
- pass : Displays usage when no parameter is passed in
- pass -a (--add): Prompts the user to add a new platform to the password file
- pass -g (--get) platform: Retreives the password for 'platform' and copys it 
  to the clipboard
- pass -e (--edit) platform: Allows the user to edit and change password for 'platform'
- pass -r (--remove) platform: Allows the user to remove 'platform' from the password file

# Normal / Example Output
```
_name_@pc_name:~$ pass -g <tab>
amazon  email   google  bank  facebook
steam   school  
_name_@pc_name:~$ pass -g amazon
[sudo] password for _name_:
Account: Amazon
Is this the correct account? (Y/n): y
Username: myusername@gmail.com
*Password copied to clipboard
```
# Extra information / Security
- **the manager does not encrypt passwords yet**
- On first use, a password file is created and the privileges are automatically 
set so that it can only be accessed with root / administrative priviledges.
Usage of the script will also require root, so the script will prompt the user 
for a password upon use if they are not already within a sudo / root session. 
The manager works by searching for specific key words in that password file 
and retrieving the text that follows them. 

# Goals / Improvements 
- Add Encryption
- Finish Mac Version
- Allow user to generate a password when adding passwords 
- Detect OS type to make installation simpler
- Add option flag -d after -g to display the password on screen instead of just copying. 
- Add option --list to list all platforms that have been stored 
- fix platform file refresh to happen faster ( when using add and remove )
- Check for .precisepass directory before first use
