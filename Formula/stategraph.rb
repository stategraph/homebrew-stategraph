class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.2.6"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.2.6/stategraph-2.2.6-macos-arm64.tar.gz"
    sha256 "f15d9493b6e9cb2a18afc26627299a77223e581f5367f2c1ce976accf49e2fa0"
  else
    url "https://github.com/stategraph/releases/releases/download/2.2.6/stategraph-2.2.6-macos-amd64.tar.gz"
    sha256 "006d04b6e37df82da0b0b1bd04de5cb0ec131a3de5a3b5cc8c4f4ac97c4ff604"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
