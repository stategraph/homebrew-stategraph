class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.24"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.24/stategraph-macos-arm64.tar.gz"
    sha256 "57f0b2c35c6b807d91142b68ef41fc2f4d3d472e61e0919554cc0c9d65620e71"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.24/stategraph-macos-amd64.tar.gz"
    sha256 "ae035c5b38e1054fc99f948279a8f3555dab35c4af3c28d1f7f5680026ad688f"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
