# Claude Code Hook Sound

🔊 Add sound notifications to Claude Code's hooks feature for Stop and Notification events.

> 🇺🇸 **English** | [🇰🇷 **한국어**](README.ko.md)

## macOS Only

This tool is designed specifically for macOS and uses the built-in `afplay` command for audio playback.

## What it does

This project enhances Claude Code's hooks functionality by adding audio feedback:

- **Stop Hook**: Plays a completion sound when Claude Code stops processing
- **Notification Hook**: Provides audio alerts for various Claude Code notifications

## Installation

1. Clone or download this repository
2. Run the installation script:

```bash
chmod +x install.sh
./install.sh
```

The installer will:
- Copy the `script/` folder to `~/.claude/script/`
- Copy the `voice/` folder to `~/.claude/voice/`
- Make `stop_voice.sh` and `notification_voice.sh` executable
- Display installation confirmation

## Files Included

- **script/stop_voice.sh**: Executable script that plays completion sounds (randomly selects from multiple files)
- **script/notification_voice.sh**: Executable script that plays notification sound
- **voice/**: Directory containing various notification sound files (generated with [ElevenLabs](https://elevenlabs.io))
  - `all_good.mp3`
  - `done_what_else.mp3`
  - `ready_to_go.mp3`
  - `thats_it.mp3`
  - `were_done.mp3`
  - `what_is_your_choice.mp3` (used for notifications)

**Customization**: You can replace any MP3 files in the `voice/` folder with your own audio files. The stop hook will randomly play from the available files, while the notification hook uses `what_is_your_choice.mp3`.

## Claude Code Configuration

After installation, you need to configure Claude Code to use the hooks. Add the following to your `~/.claude/settings.json`:

```json
{
  "hooks": {
    "Notification": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "$HOME/.claude/script/notification_voice.sh"
          }
        ]
      }
    ],
    "Stop": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "$HOME/.claude/script/stop_voice.sh"
          }
        ]
      }
    ]
  }
}
```

If your `settings.json` already exists, just add the `hooks` section to the existing JSON structure.

## Important Notes

⚠️ **You must restart Claude Code after installation** for the hooks to take effect.

## How it works

The sound notifications integrate with Claude Code's hooks system to provide audio feedback during your coding sessions, making it easier to know when Claude has finished processing without constantly watching the screen.

## Requirements

- macOS
- Claude Code with hooks feature enabled
- Audio output capability