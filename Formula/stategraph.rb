class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.31"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.31/stategraph-macos-arm64.tar.gz"
    sha256 "048834b478533108232d0a567166adee4cd2d845e8a89ee969e2e207e6ff4022"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.31/stategraph-macos-amd64.tar.gz"
    sha256 "38130684f1b4d5ccca1b190cc5851f5f3814c8bdf445209842054766b39a0cc9"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
