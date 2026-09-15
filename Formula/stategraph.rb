class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.6"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.6/stategraph-2.5.6-macos-arm64.tar.gz"
  sha256 "ec5a3f7bfeb9583e824a7a73b27e2ff982ebbff23adbef14a0cf59de95d10054"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
