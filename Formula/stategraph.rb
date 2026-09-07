class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.2"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.2/stategraph-2.5.2-macos-arm64.tar.gz"
  sha256 "af2b9697bbb26137c21562cf4eb61ac657d1a94f9bc99c6493300a07099cc235"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
