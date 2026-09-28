class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.0.4"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.0.4/stategraph-3.0.4-macos-arm64.tar.gz"
  sha256 "b85e61d5b715ab3b26408f723263449c67d68d00f84e29707df23977b502c910"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
