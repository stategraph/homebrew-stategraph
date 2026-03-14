class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.34"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-arm64.tar.gz"
    sha256 "ac24ee7d9835fa45f3af67b60c6a572306c30d5da2f0cbaeee1d13b549641568"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.34/stategraph-macos-amd64.tar.gz"
    sha256 "e043602735d283629afcf6ae26d1032ab7d3ab938b58e15a98b2c2fd9becacfa"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
