class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.1.4"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.1.4/stategraph-macos-arm64.tar.gz"
    sha256 "eb9147845d02f74a4f5af5d1a51c28029b40f20e3ff3e20aff3ae1d4f1aa27cb"
  else
    url "https://github.com/stategraph/releases/releases/download/2.1.4/stategraph-macos-amd64.tar.gz"
    sha256 "100176af58c7f2253553e1c3b9e81e68f5173551928c32672c059b8aa4719278"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
