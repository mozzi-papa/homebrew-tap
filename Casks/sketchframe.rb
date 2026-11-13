cask "sketchframe" do
  version "0.1.2"
  sha256 "0952bdcb6448a9d4349e67f7d5e1487e3b6458e139d2bdbc0f23b0a881acb161"

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
