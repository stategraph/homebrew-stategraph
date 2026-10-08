class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.5"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.5/stategraph-3.2.5-macos-arm64.tar.gz"
  sha256 "6c95fbfe00083f03b63883382c33276371bafa01a67d84ec849dc836361d7c16"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
