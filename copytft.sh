#!/bin/bash
############################################################
#  Change DMR Master in /etc/mmdvmhost, find old value and #
#  substitute with new value from Profie 2 screen passed   #
#  in $1.                                                  #
#                                                          #
#  KF6S                                        05-20-2019  #
#  Edited by W9DXM			       11-30-2019  #
############################################################
# Use screen model from command $1
if [ -z "$1" ]; then
        exit
fi

model=$1
tft='.tft' gz='.gz'
#Put Pi-Star file system in RW mode
sudo mount -o remount,rw /
sleep 1s
#Check to make sure that NO TFT file exists at the destination
rm /usr/local/etc/$model$tft
cp /tmp/Nextion.Images/$model$tft /usr/local/etc/$model$tft;
status=$?

if test $status -eq 0
then
        echo "DXMINI v2 file successfully copied!"

else
        #Put Pi-Star file system in RW mode
        sudo mount -o remount,rw /
        #Check to make sure that NO TFT file exists at the destination
        rm /usr/local/etc/$model$tft
        cp /tmp/Nextion.Images/$model$tft /usr/local/etc/$model$tft;
        status=$?
        if test $status -eq 0
        then
                echo "DXMINI v2 file successfully copied, on second try!"
        else
                echo "DXMINI v2 file copy failed!"
        fi
fi
