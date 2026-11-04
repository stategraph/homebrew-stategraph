class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.24"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.24/stategraph-3.2.24-macos-arm64.tar.gz"
  sha256 "72a5a960569a0d3f62d9876d0e8672d60d3f98a0fe037e47c710ecf04348a037"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
