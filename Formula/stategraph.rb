class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.23"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.23/stategraph-3.2.23-macos-arm64.tar.gz"
  sha256 "613b625f510d810027ae8078d6fe171d03d1a86d53b431b265b0355865bda18f"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
