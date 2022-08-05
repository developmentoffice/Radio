#!/bin/bash

total_files=$(ls -la /radio/sounds/music/*.mp3 | wc -l)
total_seconds=$(( $(mp3info -p "%S + " /radio/sounds/music/*.mp3) 0 ))

printf "Total files: %d\n" $total_files
printf "Total playing time: %02dh:%02dm:%02ds\n" $((total_seconds/3600)) $((total_seconds%3600/60)) $((total_seconds%60))

echo "Generate artists list..."
artists=()
for file in /radio/sounds/music/*.mp3; do
    artist=$(ffprobe "$file" 2>&1 | sed -E -n 's/^ *artist *: (.*)/\1/p')
    if [[ ! "${artists[*]}" =~ "$artist" ]]; then
        artists+=("$artist")
    fi
done
printf "Artists (%d):\n" ${#artists[@]}
printf "%s\n" "${artists[@]}" | sort
