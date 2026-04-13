class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "1.2.1"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/1.2.1/stategraph-macos-arm64.tar.gz"
    sha256 "e49df1534f61860034e857bf4a71c1ce265b8d64d28590a2973dfaa4642c01cd"
  else
    url "https://github.com/stategraph/releases/releases/download/1.2.1/stategraph-macos-amd64.tar.gz"
    sha256 "1470f6a961cd8e2fb86e2b960ece2aa17b10e008c8e0ac60ce944896cd7fff03"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
