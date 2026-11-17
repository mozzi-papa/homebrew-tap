cask "sketchframe" do
  version "0.1.4"
  sha256 "62353fe5a6f8f59dfe7bead05ac72ab79c158095c80958c6459c37c0a3d8b30c"

  url "https://github.com/mozzi-papa/SketchFrame/releases/download/v#{version}/sketchframe-#{version}-arm64.zip"
  name "SketchFrame"
  desc "Draw regions and use shortcuts to arrange windows"
  homepage "https://github.com/mozzi-papa/SketchFrame"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "SketchFrame.app"

  caveats <<~EOS
    실행 후 시스템 설정의 손쉬운 사용에서 SketchFrame을 허용해 주세요.
    현재 배포본은 로컬 인증서로 서명했으며 Apple Developer ID 서명·공증을 포함하지 않습니다.
  EOS
end
