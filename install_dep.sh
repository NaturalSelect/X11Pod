#!/bin/bash

apt update
apt install x11-xserver-utils -y
apt install git -y
apt install wget -y
apt install libcurl4-openssl-dev -y
apt install libsqlite3-dev -y
apt install curl -y
apt install language-pack-zh-hans -y
apt install dbus -y
apt install libbgm1 -y
apt install libasound2 -y
apt install libgl1 -y
apt install libegl1 -y
apt install fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming -y
apt install libcanberra-gtk-module libcanberra-gtk3-module -y

# /etc/environment
echo "LANG=\"zh_CN.UTF-8\"" >> /etc/environment
echo "LANGUAGE=\"zh_CN:zh:en_US:en\"" >> /etc/environment

# /var/lib/locales/supported.d/local
echo "en_US.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.GBK GBK" >> /var/lib/locales/supported.d/local
echo "zh_CN GB2312" >> /var/lib/locales/supported.d/local

locale-gen

apt install ibus ibus-pinyin -y

# For checking
apt install gedit -y