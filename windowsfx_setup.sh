#!/bin/bash

# Update repo lists and update all installed packages
sudo apt update && sudo apt upgrade -y

# Removal and debloating of installed packages and software - UNDERFEATURED AND DEPRECATED.
sudo apt remove -y akregator android-file-transfer antimicro audacity bluedevil gambas3 gambas3-* yelp gnote gedit gimp gparted inkscape juk k3b kaddressbook kate kcalc kdeconnect khelpcenter kmail knotes kodi kopete korganizer ktnef kwalletmanager kwrite obs-studio playonlinux grdesktop usb-creator-kde steam-devices sweeper transmission vim winetricks xterm anydesk libkf5akonadicontact5abi1 libkf5contacteditor5 libkf5contacts5 dconf-editor onedrive konqueror dragonplayer steam teams telegram xserver-xorg-input-wacom microsoft-edge-dev microsoft-online-apps packages-microsoft-prod google-chrome-stable

# Cleanup of removed packages
sudo apt autoremove -y

# Installation of recommended packages
sudo apt install -y chromium-bsu

# Add shortcuts to desktop
sudo cd ~/Desktop
mkdir .icons
cd .icons
wget https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fzv893kwy4t3aji512fdckhgk-wpengine.netdna-ssl.com%2Fwp-content%2Fuploads%2Fgmail-icon.png&f=1&nofb=1
wget https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Google_Chrome_icon_\(September_2014\).svg/1200px-Google_Chrome_icon_\(September_2014\).svg.png
cp 1200px-Google_Chrome_icon_\(September_2014\).svg.png google_chrome.png
cd ..
touch Gmail.desktop
touch Chrome.desktop
echo "[Desktop Entry]
Name=Gmail
Comment="Shortcut to Google's email service."
Exec=chromium-bsu https://mail.google.com/mail/u/0/
Icon=.icons/gmail-icon.png
Terminal=false
Type=Application" > Gmail.desktop
touch Chrome.desktop
echo "[Desktop Entry]
Name=Google Chrome
Comment="Shortcut to Google's web browser."
Exec=chromium-bsu
Icon=.icons/google_chrome.png
Terminal=false
Type=Application" > Chrome.desktop
