FROM ubuntu:22.04
LABEL maintainer "NaturalSelect<2145973003@qq.com>"


# Basic Packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install \
	git \
	libasound2 \
	libatk1.0-0 \
	libcairo2 \
	libcups2 \
	libexpat1 \
	libfontconfig1 \
	libfreetype6 \
	libgtk2.0-0 \
	libpango-1.0-0 \
	libx11-xcb1 \
	libxcomposite1 \
	libxcursor1 \
	libxdamage1 \
	libxext6 \
	libxfixes3 \
	libxi6 \
	libxrandr2 \
	libxrender1 \
	libxss1 \
	libxtst6 \
	openssh-client \
	gedit \
	tzdata \
	--no-install-recommends

# Chinese
RUN apt-get update && apt-get install language-pack-zh-hans fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming -y
ENV \
	LANG=zh_CN.UTF-8 \
	LC_ALL=zh_CN.UTF-8
RUN localedef -i zh_CN -c -f UTF-8 zh_CN.UTF-8

# Sound
RUN apt-get install -y pulseaudio pulseaudio-utils

# User
RUN apt-get install sudo -y
RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME
RUN echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN rm -rf /var/lib/apt/lists/*

WORKDIR $HOME
