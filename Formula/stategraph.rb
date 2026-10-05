class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.3"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.3/stategraph-3.2.3-macos-arm64.tar.gz"
  sha256 "32105e7049e2ca7a3aefd2776902b3707389c3642c3a4821c75431d1441d5138"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
