class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.34"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.3.34/stategraph-2.3.34-macos-arm64.tar.gz"
  sha256 "a058f141f3f3517f532d8ec4f6e11601ad98984de7c7dcbe513488634a308996"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
