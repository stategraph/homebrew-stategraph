class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.9"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.9/stategraph-3.2.9-macos-arm64.tar.gz"
  sha256 "88635e6d4986471994a838b2f4bf4a33989a32d9c7e7f48b7065f0ac434d28db"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
