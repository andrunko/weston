#!/bin/bash

set -o xtrace

echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
apt-get update
apt-get -y --no-install-recommends install build-essential automake autoconf libtool pkg-config libexpat1-dev libffi-dev libxml2-dev libpixman-1-dev libpng-dev libjpeg-dev libcolord-dev mesa-common-dev libglu1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxcb1-dev libxcb-composite0-dev libxcb-xfixes0-dev libxcb-xkb-dev libx11-xcb-dev libx11-dev libudev-dev libgbm-dev libxkbcommon-dev libcairo2-dev libpango1.0-dev libgdk-pixbuf2.0-dev libxcursor-dev libmtdev-dev libpam0g-dev libvpx-dev libsystemd-dev libevdev-dev libinput-dev libwebp-dev libjpeg-dev libva-dev liblcms2-dev git libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev freerdp2-dev curl python3-pip python3-setuptools ninja-build

pip3 install --user git+https://github.com/mesonbuild/meson.git@0.49

mkdir -p /tmp/.X11-unix
chmod 777 /tmp/.X11-unix
