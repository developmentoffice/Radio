#!/bin/bash

if [[ -z $1 || ($1 != "music" && $1 != "ny" && $1 != "9may" && $1 != "jingles") ]]
then
    echo "Usage: ./playlist.sh (music|ny|9may|jingles)"
    exit 1
fi

case "$1" in
    9may)
        ls -1 /radio/sounds/music/9may/*.mp3 > /radio/sounds/music/playlist.m3u
    ;;
    ny)
        ls -1 /radio/sounds/music/NY/*.mp3 > /radio/sounds/music/playlist.m3u
    ;;
    music)
        ls -1 /radio/sounds/music/*.mp3 > /radio/sounds/music/playlist.m3u
    ;;
    jingles)
        ls -1 /radio/sounds/jingles/*.wav > /radio/sounds/jingles/playlist.m3u
    ;;
esac
