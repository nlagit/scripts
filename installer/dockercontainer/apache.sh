#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                         Apache Docker Installer                          #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/gitipexa/scripts                    #"
echo "#                          Last Update: 11.06.2022                         #"
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
sleep 1
clear
echo "############################################################################"
echo "#                        Installing Apache Docker                          #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                       Server Update (apt update -y)                      #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                       Server Upgrade (apt upgrade -y)                    #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                           Enter the Name & Port                          #"
echo "############################################################################"
read -p "Please enter Apache Container Name (apache is recommended): " apachename
read -p "Please enter Apache Port 1 (80 is recommended): " apacheport1
echo "############################################################################"
echo "#            Downloading and Installing Apache Container                   #"
echo "############################################################################"
docker run -d --name $apachename -p $apacheport1:$apacheport1 httpd
wait -n 
clear
echo "############################################################################"
echo "#                     Installed Apache Docker                              #"
echo "#                                                                          #"
echo "#      Apache Name  | $apachename                                          #"
echo "#      Apache Port1 | $apacheport1                                         #"
echo "#                                                                          #"
echo "############################################################################"

