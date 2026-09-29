class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.3"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.3/stategraph-3.1.3-macos-arm64.tar.gz"
  sha256 "918ed2fde24b4cdae7a4b1b89a334e3b474cd27a9bfd360f082b543d219bc9c2"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
