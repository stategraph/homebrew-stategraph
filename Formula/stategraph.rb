class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.1"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.1/stategraph-3.1.1-macos-arm64.tar.gz"
  sha256 "a0a475ce6ee5a7e8e034c9c25834b989400a4bff427f2d2f4d69b344037f521f"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
