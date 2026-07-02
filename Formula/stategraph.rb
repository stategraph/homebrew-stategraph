class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.16"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.16/stategraph-2.3.16-macos-arm64.tar.gz"
    sha256 "0f7fcf54fe7254382e3640f610f33aed12af29fda4882147d14e78ad82339ae1"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.16/stategraph-2.3.16-macos-amd64.tar.gz"
    sha256 "4ec46bfa863a68225dffe3f8763f45a378fda15df80bf47cc1a4e811700b0615"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
