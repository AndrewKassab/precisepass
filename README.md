# precisepass

  This is a simple password manager that works on Linux, Mac, and the Windows Subsystem for Linux.
  It's secure, easy to use, and works completely offline. 
  
# BEFORE USING:
 - After cloning, navigate to the proper directory containing the pass file meant for your platform and use the following commands.
 1. chmod 500 pass 
 2. sudo cp pass /usr/bin
 - You should now be good to go! Feel free to delete all other files after copying the script to your PATH. Go ahead and use pass -a to create the password file and begin adding passwords.

# USAGE
- pass -a (add): Prompts the user to add a new platform to the password file
- pass -g (get) platform: Retreives the password for 'platform' and copys it to the clipboard
- pass -e (edit) platform: Allows the user to edit and change the password for 'platform'
- pass -r (remove) platform: Allows the user to remove 'platform' from the password file

# Extra information / security 
On first use, a password file is created in the user's /etc directory. The privileges are automatically set to 000, so that it can only be accessed with root / administrative priviledges. Use of the script will also require root, so the script will prompt the user for a password upon use if they are not already within a sudo / root session. 

# What I learned:

  - Logic of scripting in bash
  - Using linux variables
  - Basic commands in linux
  - Passing in parameters to a script
  - Turning scripts into commands in the linux environment 
  - Adapting the script to work on different platforms
