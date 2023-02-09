#!/bin/sh
if ! which wget > /dev/null; then 
sudo apt-get install wget
fi

wget https://raw.githubusercontent.com/386konsult/smartcomply-agent-execs/daniel/SmartComplyAgent

chmod 4755 SmartComplyAgent

sudo cp SmartComplyAgent /bin/

rm SmartComplyAgent
rm agent_installer

SmartComplyAgent