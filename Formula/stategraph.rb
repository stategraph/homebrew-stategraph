class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.1.0"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.1.0/stategraph-macos-arm64.tar.gz"
    sha256 "a1f74f819251c36f1ef99e31425c7f026137f52a4cd99b3c42743112ea032c3e"
  else
    url "https://github.com/stategraph/releases/releases/download/2.1.0/stategraph-macos-amd64.tar.gz"
    sha256 "dcd43f54d8aacf25e34bc3c2e0c7d739940e8900bd13eba5587f467504548ce7"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
