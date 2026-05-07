class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.0.1"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.0.1/stategraph-macos-arm64.tar.gz"
    sha256 "21711069c9629bf2c7bf2b2e907415704fff79ffe08b963e79222e74720a50b3"
  else
    url "https://github.com/stategraph/releases/releases/download/2.0.1/stategraph-macos-amd64.tar.gz"
    sha256 "b21aa018b36669a91ece76829d69117f4da17f3e31f9bfe3bdc73b549ed090a9"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
