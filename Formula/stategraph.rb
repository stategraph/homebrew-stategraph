class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.35"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.35/stategraph-3.2.35-macos-arm64.tar.gz"
  sha256 "0953de609970b582e4b4b9e9bb24f32e08c34b8aa378f67091b251f05e5f8e80"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
