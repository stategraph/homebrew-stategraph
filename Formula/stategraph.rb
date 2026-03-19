class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.37"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.37/stategraph-macos-arm64.tar.gz"
    sha256 "39438f64d2bf209ab61d175997272a8ae082573921f769abd8fee40f610f917b"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.37/stategraph-macos-amd64.tar.gz"
    sha256 "1165f692516c5ef9f9c634739ad05633e9742ce56bd9016cbd9ebacd98741fcb"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
