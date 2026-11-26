class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.45"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.45/stategraph-3.2.45-macos-arm64.tar.gz"
  sha256 "433992a73fc5a39fa8c624850d375a86b25c72b5a9c5359242c5f083c0de87b4"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
