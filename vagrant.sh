#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
export DEBCONF_NONINTERACTIVE_SEEN=true

# Basic update.
apt-get update -y
apt-get dist-upgrade -y

# Basic dependencies.
apt-get install -y wget dpkg sed curl git zip unzip ssh vim w3m

# GUI.
apt-get install -y lubuntu-desktop

# Google Chrome.
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt-get install -f -y

# Visual Studio Code.
wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
dpkg -i vscode.deb
apt-get install -f -y

# VirtualBox Guest Additions.
apt-get install -y virtualbox-guest-additions-iso
apt-get install -y virtualbox-guest-dkms
apt-get install -y virtualbox-guest-utils
apt-get install -y virtualbox-guest-x11

# Android Studio.
snap install android-studio --classic
apt-get install -y android-tools-adb android-tools-fastboot

# Flutter.
snap install flutter --classic
flutter doctor

# Timezone.
echo "sudo timedatectl set-timezone America/Sao_Paulo" >> /home/vagrant/.profile

# Keyboard.
sed -i "/XKBMODEL=/c\XKBMODEL=\"abnt2\"" /etc/default/keyboard
sed -i "/XKBLAYOUT=/c\XKBLAYOUT=\"br\"" /etc/default/keyboard
echo "sudo setxkbmap -model abnt2 -layout br" >> /home/vagrant/.profile
echo "sudo setxkbmap -model abnt2 -layout br" >> /home/vagrant/.bashrc

# Inotify - Increasing the amount of inotify watchers (https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers).
echo "echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p" >> /home/vagrant/.profile

echo "Vagrant workspace created!"
