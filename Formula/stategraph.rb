class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.37"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.3.37/stategraph-2.3.37-macos-arm64.tar.gz"
  sha256 "941fc6907e89ad2dc1258504a541ca82b45575c1955da23d3b8905b6f1cd3f1d"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
