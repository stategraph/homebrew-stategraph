class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.20"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.20/stategraph-3.2.20-macos-arm64.tar.gz"
  sha256 "444aa663c8f7a62d95b03b165fd6b7d80071db7e039e84e187bc23f4e8ab2831"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
