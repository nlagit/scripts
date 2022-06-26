#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                            PHP Installer                                 #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nlagit/scripts                      #"
echo "#                          Last Update: 26.06.2022                         #"
echo "############################################################################"
sleep 3
clear 
echo "############################################################################"
echo "#                            Checking for Root                             #"
echo "############################################################################"
if (( $EUID != 0 )); then
echo "############################################################################"
echo "#                            Please run as root                            #"
echo "############################################################################"
    exit
fi
sleep 1
clear
echo "############################################################################"
echo "#                             Checked for Root                             #"
echo "############################################################################"
sleep 2
clear
echo "############################################################################"
echo "#                          Press Enter to continue                         #"
echo "############################################################################"
read continuepress
clear
echo "############################################################################"
echo "#                            Installing PHP                                #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                      Server Update (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                      Server Upgrade (apt upgrade -y)                     #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                  PHP Installation (apt-get install php -y)               #"
echo "############################################################################"
apt-get install php -y
wait -n 
echo "############################################################################"
echo "#                            Installed PHP                                 #"
echo "############################################################################"

