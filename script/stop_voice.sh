#!/bin/bash

VOICE_DIR="$HOME/.claude/voice"

# Voice file names
VOICE_FILES=(
    "done_what_else.mp3"
    "all_good.mp3"
    "ready_to_go.mp3"
    "thats_it.mp3"
    "were_done.mp3"
)

# Play random file
random_index=$((RANDOM % ${#VOICE_FILES[@]}))
selected_file="${VOICE_FILES[$random_index]}"

afplay "$VOICE_DIR/$selected_file"
