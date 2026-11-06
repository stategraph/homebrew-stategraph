class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.27"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.27/stategraph-3.2.27-macos-arm64.tar.gz"
  sha256 "2f87937ddfe520114efdd09a95bbacdb0e9d81d7f3f0e5681d081ee8be687966"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
