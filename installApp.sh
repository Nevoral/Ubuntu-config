#!/bin/bash

snap install vlc
snap install thunderbird
snap install teams-for-linux
snap install inkscape
snap install caprine
snap install whatsie
snap install discord
snap install tradingview
snap install blender --classic
snap install transitionsdj
snap install spotify
snap install audacity
snap install bitwarden
snap install gnome-calculator
snap install amberol
snap install gnome-calendar
snap install libreoffice
snap install steam
dpkg --add-architecture i386
apt update
apt install libnvidia-gl-535:i386
apt install lutris -y
apt install wine -y
apt install winetricks -y
apt install libfuse2
apt install flatpak -y
apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.usebottles.bottles
mkdir /home/antak/AppImages
cd /home/antak/AppImages
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.0.5.17700.tar.gz
tar -xvzf jetbrains-toolbox-2.0.5.17700.tar.gz -C /home/antak/AppImages




