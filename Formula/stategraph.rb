class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.25"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.25/stategraph-3.2.25-macos-arm64.tar.gz"
  sha256 "69448e1d1f81b38c1a133ec1a717f64024a0fbeaa541faea17eb912cbfb86ba3"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
