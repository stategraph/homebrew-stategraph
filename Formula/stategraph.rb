class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.3.35"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.3.35/stategraph-2.3.35-macos-arm64.tar.gz"
  sha256 "bc0f7fc9ecdbc8923b8fa0a965d5a47751141034a684086d0719291018113bb9"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
