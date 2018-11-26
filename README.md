# precisepass

  PrecisePass is a secure, offline, and easy to use password manager written in bash that works on the terminal in Linux, Mac, and the Windows Subsystem for Linux. 
  
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
 sudo cp pass /usr/bin
 ```
 - You should now be good to go! Feel free to delete all other files after copying the script to your PATH. Go ahead and use pass -a to create the password file and begin adding passwords.

# USAGE
- pass : Displays usage when no parameter is passed in
- pass -a (add): Prompts the user to add a new platform to the password file
- pass -g (get) platform: Retreives the password for 'platform' and copys it to the clipboard
- pass -e (edit) platform: Allows the user to edit and change the password for 'platform'
- pass -r (remove) platform: Allows the user to remove 'platform' from the password file

# Extra information
On first use, a password file is created in the user's /etc directory. The privileges are automatically set so that it can only be accessed with root / administrative priviledges. Use of the script will also require root, so the script will prompt the user for a password upon use if they are not already within a sudo / root session. The manager works by searching for specific key words in that password file and retrieving the text that follows them. Make sure you are not creating multiple instances of the same platform.

# Next Version / TODO
- Check if a platform already exists when trying to add a new password, and display a corresponding message 

# What I learned:
  - Logic of scripting in bash
  - Using linux variables
  - Basic commands in linux
  - Passing in parameters to a script
  - Turning scripts into commands in the linux environment 
  - Adapting the script to work on different platforms
