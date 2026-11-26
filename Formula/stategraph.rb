class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.44"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.44/stategraph-3.2.44-macos-arm64.tar.gz"
  sha256 "7f464c4b0c24ab535901f97b368293f69834c1ab482660cea48e0acabad2498b"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
