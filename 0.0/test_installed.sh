#!/bin/bash

# SOME FUNNY BROKEN STATE OF SCRIPT
# TRY RUN WITH lolcat ARGUMENT AND PIPE INTO lolcat
# (install before if not installed)
# :]
#
# -- help section --
#
#read REQUIRED_PKG=$1 # fix this tomorrow
#
#PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
#echo Checking for $REQUIRED_PKG: $PKG_OK
#if [ "" = "$PKG_OK" ]; then
#  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
####sudo apt-get --yes install $REQUIRED_PKG 
#fi

REQUIRED_PKG=package_name

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi

