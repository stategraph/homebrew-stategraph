class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.0.3"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.0.3/stategraph-3.0.3-macos-arm64.tar.gz"
  sha256 "f22e55c2866ab75854451b293fff3727ead505d96c4d20d885df2122b1ef1697"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
