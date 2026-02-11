class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.19"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.19/stategraph-macos-arm64.tar.gz"
    sha256 "b16d3f8e6c635784bdd0e2065033b74b06c78ec2932fb920f65db4c7404b676d"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.19/stategraph-macos-amd64.tar.gz"
    sha256 "0d530a9b1be4854f2c5f3b1b6be247d136f42a73b08ce3dca6eba6b788a4e39a"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
