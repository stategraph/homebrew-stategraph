class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.1.7"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.1.7/stategraph-3.1.7-macos-arm64.tar.gz"
  sha256 "ccf0bd0575a0ebb31d1a1fe82050ed8d41f8b611a30d50a1acce7eaf042955b1"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
