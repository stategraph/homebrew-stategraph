class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.4.1"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.4.1/stategraph-2.4.1-macos-arm64.tar.gz"
  sha256 "389269b913cd8ca690cde1bdfcf1f871940249cac707e3b30517b72a50340447"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
