class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.19"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.19/stategraph-3.2.19-macos-arm64.tar.gz"
  sha256 "808d6ff1ee27c2d9427df64b6b83e77e04db4fabbd3c8e610bb37a7d8eb58334"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
