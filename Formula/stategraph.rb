class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.6"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.6/stategraph-3.1.6-macos-arm64.tar.gz"
  sha256 "db29bc8b98341d651843bd336df2a936482c8968ccb356291b092a1c28651aca"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
