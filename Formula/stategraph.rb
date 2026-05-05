class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.0.0"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.0.0/stategraph-macos-arm64.tar.gz"
    sha256 "5f0db0f3e691f4fa54c5439dd617297a0090b71abb9136ac2da9d075fa88ceed"
  else
    url "https://github.com/stategraph/releases/releases/download/2.0.0/stategraph-macos-amd64.tar.gz"
    sha256 "23ccfbf163ed2924b2378c3ff2bc901b308326de2bf012b1fcad3d9b70c1eab3"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
