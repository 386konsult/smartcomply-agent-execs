#!/bin/sh
if ! which wget > /dev/null; then 
sudo apt-get install wget
fi

wget https://smartcomply.s3.amazonaws.com/linux_app/SmartComplyAgent

sudo chmod 4755 SmartComplyAgent

sudo cp SmartComplyAgent /bin/

rm SmartComplyAgent
rm agent_installer
rm agent_exe.sh

SmartComplyAgent
