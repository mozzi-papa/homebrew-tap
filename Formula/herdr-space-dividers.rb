# SPDX-License-Identifier: MIT
# Copyright (c) 2026 mozzi-papa
class HerdrSpaceDividers < Formula
  desc "Workspace dividers and grouping for Herdr (unofficial client)"
  homepage "https://github.com/mozzi-papa/herdr-space-dividers"
  url "https://github.com/mozzi-papa/herdr-space-dividers/releases/download/v0.1.3/herdr-space-dividers-v0.1.3-macos-arm64.tar.gz"
  version "0.1.3"
  sha256 "c24ddc4be137a6ae91657adb871413986c386e2c0a933ac3bad9a84991be96c3"
  license all_of: ["MIT", "Apache-2.0"]

  depends_on :macos
  depends_on arch: :arm64
  on_macos do
    depends_on macos: :sequoia
  end

  def install
    bin.install "bin/herdr-div"
    bin.install_symlink "herdr-div" => "herdr-dividers"
    libexec.install "libexec/herdr-client"
    (share/"herdr-space-dividers").install Dir["share/herdr-space-dividers/*"]
  end

  def caveats
    <<~EOS
      An existing default local Herdr server is required.
      Run: herdr-div  (herdr-dividers also works)
      The official herdr command and your running server are unchanged.
    EOS
  end

  test do
    assert_match "herdr-div #{version}", shell_output("#{bin}/herdr-div --version")
    assert_match "herdr-div #{version}", shell_output("#{bin}/herdr-dividers --version")
  end
end
