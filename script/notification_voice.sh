#!/bin/bash

VOICE_DIR="$HOME/.claude/voice"

# Voice file names
VOICE_FILES=(
    "what_do_you_think.mp3"
    "what_is_your_choice.mp3"
)

# Play random file
random_index=$((RANDOM % ${#VOICE_FILES[@]}))
selected_file="${VOICE_FILES[$random_index]}"

afplay "$VOICE_DIR/$selected_file"
