# Claude Code Hook Sound

🔊 Claude Code의 hooks 기능에 Stop 및 Notification 이벤트를 위한 사운드 알림을 추가합니다.

> [🇺🇸 **English**](README.md) | 🇰🇷 **한국어**

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

## Claude Code 설정

설치 후 Claude Code가 hooks를 사용하도록 설정해야 합니다. `~/.claude/settings.json` 파일에 다음을 추가하세요:

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

`settings.json` 파일이 이미 존재한다면, 기존 JSON 구조에 `hooks` 섹션만 추가하면 됩니다.

## 중요 사항

⚠️ **hooks가 적용되려면 설치 후 Claude Code를 재시작해야 합니다.**

## 작동 원리

사운드 알림은 Claude Code의 hooks 시스템과 통합되어 코딩 세션 중 오디오 피드백을 제공하므로, 화면을 계속 지켜보지 않아도 Claude가 처리를 완료했는지 쉽게 알 수 있습니다.

## 요구 사항

- macOS
- hooks 기능이 활성화된 Claude Code
- 오디오 출력 기능