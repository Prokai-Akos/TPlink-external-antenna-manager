#!/bin/bash

#defining color variables
RED = '\033[0;31m'
GREEN = '\033[0;32m'
YELLOW = '\033[0;33m'
COLOREND ='\033[0m'

#This script is for disabling the built in wireless interface then
#enabling the external tplink high gain 150mpbs antenna.
#After usage is over you just run these commands backwards

#Disconnecting the built in interface
nmcli device disconnect wlp2s0

#Checking if it is indeed disconnected
if [ $? -eq 0 ]; then
	echo "${GREEN}Default antenna disconnected!${COLOREND}"
else
	echo "${RED}Error, perhaps the antenna is already down?${COLOREND}"
fi

#Connecting the external tplink high gain antenna
nmcli device connect wlp0s20f0u2

#Checking if it is indeed connected
if [ $? -eq 0 ]; then
	echo "${GREEN}TPlink adapter connected!${COLOREND}"
else
	echo "${RED}Error! If its a wireless error, please use${COLOREND}"
	echo "${YELLOW}nmcli device wifi connect <ssid> password <pw>${COLOREND}"
fi

nmcli device
echo "To reverse this please run disconnectTplink.sh!"
