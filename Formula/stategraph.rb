class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.1"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/2.3.1/stategraph-2.3.1-macos-arm64.tar.gz"
    sha256 "9720cd8ae921a19c3e5fd87e2ea8226622ddccfb94e2ccd36580d0eea1a0ff7f"
  else
    url "https://github.com/stategraph/releases/releases/download/2.3.1/stategraph-2.3.1-macos-amd64.tar.gz"
    sha256 "40b23b8d5a1faf5af5b28ca921350f7ea021f9d8a97bacc572ca5bc605e9e812"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
