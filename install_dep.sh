#!/bin/bash

apt-get update
apt-get upgrade
apt-get install x11-xserver-utils -y
apt install git -y
apt install wget -y
apt install libcurl4-openssl-dev -y
apt install libsqlite3-dev -y
apt install python3 -y
apt install python3-pip -y
apt install curl -y
apt install pkg-config -y
apt install libgl1 -y
apt install libegl1 -y
apt install ibxkbcommon-x11-0 -y
apt install dbus -y
apt install libsm-dev -y
apt install libnss3 -y
apt install libxcomposite1 -y
apt install libxdamage1 -y
apt install libxi6 libxtst6 libxrender1 -y
apt install libasound2 -y
apt install libxkbfile1 -y
apt install language-pack-zh-hans -y

# /etc/environment
echo "LANG=\"zh_CN.UTF-8\"" >> /etc/environment
echo "LANGUAGE=\"zh_CN:zh:en_US:en\"" >> /etc/environment

# /var/lib/locales/supported.d/local
echo "en_US.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.GBK GBK" >> /var/lib/locales/supported.d/local
echo "zh_CN GB2312" >> /var/lib/locales/supported.d/local

locale-gen

apt install fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming -y

apt install ibus -y
apt install ibus-gtk ibus-gtk3 -y
apt install ibus-pinyin -y

