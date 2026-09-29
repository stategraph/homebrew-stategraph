class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.2"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.2/stategraph-3.1.2-macos-arm64.tar.gz"
  sha256 "fb5fdd1538c4693b65691d3f7ffb696d258f0903ab328e815e06ce2e66272250"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
