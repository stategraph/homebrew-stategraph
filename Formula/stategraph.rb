class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.2.3"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.2.3/stategraph-macos-arm64.tar.gz"
    sha256 "87e7226d7ac8e87dca95df3b95a29b5a592772a17a1d57781e1300dad7e1f246"
  else
    url "https://github.com/stategraph/releases/releases/download/2.2.3/stategraph-macos-amd64.tar.gz"
    sha256 "70a6f3fe025f7ba8983b861e758050013c507559956c88bc290dc56f2867545c"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
