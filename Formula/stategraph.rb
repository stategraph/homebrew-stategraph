class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.15"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.15/stategraph-2.3.15-macos-arm64.tar.gz"
    sha256 "0b7e2d45cf8af9f899c517020258e05abde929eb4f5066f523fc771f49d4bf3e"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.15/stategraph-2.3.15-macos-amd64.tar.gz"
    sha256 "d8924782ff19f0d314ba9a4b58a9e2302cb62e86385112de0138aa0b28a91e43"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
