class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.0"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.0/stategraph-2.5.0-macos-arm64.tar.gz"
  sha256 "6e0259adaaf6be53eebf561bdde985ad3f26e07dc3f61d3fc4de106c0654a0e8"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
