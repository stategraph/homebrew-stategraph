class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.22"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.22/stategraph-2.3.22-macos-arm64.tar.gz"
    sha256 "8bc165044910b217740b0949016dad606e0c921f4bca19bfed668237deda1afa"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.22/stategraph-2.3.22-macos-amd64.tar.gz"
    sha256 "492ea8c6f8c4f4a6790431ad031f8adbaa47981be153d8b061878122bd91525a"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
