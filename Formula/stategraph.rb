class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.2"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.2/stategraph-2.3.2-macos-arm64.tar.gz"
    sha256 "00bb82f44dac8e2cec11520f69944bed8811072d96a17e8d297aac7aabd3217c"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.2/stategraph-2.3.2-macos-amd64.tar.gz"
    sha256 "ba4bde476fa3abdd276366fd493646429500119d6394fd36bd38ff1794b072b9"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
