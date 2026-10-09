class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.7"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.7/stategraph-3.2.7-macos-arm64.tar.gz"
  sha256 "8d2fe0db76e00638a58aafe0a30db5407da92894c1f94f892cf89c439779f2dc"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
