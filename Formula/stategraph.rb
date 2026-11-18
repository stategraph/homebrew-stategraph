class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.37"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.37/stategraph-3.2.37-macos-arm64.tar.gz"
  sha256 "b6f5833e4a203b4bf46b029d9c5d6cdd365f9484be4f47cefe35d41e748478d2"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
