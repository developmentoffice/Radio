#!/bin/bash

total_seconds=$(( $(mp3info -p '%S + ' /radio/sounds/music/*.mp3) 0 ))
printf 'Total playing time: %02dh:%02dm:%02ds\n' $((total_seconds/3600)) $((total_seconds%3600/60)) $((total_seconds%60))
