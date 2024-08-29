#!/bin/bash

#deactivate all enabled  network interfaces 
sudo /sbin/ifdown -a --read-environment 


sudo rm /run/wpa_supplicant/wlo1

#join a protected wireless network and run it in a deamon 
sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant-wlo1.conf


#reactivate all disabled networking interfaces
sudo /sbin/ifup -a --read-environment 
