class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.0"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.0/stategraph-3.2.0-macos-arm64.tar.gz"
  sha256 "b801aaabb9852ab356a7cdc3eea95b1653fc9eccf45be866946cf650bd8c6d21"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
