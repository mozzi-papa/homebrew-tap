# mozzi-papa Homebrew Tap

SketchFrame과 Herdr Space Dividers의 Homebrew 패키지를 제공합니다. Homebrew가 설치되어 있어야 합니다.

## SketchFrame 설치

Apple Silicon, macOS 13 이상을 지원합니다.

```sh
brew install --cask mozzi-papa/tap/sketchframe
```

다운로드·SHA-256 검증·응용 프로그램 폴더 설치를 Homebrew가 처리합니다. 설치 후 응용 프로그램 폴더에서 SketchFrame을 실행하고 **시스템 설정 → 개인정보 보호 및 보안 → 손쉬운 사용**에서 허용해 주세요. Rectangle과 기본 단축키가 겹치므로 한쪽을 종료하거나 단축키를 변경해 주세요.

앱 안의 **업데이트 확인…**으로 업데이트할 수 있습니다. Homebrew로 업데이트할 때는 다음 명령을 사용합니다. 앱 자체 업데이트 기능이 있는 패키지이므로 `--greedy`를 사용합니다.

```sh
brew update
brew upgrade --cask --greedy mozzi-papa/tap/sketchframe
```

```sh
brew uninstall --cask mozzi-papa/tap/sketchframe
```

현재 배포본은 로컬 인증서로 서명했으며 Apple Developer ID 서명·공증을 포함하지 않습니다. 다른 Mac에서는 실행이 차단될 수 있습니다. 제거 시 단축키 설정은 자동 삭제하지 않습니다.

[SketchFrame 기능·사용법](https://github.com/mozzi-papa/SketchFrame#readme) · [릴리스·수동 다운로드](https://github.com/mozzi-papa/SketchFrame/releases/latest)

## Herdr Space Dividers

[Herdr Space Dividers](https://github.com/mozzi-papa/herdr-space-dividers)의 비공식 Homebrew 패키지입니다.

### 설치와 실행

Apple Silicon, macOS 15 이상과 Homebrew가 필요합니다. 공식 Herdr 0.9.5의 기본 로컬 서버를 먼저 준비해 주세요.

처음 설치할 때는 이 배포 저장소인 `tap`을 등록해야 합니다. 아래 한 줄로 저장소 등록과 설치를 이어서 진행할 수 있습니다.

```sh
brew tap mozzi-papa/tap && brew install mozzi-papa/tap/herdr-space-dividers
herdr-dividers
```

Herdr 안에 있다면 기본 설정의 `Ctrl+B`, `q`로 화면을 분리한 뒤 실행해 주세요. 빌드된 실행 파일을 설치하므로 Rust·Zig·Python은 필요하지 않습니다. 기존 `herdr` 명령과 작업 서버는 교체하지 않습니다.

### 업데이트와 제거

아래 업데이트 명령은 이미 설치한 패키지에 사용합니다. 처음 설치하는 경우에는 위의 설치 명령을 사용해 주세요.

```sh
brew upgrade mozzi-papa/tap/herdr-space-dividers
herdr-dividers --version
```

```sh
brew uninstall herdr-space-dividers
```

제거해도 기존 구분 설정 JSON을 자동 삭제하지 않습니다. 패키지 버전과 기반 Herdr 버전은 구분합니다. 미래 Herdr 버전의 호환성을 자동 보장하지 않습니다.

### 소스와 검증 범위

- [기능과 사용법](https://github.com/mozzi-papa/herdr-space-dividers/blob/main/docs/USAGE.md)
- [검증 환경과 결과](https://github.com/mozzi-papa/herdr-space-dividers/blob/main/docs/VERIFICATION.md)
- [안전장치와 한계](https://github.com/mozzi-papa/herdr-space-dividers/blob/main/docs/SAFETY.md)
- [릴리스와 체크섬](https://github.com/mozzi-papa/herdr-space-dividers/releases)

formula는 버전이 고정된 GitHub Release 파일과 SHA-256을 사용합니다. 원본 소스와 빌드 도구는 공개 저장소에서 확인할 수 있습니다. Herdr 또는 Homebrew의 공식 인증·검토를 받은 패키지가 아닙니다. 실행 파일의 ad-hoc 서명은 Apple Developer ID 서명·Apple 공증이 아닙니다.

Herdr Space Dividers의 formula와 이 tap의 문서는 MIT입니다. 설치되는 Herdr 기반 클라이언트는 Apache-2.0과 의존성 라이선스를 따르며, 원본 고지를 패키지에 포함합니다.
