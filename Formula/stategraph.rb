class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.26"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.26/stategraph-macos-arm64.tar.gz"
    sha256 "dfbbd407cb586b82f1959af954952ffae44ceee4cd49de46f30da14a47150289"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.26/stategraph-macos-amd64.tar.gz"
    sha256 "5aa4ee066880052a0b819bd7e1393264fd8985e1678fe5f38c81d2c1ec07258c"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
