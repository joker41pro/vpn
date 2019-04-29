#!/bin/bash
#
# Original script by fornesia, rzengineer and fawzya 
# Mod by Phisanu
# 
# ==================================================

if [ $USER != 'root' ]; then
	echo "You must run this as root"
	exit
fi

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;

if [[ -e /etc/debian_version ]]; then
	#OS=debian
	RCLOCAL='/etc/rc.local'
else
	echo "You are not running this script on Debian OS"
	exit
fi

vps="vps";

if [[ $vps = "vps" ]]; then
	source="https://raw.githubusercontent.com/Clrkz/VPSAutoScrptz/master"
else
	source="https://raw.githubusercontent.com/Clrkz/VPSAutoScrptz/master"
fi

# go to root
cd
