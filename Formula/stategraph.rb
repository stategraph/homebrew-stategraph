class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.22"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.22/stategraph-3.2.22-macos-arm64.tar.gz"
  sha256 "073f8d2771c8d7f1dccf1bc75d689ce086f88867fb5d250862b463361145f0bc"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
