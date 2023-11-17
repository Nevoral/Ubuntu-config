#!/bin/bash

snap install tradingview
snap install transitionsdj
snap install whatsie
snap install htop
dpkg --add-architecture i386
apt update
apt install libnvidia-gl-535:i386
apt install winetricks -y
apt install libfuse2
apt install flatpak -y
apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.mozilla.firefox -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub com.sindresorhus.Caprine -y
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y
flatpak install flathub com.teamspeak.TeamSpeak -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub org.inkscape.Inkscape -y
flatpak install flathub org.blender.Blender -y
flatpak install flathub io.bassi.Amberol -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub org.gnome.Calendar -y
flatpak install flathub org.gnome.Calculator -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub net.lutris.Lutris -y
flatpak install flathub org.winehq.Wine -y
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


