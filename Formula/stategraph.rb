class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.16"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.16/stategraph-3.2.16-macos-arm64.tar.gz"
  sha256 "45fde526cc3af0cc1e3e9d00d545528ba8e941b8ff349c8249b554e6d482d139"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
