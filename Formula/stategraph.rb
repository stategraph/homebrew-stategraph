class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.35"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.35/stategraph-macos-arm64.tar.gz"
    sha256 "5f67163ee53d63dd85c677579821f0c12a0e3141d4c99253351893459dac6af5"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.35/stategraph-macos-amd64.tar.gz"
    sha256 "05c0bca79791940f60dfb5472214f3266ae9d2bc9ad47230daa66e1170018d26"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
