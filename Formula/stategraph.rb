class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.40"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.40/stategraph-3.2.40-macos-arm64.tar.gz"
  sha256 "a9f6d64ff09f8da7530e3bb08f896dd4066ca73d526ca80c16b54dfd7858009c"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
