class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.0.0"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.0.0/stategraph-macos-arm64.tar.gz"
    sha256 "0d874d7f1c87dac4b947f255b6cc03e1f7336efce61efb1234ba6cedd4f9b1d8"
  else
    url "https://github.com/stategraph/releases/releases/download/1.0.0/stategraph-macos-amd64.tar.gz"
    sha256 "a3f4e6b7398e88d3500dad3692e0eef4346ca96551b9889bf4d0a26ebb197abb"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
