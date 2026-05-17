class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.1.2"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.1.2/stategraph-macos-arm64.tar.gz"
    sha256 "f5ef3f95a3964fbd16078c64f64b06cb0f5ec7e3e07098bc7224229af2255017"
  else
    url "https://github.com/stategraph/releases/releases/download/2.1.2/stategraph-macos-amd64.tar.gz"
    sha256 "47c9cc49c64e2de395d10be9c38a77e90b954f0f37b39cad6e3160732d60bbd6"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
