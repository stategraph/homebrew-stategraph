class Stategraph < Formula
  desc "Terraform state management and visualization CLI"
  homepage "https://stategraph.com"
  version "2.5.7"
  license "STATEGRAPH-LICENSE"
  depends_on arch: :arm64

  url "https://github.com/stategraph/releases/releases/download/2.5.7/stategraph-2.5.7-macos-arm64.tar.gz"
  sha256 "1ef51f633f3a8422bc7886ec345c237a29d84ec92b7c4ba7d409823ea0666ebe"

  def install
    bin.install "stategraph"
  end

  test do
    system "#{bin}/stategraph", "version", "client"
  end
end
