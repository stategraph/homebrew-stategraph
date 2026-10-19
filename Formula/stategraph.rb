class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.13"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.13/stategraph-3.2.13-macos-arm64.tar.gz"
  sha256 "7216e64a76e4ae4aa8f12560673b1a7b961e5b77009201fed40520e56fe0ac45"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
