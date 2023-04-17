#!/bin/sh

# remove the main app, ccsrh, remove cardfile, remove pcfile

if [ -e /usr/local/bin/SmartComplyAgent ] ;then
    sudo rm /usr/local/bin/SmartComplyAgent

    if [ -e /usr/local/bin/ccsrch ] ;then
        sudo rm /usr/local/bin/ccsrch
    fi
    if [ -e /usr/local/bin/cardfile.sh ] ;then
        sudo rm /usr/local/bin/cardfile.sh
    fi
    if [ -e /usr/local/bin/pcfile.sh ] ;then
        sudo rm /usr/local/bin/pcfile.sh
    fi
    
else
    echo "SmartComplyAgent app is not installed"
fi

rm unagent_exe.sh
