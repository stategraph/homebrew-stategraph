class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.18"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.18/stategraph-2.3.18-macos-arm64.tar.gz"
    sha256 "11350c20c3367180070888e44bbb586f4ead4ef19e38f57c1ff25f885114eea5"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.18/stategraph-2.3.18-macos-amd64.tar.gz"
    sha256 "65007b2206b453d86cfbb3226dc74dc8af57bf98422a1a05584e1dbaf18d6e8f"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
