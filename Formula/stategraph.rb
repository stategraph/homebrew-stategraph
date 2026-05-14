class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.1.1"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.1.1/stategraph-macos-arm64.tar.gz"
    sha256 "b4bdefd087baba2617ce286430de7f79c89abb88f4e33bb4f3168a3dce3482db"
  else
    url "https://github.com/stategraph/releases/releases/download/2.1.1/stategraph-macos-amd64.tar.gz"
    sha256 "44814973f49ecb0bbf7f95f30e7caba2d1bd325f2c1577f5a81c9a7c789893bc"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
