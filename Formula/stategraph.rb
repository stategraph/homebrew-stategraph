class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.28"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.28/stategraph-macos-arm64.tar.gz"
    sha256 "076d19dab6f08a2c680b0001388e3ff104da6af3c69b1cfcd625ab1886a1a050"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.28/stategraph-macos-amd64.tar.gz"
    sha256 "cd6e00995bc5218134b5512ce5fd48cb2bc6dfce7dab17c3a273f7d710ff73ee"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
