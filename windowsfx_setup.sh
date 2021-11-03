#!/bin/bash

# Update repo lists and update all installed packages
sudo apt update && sudo apt upgrade -y

# Removal and debloating of installed packages and software - UNDERFEATURED AND DEPRECATED.
sudo apt remove akregator android-file-transfer antimicro audacity bluedevil gambas3 yelp gnote gedit gimp gparted inkscape juk k3b kaddressbook kate kcalc kdeconnect khelpcenter kmail knotes kodi kopete korganizer ktnef kwalletmanager kwrite obs-studio playonlinux grdesktop sieveeditor spectacle usb-creator-kde steam-devices sweeper transmission uxterm vim winetricks xterm google-chrome anydesk libkf5akonadicontact5abi1 libkf5contacteditor5 libkf5contacts5 libkpiimgapicontacts5 dconf-editor onedrive konqueror dragonplayer spotify steam teams telegram libwacom-bin libwacon-common libwacom2 xserver-xorg-input-wacom onlyoffice microsoft-edge-dev microsoft-online-apps packages-microsoft-prod

# Installation of recommended packages
sudo apt install -y chromium
