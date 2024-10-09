#!/bin/bash

#this is a bash script I use to connect to my wifi. Because currently I use debian 11 (bullseye),
#I am encountring some difficulties connecting to wifi throgh networkManager. I thinck it's due to 
#some incompatibility between my my network card and Debian Os.
#Luckily, after doing some reserch I found out about some terminal commands to connect to wifi "manually"
# meaning not through natworkManager

#Note : this is should be done after initiating a password handshake (connecting to wifi for the first 
# time, and passing the password) with the command wpa-passphrase.

#deactivate all enabled  network interfaces 
sudo /sbin/ifdown -a --read-environment 

sudo rm /run/wpa_supplicant/wlo1

#join a protected wireless network and run it in a deamon 
sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant-wlo1.conf

#reactivate all disabled networking interfaces
sudo /sbin/ifup -a --read-environment 
