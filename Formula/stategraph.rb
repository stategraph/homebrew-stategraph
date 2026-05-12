class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.0.2"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.0.2/stategraph-macos-arm64.tar.gz"
    sha256 "331c7f5f49a42608ed7b1515f87ed856910d96997c1d7902f187d33c05a40ecf"
  else
    url "https://github.com/stategraph/releases/releases/download/2.0.2/stategraph-macos-amd64.tar.gz"
    sha256 "e048a948fb946a2911ffa6c7ac305b954d08b06d771877921b3be89b01e3b6a0"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
