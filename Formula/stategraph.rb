class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.38"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.3.38/stategraph-2.3.38-macos-arm64.tar.gz"
  sha256 "5e4735f44df73aa2818105a8f364d7fd58d754ba1baac20ff81a761f022accbf"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
