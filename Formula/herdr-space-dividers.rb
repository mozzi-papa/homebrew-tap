# SPDX-License-Identifier: MIT
# Copyright (c) 2026 KangUnMo
class HerdrSpaceDividers < Formula
  desc "Workspace dividers and grouping for Herdr (unofficial client)"
  homepage "https://github.com/KangUnMo/herdr-space-dividers"
  url "https://github.com/KangUnMo/herdr-space-dividers/releases/download/v0.1.0/herdr-space-dividers-v0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "c17cc1d96d635933242957b78fb2516c5ff27f08a5961712d2b9a4cc5dabb00e"
  license all_of: ["MIT", "Apache-2.0"]

  depends_on :macos
  depends_on arch: :arm64
  on_macos do
    depends_on macos: :sequoia
  end

  def install
    bin.install "bin/herdr-dividers"
    libexec.install "libexec/herdr-client"
    (share/"herdr-space-dividers").install Dir["share/herdr-space-dividers/*"]
  end

  def caveats
    <<~EOS
      An existing default local Herdr server is required.
      Run: herdr-dividers
      The official herdr command and your running server are unchanged.
    EOS
  end

  test do
    assert_match "herdr-dividers #{version}", shell_output("#{bin}/herdr-dividers --version")
  end
end
