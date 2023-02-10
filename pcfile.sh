#!/bin/bash
#echo Enter your email
zenity --warning --text="Make  sure  your  internet  connection  is  running"
#read varemail
uservar=
#read -p 'Enter your email: ' uservar
name=$(sudo dmidecode -s system-product-name)
num=$(sudo dmidecode -s system-serial-number)
uuid=$(sudo dmidecode -s system-uuid)

now=$(gsettings get org.gnome.desktop.lockdown disable-lock-screen)
 #echo "System locked: $now"
  
if  lsblk | grep -qiP ".*crypt.*"
then 
	msg="True" 
else
	msg="False"
fi
#-H "Content-Type: application/json" 
curl -X POST -H "Content-Type: application/json" -d '{ "email":"'"$uservar"'","name":"'"$name"'","identifyingnumber":"'"$num"'","uuid":"'"$uuid"'","lock_status":"'"$now"'","encryted":"'"$msg"'" }' http://iqsa.herokuapp.com/api/scans/ubuntu/

