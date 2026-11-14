class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.32"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.32/stategraph-3.2.32-macos-arm64.tar.gz"
  sha256 "72e0f09458216752e2e4c76f38012d03e62077a9b9a2df0d8a34aabc23f0f1d2"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
