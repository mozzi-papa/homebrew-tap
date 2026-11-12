# SPDX-License-Identifier: MIT
# Copyright (c) 2026 mozzi-papa
class HerdrSpaceDividers < Formula
  desc "Workspace dividers and grouping for Herdr (unofficial client)"
  homepage "https://github.com/mozzi-papa/herdr-space-dividers"
  url "https://github.com/mozzi-papa/herdr-space-dividers/releases/download/v0.1.2/herdr-space-dividers-v0.1.2-macos-arm64.tar.gz"
  version "0.1.2"
  sha256 "800896254ee2364726e6a47eb1fb8b14005a05cf9df036079397ceb49b597479"
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
