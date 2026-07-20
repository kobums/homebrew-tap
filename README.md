# kobums/homebrew-tap

kobums 앱들의 Homebrew tap.

## Spot

macOS 런처 + 키보드 화면 접근 앱. ([kobums/spotlight](https://github.com/kobums/spotlight))

```bash
brew tap kobums/tap
brew trust kobums/tap        # 서드파티 tap 신뢰 (최신 Homebrew 필수)
brew install --cask spot
```

업데이트 / 삭제:

```bash
brew upgrade --cask spot
brew uninstall --cask spot        # 설정까지 지우려면: brew uninstall --zap --cask spot
```

요구 사항: macOS 13 (Ventura) 이상. Developer ID 서명·공증된 빌드.
