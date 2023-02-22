#!/usr/bin/env bash 
UUID=$1
UUID_DOWNLOAD_PATH="./whisper-downloads/$UUID"
YOUTUBE_PATH="./youtube-downloads/$UUID.mp3"
whisper "$YOUTUBE_PATH" --language en --model base --fp16 False --task transcribe --verbose True --output_dir "$UUID_DOWNLOAD_PATH"
echo "$UUID_DOWNLOAD_PATH"