class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.30"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.30/stategraph-3.2.30-macos-arm64.tar.gz"
  sha256 "d3df6f1b704fcd4dfb47d7df480395e7d85f7c75d37d8a197c0c83c4d09829c5"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
