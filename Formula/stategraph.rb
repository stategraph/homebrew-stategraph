class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.26"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.26/stategraph-3.2.26-macos-arm64.tar.gz"
  sha256 "3d99bc1a33a1c5f93c735c0b5320824919dc73c0865d41c8820d05d241c33756"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
