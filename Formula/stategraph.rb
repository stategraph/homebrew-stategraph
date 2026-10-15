class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.10"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.10/stategraph-3.2.10-macos-arm64.tar.gz"
  sha256 "b4235ec126ec1a4023185ceb0c8f2161f361c435d237fd8045edcf04cab224a0"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
