#!/bin/bash

apt update && apt upgrade -y
apt install -y icecast2 libfdk-aac1 libsdl2-image-2.0-0 libsdl2-ttf-2.0-0 libsrt1 bubblewrap libao4 libavcodec58 libavdevice58 libavfilter7 libavformat58 libavutil56 libfaad2 libgd3 libjack-jackd2-0 liblo7 libmad0 libmagic1 libmp3lame0 libopus0 libportaudio2 libsamplerate0 libshine3 libsoundtouch1 libswresample3 libswscale5 libtag1v5 libvorbisfile3 libxpm4 logrotate ffmpeg mp3info
apt install -y locales
dpkg-reconfigure locales
# ru_RU.UTF-8
echo "export LANG=ru_RU.utf8" >> ~/.bashrc
echo "export LANGUAGE=ru_RU.utf8" >> ~/.bashrc
echo "export LC_ALL=ru_RU.utf8" >> ~/.bashrc
cd /radio/dist
dpkg -i liquidsoap_2.0.6-ubuntu-focal-1_amd64.deb
icecast2 --version
liquidsoap --version
