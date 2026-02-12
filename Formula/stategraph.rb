class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "0.1.23"
  license "STATEGRAPH-LICENSE"

  if Hardware::CPU.arm?
    url "https://github.com/stategraph/releases/releases/download/0.1.23/stategraph-macos-arm64.tar.gz"
    sha256 "3770475eb7f8740e2c28f64d92edb2f4fadcac87ca0dc4ad6d3ff026aa6e183b"
  else
    url "https://github.com/stategraph/releases/releases/download/0.1.23/stategraph-macos-amd64.tar.gz"
    sha256 "8e0a6be9e7ab26a17e2c370491fabc84f540575cee36aafb5ecab8aa756cd6e4"
  end

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
