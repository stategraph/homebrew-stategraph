class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.15"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.15/stategraph-3.2.15-macos-arm64.tar.gz"
  sha256 "897413558d388e0e6a40de694796b52b3caea6279c5ad2c7ba6bc1e6f75b9f07"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
