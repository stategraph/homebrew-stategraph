class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.27-rc.2"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.27-rc.2/stategraph-2.3.27-rc.2-macos-arm64.tar.gz"
    sha256 "de85e854e15dec2be9c72a826d740b386cdcfec477a2b4dfdaa4abb9bf379aa4"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.27-rc.2/stategraph-2.3.27-rc.2-macos-amd64.tar.gz"
    sha256 "5cd8091d8ff28c5c872f0d06dccbf13c6b393955048cbb2f78b9f9387d81bb57"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
