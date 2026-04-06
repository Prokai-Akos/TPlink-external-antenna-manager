#!/bin/bash

#This script is for reversing the actions of tplinkconnect.sh

#Disconnects the external tplink adapter
nmcli device disconnect wlp0s20f0u2

#Reconnects the default interface
nmcli device connect wlp2s0

nmcli device
echo "Tplink disconnected! Internal reconnected!"
