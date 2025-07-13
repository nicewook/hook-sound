#!/bin/bash

# Claude Code Hook Sound Installer
# macOS only

set -e

echo "Installing Claude Code Hook Sound notifications..."

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "Error: This script only works on macOS"
    exit 1
fi

# Create ~/.claude directory if it doesn't exist
mkdir -p ~/.claude

# Copy script and voice folders to ~/.claude
echo "Copying script folder to ~/.claude/..."
cp -r script ~/.claude/

echo "Copying voice folder to ~/.claude/..."
cp -r voice ~/.claude/

# Make script files executable
echo "Making script files executable..."
chmod +x ~/.claude/script/stop_voice.sh
chmod +x ~/.claude/script/notification_voice.sh

echo ""
echo "✅ Installation complete!"
echo ""
echo "📁 Files installed to:"
echo "   ~/.claude/script/stop_voice.sh"
echo "   ~/.claude/script/notification_voice.sh"
echo "   ~/.claude/voice/"
echo ""
echo "⚠️  Important: Please restart Claude Code for the hooks to take effect."
echo ""
echo "🔊 Sound notifications are now ready for Claude Code hooks!"