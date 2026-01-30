class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.16"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.16/stategraph-macos-arm64.tar.gz"
    sha256 "f8e7e7c6a2b44c8ef8e42025b7b58291c304a2b9e8c0191e07100557e312cdfc"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.16/stategraph-macos-amd64.tar.gz"
    sha256 "1490d3253b280840298c67a1faaf94c0f89c35167772238b1a61ba7c0a6ce76e"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
