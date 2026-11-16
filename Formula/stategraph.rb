class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.34"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.34/stategraph-3.2.34-macos-arm64.tar.gz"
  sha256 "4311778f942eb5d9a0ee1af99fcf4d32c83016560fa4d422c4391943844424ab"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
