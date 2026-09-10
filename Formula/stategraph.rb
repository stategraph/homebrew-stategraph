class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.4"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.4/stategraph-2.5.4-macos-arm64.tar.gz"
  sha256 "d5dee3b34e03b12e51dbba454606a8dbb387c7138b0e609310fd23a5f034283e"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
