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

apt update
apt upgrade -y
apt dist-upgrade -y
apt autoremove -y
apt autoclean -y
reboot

wget -qO - https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_23.04/Release.key | gpg --dearmor | sudo tee /usr/share/keyrings/obs-onedrive.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/obs-onedrive.gpg] https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_23.04/ ./" | sudo tee /etc/apt/sources.list.d/onedrive.list
apt update
apt install --no-install-recommends --no-install-suggests onedrive

wget -P /home/antak/AppImages https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.16/Obsidian-1.4.16.AppImage
chmod u+x /home/antak/AppImages/Obsidian-1.4.16.AppImage
cd /home/antak/AppImages
./AppImageDesktop.sh "Obsidian" "/home/antak/AppImages/Obsidian-1.4.16.AppImage" "/home/antak/AppImages/Icons/obsidian-icon.png" "Notes" "Notes application"
cp /home/antak/AppImages/Obsidian.desktop /usr/share/applications/


