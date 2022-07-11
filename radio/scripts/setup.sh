#!/bin/bash

apt update && apt upgrade -y
apt install -y icecast2 libfdk-aac1 libsdl2-image-2.0-0 libsdl2-ttf-2.0-0 libsrt1 bubblewrap
cd /radio/dist
dpkg -i liquidsoap_2.0.6-ubuntu-focal-1_amd64.deb
