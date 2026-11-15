class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.33"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.33/stategraph-3.2.33-macos-arm64.tar.gz"
  sha256 "2c080286d3fbb023ecf7549df23185d2a8c46e9eb9f6fb84839ae75b4a9d84d8"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
