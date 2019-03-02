#!/bin/bash
# Author: Andrew Kassab
# Description: Handles bash tab-completion for the precisepass 
#              password manager.
# Date: 03-01-2019

OPTS="--add --get --edit --remove --help"
PLATFORMS=`cat /etc/platforms.txt` 

# Get the amount of passwords from our password file
# NUMPASSWORDS=`sudo grep Account: /etc/passwords.txt | wc -l`
# COUNTER=1

# loop over and grab each platform to add it to autocompletion
# while [ $COUNTER -le $NUMPASSWORDS ]; do
#    OUTPUT=`sudo grep Account: /etc/passwords.txt | sed -n ${COUNTER}p`
#    # Removes the "Account: " keyword"
#    PLATFORM=${OUTPUT:9}
#    # Extracts only the first word of the platform name
#    PLATFORM=`echo $PLATFORM | cut -d' ' -f1`
#    # convert to lowercase 
#    PLATFORM=`echo $PLATFORM | tr '[:upper:]' '[:lower:]'`
#    # Add to platforms 
#    PLATFORMS+="$PLATFORM "
#    # move to next line of grep output
#    let COUNTER=COUNTER+1
#done

# handles completions 
opt_completions(){
    
    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}

    # if we are on the 1st argument
    if [ $COMP_CWORD -eq 1 ]; then
        COMPREPLY=($(compgen -W "${OPTS}" -- $cur) ) 
    elif [ $COMP_CWORD -eq 2 ]; then
        case "$prev" in
            "--add")
                return
                ;;
            "--help")
                return 
                ;;
            *)
                COMPREPLY=($(compgen -W "${PLATFORMS}" -- $cur))
                ;;
        esac
    fi
}

complete -F opt_completions pass
