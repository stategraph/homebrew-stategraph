class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.10"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.10/stategraph-2.3.10-macos-arm64.tar.gz"
    sha256 "6c585fe00d34f1b35dacb7ef87da36f14274943b354e9a701c3f2149b2c7b268"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.10/stategraph-2.3.10-macos-amd64.tar.gz"
    sha256 "5816c42ff34f860ffd8b7a7d1e3f6ffd004f442fad4aad3619145fb8d2ab0484"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
