class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.32"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.32/stategraph-2.3.32-macos-arm64.tar.gz"
    sha256 "65f58e2f259c73154480ec1b0898bbc5ab0e0985bd8fd760c9d5afb22d60a0e2"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.32/stategraph-2.3.32-macos-amd64.tar.gz"
    sha256 "96ce0710db38951ae7ee6485b7eb3d9b88872d0598f1ee120ac87f7994313e7a"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
