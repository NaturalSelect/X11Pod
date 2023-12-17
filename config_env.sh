#!/bin/bash

# /etc/environment
echo "LANG=\"zh_CN.UTF-8\"" >> /etc/environment
echo "LANGUAGE=\"zh_CN:zh:en_US:en\"" >> /etc/environment

# /var/lib/locales/supported.d/local
echo "en_US.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
echo "zh_CN.GBK GBK" >> /var/lib/locales/supported.d/local
echo "zh_CN GB2312" >> /var/lib/locales/supported.d/local

locale-gen