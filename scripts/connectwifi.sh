#!/bin/zsh

nmcli radio wifi on
nmcli device wifi list

echo "Enter your SSID: "
read SSID

nmcli device wifi connect $SSID --ask
