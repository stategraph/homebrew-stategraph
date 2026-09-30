class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.5"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.5/stategraph-3.1.5-macos-arm64.tar.gz"
  sha256 "1f0987f8baf81b274800bca174cea4b1979bae2bee753c8a14a255269d40985b"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
