#!/bin/bash
#########################################################
#  Nextion Support for Nextion screen. Used to check    #
#  if files were installed correctly using Git button   #
#                                                       #
#  KF6S                                     05-01-2019  #
#  Edited by W9DXM                          11-30-2019  #
#########################################################

clear
echo
echo
echo "Check if files are properly installed to support the Nextion Display"
echo
echo
echo "List files in /usr/local/etc/Nextion_Support"
sudo ls -l --color /usr/local/etc/Nextion_Support
echo
echo
echo "Check tft file in /usr/local/etc/"
sudo ls -l --color /usr/local/etc/DXMINI_v2.tft | grep --color "DXMINI_v2"
echo
echo
echo "See if Nextion.Images existes, it will be deleted from tmp after a re-boot"
sudo ls -l --color /tmp/Nextion.Images
