class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.14"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.14/stategraph-macos-arm64.tar.gz"
    sha256 "bc7a6c60f05614e4c6ebf50b7fb57cef6efb36d96c786af231a6d0f549147c05"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.14/stategraph-macos-amd64.tar.gz"
    sha256 "a111b4f17be5eff453313941821d52701b193f5cb15b61dd4258d62bf9e0e5c1"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
