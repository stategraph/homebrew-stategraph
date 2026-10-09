class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.6"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.6/stategraph-3.2.6-macos-arm64.tar.gz"
  sha256 "3dc5d78d159995ccbc8ed256c8d3055953c86622d09d72325c53d9f212b9a38a"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
