# Claude Code Hook Sound

🔊 Add sound notifications to Claude Code's hooks feature for Stop and Notification events.

<div align="center">
  <button onclick="showEnglish()" id="en-btn" style="
    background: linear-gradient(45deg, #4CAF50, #45a049);
    border: none;
    color: white;
    padding: 12px 24px;
    font-size: 16px;
    border-radius: 25px;
    cursor: pointer;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    transition: all 0.3s ease;
    font-weight: bold;
    margin: 0 10px;
  " onmouseover="this.style.transform='translateY(-2px)'; this.style.boxShadow='0 6px 20px rgba(0,0,0,0.3)'" onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 4px 15px rgba(0,0,0,0.2)'">
    🇺🇸 English
  </button>
  <button onclick="showKorean()" id="ko-btn" style="
    background: linear-gradient(45deg, #ff6b6b, #ff5252);
    border: none;
    color: white;
    padding: 12px 24px;
    font-size: 16px;
    border-radius: 25px;
    cursor: pointer;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    transition: all 0.3s ease;
    font-weight: bold;
    margin: 0 10px;
    opacity: 0.6;
  " onmouseover="this.style.transform='translateY(-2px)'; this.style.boxShadow='0 6px 20px rgba(0,0,0,0.3)'" onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 4px 15px rgba(0,0,0,0.2)'">
    🇰🇷 한국어
  </button>
</div>

<div id="english-content">

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

## Important Notes

⚠️ **You must restart Claude Code after installation** for the hooks to take effect.

## How it works

The sound notifications integrate with Claude Code's hooks system to provide audio feedback during your coding sessions, making it easier to know when Claude has finished processing without constantly watching the screen.

## Requirements

- macOS
- Claude Code with hooks feature enabled
- Audio output capability

</div>

<div id="korean-content" style="display: none;">

## macOS 전용

이 도구는 macOS 전용으로 설계되었으며 내장된 `afplay` 명령어를 사용하여 오디오를 재생합니다.

## 기능

이 프로젝트는 Claude Code의 hooks 기능에 오디오 피드백을 추가하여 향상시킵니다:

- **Stop Hook**: Claude Code가 처리를 완료할 때 완료 사운드를 재생합니다
- **Notification Hook**: 다양한 Claude Code 알림에 대한 오디오 경고를 제공합니다

## 설치 방법

1. 이 저장소를 클론하거나 다운로드합니다
2. 설치 스크립트를 실행합니다:

```bash
chmod +x install.sh
./install.sh
```

설치 프로그램의 작업:
- `script/` 폴더를 `~/.claude/script/`로 복사
- `voice/` 폴더를 `~/.claude/voice/`로 복사
- `stop_voice.sh`와 `notification_voice.sh`를 실행 가능하게 설정
- 설치 완료 메시지 표시

## 포함된 파일

- **script/stop_voice.sh**: 완료 사운드를 재생하는 실행 스크립트 (여러 파일 중 랜덤 선택)
- **script/notification_voice.sh**: 알림 사운드를 재생하는 실행 스크립트
- **voice/**: 다양한 알림 사운드 파일이 포함된 디렉토리 ([ElevenLabs](https://elevenlabs.io)로 생성)
  - `all_good.mp3`
  - `done_what_else.mp3`
  - `ready_to_go.mp3`
  - `thats_it.mp3`
  - `were_done.mp3`
  - `what_is_your_choice.mp3` (알림용)

**커스터마이징**: `voice/` 폴더의 MP3 파일들을 원하는 오디오 파일로 교체할 수 있습니다. stop hook은 사용 가능한 파일 중 랜덤으로 재생하며, notification hook은 `what_is_your_choice.mp3`를 사용합니다.

## 중요 사항

⚠️ **hooks가 적용되려면 설치 후 Claude Code를 재시작해야 합니다.**

## 작동 원리

사운드 알림은 Claude Code의 hooks 시스템과 통합되어 코딩 세션 중 오디오 피드백을 제공하므로, 화면을 계속 지켜보지 않아도 Claude가 처리를 완료했는지 쉽게 알 수 있습니다.

## 요구 사항

- macOS
- hooks 기능이 활성화된 Claude Code
- 오디오 출력 기능

</div>

<script>
function showEnglish() {
  document.getElementById('english-content').style.display = 'block';
  document.getElementById('korean-content').style.display = 'none';
  document.getElementById('en-btn').style.opacity = '1';
  document.getElementById('ko-btn').style.opacity = '0.6';
}

function showKorean() {
  document.getElementById('english-content').style.display = 'none';
  document.getElementById('korean-content').style.display = 'block';
  document.getElementById('en-btn').style.opacity = '0.6';
  document.getElementById('ko-btn').style.opacity = '1';
}
</script>

<style>
#english-content, #korean-content {
  animation: fadeIn 0.5s ease-in;
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}
</style>