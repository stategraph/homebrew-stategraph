class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.36"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.36/stategraph-3.2.36-macos-arm64.tar.gz"
  sha256 "0dc4515874d37a5c527eb79ae680ffad31d011fe73c65c517776f600218cc912"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
