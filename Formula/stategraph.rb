class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.1"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.1/stategraph-3.2.1-macos-arm64.tar.gz"
  sha256 "597e27b14297ed5abf9d11392d5e7745f636a8447a446e9b91d83c1d6fb2c0ce"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
