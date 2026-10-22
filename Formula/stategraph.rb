class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.17"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.17/stategraph-3.2.17-macos-arm64.tar.gz"
  sha256 "383f66c25d00604b8112eb4d0142455372c8e35982aab9a6574c07875d2dfe77"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
