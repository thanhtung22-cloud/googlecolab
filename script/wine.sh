#! /bin/bash

sudo dpkg --add-architecture i386

sudo wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/amd64/libfaudio0_19.07-0~bionic_amd64.deb
sudo wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/i386/libfaudio0_19.07-0~bionic_i386.deb

sudo apt install ./libfaudio0_19.07-0~bionic_amd64.deb --fix-broken install
sudo apt install ./libfaudio0_19.07-0~bionic_i386.deb --fix-broken install

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

sudo apt-add-repository --remove 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Ubuntu_18.10_standard ./'

sudo apt-get update -y
sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 libfaudio0 libasound2-plugins:i386 -y

sudo apt-get install --install-recommends winehq-stable -y
sudo apt-get install --install-recommends winehq-devel -y
sudo apt-get install --install-recommends winehq-staging -y