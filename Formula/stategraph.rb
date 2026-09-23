class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.0.1"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.0.1/stategraph-3.0.1-macos-arm64.tar.gz"
  sha256 "b3a43c1e9ae0182ddbfb7311a008a8bf8454cd6f40948cd549a85d0362603b58"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
