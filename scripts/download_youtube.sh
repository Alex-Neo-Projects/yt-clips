#!/usr/bin/env bash 
YT_URL=$1
UUID=$(uuidgen)
UUID_DOWNLOAD_PATH="./youtube-downloads/$UUID.mp3"
yt-dlp -x --audio-format mp3 -o "$UUID_DOWNLOAD_PATH" -- "$YT_URL" &> /dev/null
echo "$UUID"