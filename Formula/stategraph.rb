class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.3"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.3/stategraph-2.5.3-macos-arm64.tar.gz"
  sha256 "f1025acc3fbea0a9bc722805a4d4aeaed80861f28a4964f13e3a35339a28cfca"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
