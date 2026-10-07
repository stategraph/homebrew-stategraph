class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "3.2.4"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/3.2.4/stategraph-3.2.4-macos-arm64.tar.gz"
  sha256 "88cc2594f6df6c66a83fb000314d762fe0a0dba43b76f000bd4ee48d829a2e88"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
