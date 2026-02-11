class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.21"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.21/stategraph-macos-arm64.tar.gz"
    sha256 "5ad49204abd6c0f7c72c73973efef2c81b743906862235bf4a60844fdf834210"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.21/stategraph-macos-amd64.tar.gz"
    sha256 "2bd2d6f020fcb1804deacadd8b2d1d1cb490d61577f54f424c6c0c43b51bf6c0"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
