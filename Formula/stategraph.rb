class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.31"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.31/stategraph-3.2.31-macos-arm64.tar.gz"
  sha256 "11f2fe46257a074e1a86119be763b76999680b3efa63325c36a5f9de152dbbba"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
