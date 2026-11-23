class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.41"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.41/stategraph-3.2.41-macos-arm64.tar.gz"
  sha256 "01fee53c02e3bf8bc683ebcd41686440f1683f74d49e2d26a97ed1e40a894907"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
