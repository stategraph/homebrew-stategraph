class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.0.2"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.0.2/stategraph-3.0.2-macos-arm64.tar.gz"
  sha256 "149c529c1b3836bfafd70970f46cd483b2a87a742fa71ed6209f8003c34c7c43"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
